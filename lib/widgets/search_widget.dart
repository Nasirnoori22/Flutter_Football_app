import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class Footballers {
  final String name, surname;
  final num age;

  Footballers(this.name, this.surname, this.age);
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  static List<Footballers> people = [
    Footballers('Mike', 'Barron', 64),
    Footballers('Todd', 'Black', 30),
    Footballers('Ahmad', 'Edwards', 55),
    Footballers('Anthony', 'Johnson', 67),
    Footballers('Annette', 'Brooks', 39),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final Footballers person = people[index];
          return ListTile(
            title: Text(person.name),
            subtitle: Text(person.surname),
            trailing: Text('${person.age} ago'),
          );
        },
      ),
    );
  }
}
