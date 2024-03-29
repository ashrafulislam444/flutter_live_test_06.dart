import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List",style: TextStyle(
          fontSize: 20,
        ),),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {

            },
          ),
        ],
      ),
      body: ShoppingList(),
    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {"name": "Apples", "icon": Icons.shopping_basket},
    {"name": "Bananas", "icon": Icons.shopping_basket},
    {"name": "Bread", "icon": Icons.shopping_basket},
    {"name": "Milk", "icon": Icons.shopping_basket},
    {"name": "Eggs", "icon": Icons.shopping_basket},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(shoppingItems[index]["icon"]),
          title: Text(shoppingItems[index]["name"]),

        );
      },
    );
  }
}
