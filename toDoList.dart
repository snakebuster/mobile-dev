import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class Todo {
  String? title;
  String? description;
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  String userPostTitle = '';
  String userPostDescription = '';
  List<Todo> todoList = [];

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter title',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _titleController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Description',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _descriptionController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),
          ),
          Expanded(child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(todoList[index].title ?? ''),
                subtitle: Text(todoList[index].description ?? ''),
              );
            },
            itemCount: todoList.length,
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Todo objectTodo = Todo();
          objectTodo.title = _titleController.text;
          objectTodo.description = _descriptionController.text;
          setState(() {
            todoList.add(objectTodo);
          });
        },
        backgroundColor: Colors.blue,
        child: const Text(
          'Add',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
