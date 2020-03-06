import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

import 'book.dart';
part 'book_search_store.g.dart';

class BookSearch = _BookSearchBase with _$BookSearch;

abstract class _BookSearchBase extends MobxBase with Store {
  @observable
  String term = '';

  @observable
  List<Book> results = [];

  @computed
  int get lenght => results.length;

  @action
  Future search() async {
    try {
      changeState(StoreState.loading);
      results = await _searchBooks(this.term);
      autorun((_) {
        this.results = results;
        changeState(StoreState.sucess);
      });
    } catch (e) {
      autorun((_) => changeState(StoreState.error));
      print(e);
    }
  }

  void setTerm(String value) {
    this.term = value;
  }

  @override
  void dispose() {}

  _searchBooks(String term) {}
}
