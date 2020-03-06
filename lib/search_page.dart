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
    return MobxStatefulObserver<BookSearch>(
        store: BookSearch(),
        builder: (context, store) {
          if (store.isLoading) {
            return CircularProgressIndicator();
          } else {
            if (store.isError) {
              return Text('Hubo un error al cargar tu búsqueda');
            } else {
              if (store.isInitial) {
                return SafeArea(
                    child: Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: textController,
                        ),
                      ),
                      RaisedButton(
                        child: Text('Search for books'),
                        onPressed: (){
                        store.setTerm(textController.text);
                        },
                      ),
                    ],
                  ),
                ));
              } else {
                return SafeArea(
                    child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: store.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                    leading: Image.network(
                                        store.results[index].bookImage),
                                    title: Text(store.results[index].bookTitle),
                                    trailing: Text(
                                        '${store.results[index].bookAuthor} , ${store.results[index].bookPublicationYear.toString()}'));
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ));
              }
            }
          }
        });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
