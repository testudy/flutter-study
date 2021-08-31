import 'package:flutter/material.dart';
import './BooksListScreen.dart';
import './BookDetailsScreen.dart';
import './Book.dart';

class BooksNameRouteApp extends StatelessWidget {
  List<Book> books = [
    Book('Stranger in a Strange Land', 'Robert A. Heinlein'),
    Book('Foundation', 'Isaac Asimov'),
    Book('Fahrenheit 451', 'Ray Bradbury'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) {
          return BooksListScreen(books: books, onTapped: (Book book) {
            Navigator.pushNamed(context, '/details', arguments: book);
          });
        },
        '/details': (context) {
          print(context);
          final book = ModalRoute.of(context)!.settings.arguments as Book;
          return BookDetailsScreen(book: book);
        },
      },
    );
  }
}
