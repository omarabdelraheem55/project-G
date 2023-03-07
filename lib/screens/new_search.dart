import 'package:flutter/material.dart';

class SearchScreen extends SearchDelegate<String> {
  final List<String> alldoctors;
  final List<String> suggestiondoctors;
  SearchScreen({required this.alldoctors, required this.suggestiondoctors});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios_new),
      onPressed: () {
        close(context, query);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> alldoctor = alldoctors
        .where((doctors) => doctors.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
        itemCount: alldoctor.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(alldoctor[index]),
            onTap: () {
              query=alldoctor[index];
              close(context, query);
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestiondoctor = suggestiondoctors
        .where((doctors) => doctors.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
        itemCount: suggestiondoctor.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(suggestiondoctor[index]),
            onTap: () {
              query=suggestiondoctors[index];
              close(context, query);
            },
          );
        });
  }
}
