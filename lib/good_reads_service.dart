import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';
import 'dart:convert';

import 'book.dart';

class GoodReadsService {
  final String _url =
      'https://www.goodreads.com/search.xml?key=TTArz389S9FYdQg3CgqP8A&q=';
  final Xml2Json xml2json = Xml2Json();

  Future<List<Book>> getBooks(String search) async {
    String fullUrL = _url + search;
    try {
      var response = await http.get(fullUrL);
      xml2json.parse(response.body);
      var jsonString = xml2json.toParker();
      var data = jsonDecode(jsonString);
      List<Book> list = _fillList(data);
      return list;
    } catch (e) {
      print(e);
      return null;
    }
  }

  List<Book> _fillList(data) {
    List<Book> books = [];
    var list = data['GoodreadsResponse']['search']['results'];
    for (var book in list) {
      books.add(Book(
          author: book['best_book']['author']['name'],
          title: book['best_book']['title'],
          publicationYear: int.parse(book['original_publication_year']),
          imageUrl: book['best_book']['small_image_url']));
    }
    return books;
  }
}
