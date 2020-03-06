import 'package:flutter/foundation.dart';

class Book {
  final String imageUrl;
  final String title;
  final String author;
  final int publicationYear;
  Book(
      {@required this.imageUrl,
      @required this.title,
      @required this.author,
      @required this.publicationYear});

  String get bookImage {
    return imageUrl;
  }

  String get bookTitle {
    return title;
  }

  String get bookAuthor {
    return author;
  }

  int get bookPublicationYear {
    return publicationYear;
  }
}
