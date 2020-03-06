import 'package:flutter/material.dart';
import 'package:mobx_provider/mobx_provider.dart';

import 'book_search_store.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MobxStatefulProvider<BookSearch>(
      builder: (context, store) {
        return SafeArea(
            child: Column(
          children: <Widget>[
            TextField(
              controller: textController,
              onEditingComplete: store.search,
              onChanged: (_) => store.setTerm(textController.text),
            ),
            MobxWidgetProvider(builder: (context, store) {
              if (store.isLoading()) {
                return CircularProgressIndicator();
              } else {
                if (store.isError()) {
                  return Text('Hubo un error al cargar tu búsqueda');
                } else {
                  return ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            leading:
                                Image.network(store.results[index].bookImage),
                            title: Text(store.results[index].bookTitle),
                            trailing: Text(
                                '${store.results[index].bookAuthor} , ${store.results[index].bookPublicationYear.toString()}'));
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          Divider(),
                      itemCount: store.lenght);
                }
              }
            }),
          ],
        ));
      },
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
