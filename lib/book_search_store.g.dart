// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookSearch on _BookSearchBase, Store {
  Computed<int> _$lengthComputed;

  @override
  int get length =>
      (_$lengthComputed ??= Computed<int>(() => super.length)).value;

  final _$termAtom = Atom(name: '_BookSearchBase.term');

  @override
  String get term {
    _$termAtom.context.enforceReadPolicy(_$termAtom);
    _$termAtom.reportObserved();
    return super.term;
  }

  @override
  set term(String value) {
    _$termAtom.context.conditionallyRunInAction(() {
      super.term = value;
      _$termAtom.reportChanged();
    }, _$termAtom, name: '${_$termAtom.name}_set');
  }

  final _$resultsAtom = Atom(name: '_BookSearchBase.results');

  @override
  List<Book> get results {
    _$resultsAtom.context.enforceReadPolicy(_$resultsAtom);
    _$resultsAtom.reportObserved();
    return super.results;
  }

  @override
  set results(List<Book> value) {
    _$resultsAtom.context.conditionallyRunInAction(() {
      super.results = value;
      _$resultsAtom.reportChanged();
    }, _$resultsAtom, name: '${_$resultsAtom.name}_set');
  }

  final _$searchAsyncAction = AsyncAction('search');

  @override
  Future<dynamic> search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  @override
  String toString() {
    final string =
        'term: ${term.toString()},results: ${results.toString()},length: ${length.toString()}';
    return '{$string}';
  }
}
