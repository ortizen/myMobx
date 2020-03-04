// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BookSearch on _BookSearchBase, Store {
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

  final _$totalCountAtom = Atom(name: '_BookSearchBase.totalCount');

  @override
  int get totalCount {
    _$totalCountAtom.context.enforceReadPolicy(_$totalCountAtom);
    _$totalCountAtom.reportObserved();
    return super.totalCount;
  }

  @override
  set totalCount(int value) {
    _$totalCountAtom.context.conditionallyRunInAction(() {
      super.totalCount = value;
      _$totalCountAtom.reportChanged();
    }, _$totalCountAtom, name: '${_$totalCountAtom.name}_set');
  }

  final _$searchAsyncAction = AsyncAction('search');

  @override
  Future<dynamic> search() {
    return _$searchAsyncAction.run(() => super.search());
  }

  @override
  String toString() {
    final string =
        'term: ${term.toString()},totalCount: ${totalCount.toString()}';
    return '{$string}';
  }
}
