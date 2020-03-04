import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';
part 'book_search_store.g.dart';

class BookSearch = _BookSearchBase with _$BookSearch;

abstract class _BookSearchBase extends MobxBase with Store {
  @observable
  String term = '';
  @observable
  @observable
  int totalCount = 0;
  List<dynamic> results = [];

  @action
  Future search() async {
    try {
      changeState(StoreState.loading);
      var result = await _searchBooks(this.term);
      autorun((_) {
        this.totalCount = result.total;
        this.results = result.items;
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
