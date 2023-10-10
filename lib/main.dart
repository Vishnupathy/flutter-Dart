import 'package:flutter/material.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
 }
}

class MyHomePage extends StatefulWidget {
MyHomePage(title = 'Your Title Here', String title) : title = title,


 final String title;

 @override
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 int _selectedIndex = 0;
 static List<Widget> _widgetOptions = <Widget>[
    Text('Account'),
    Text('Debit Card'),
    Text('Loans'),
 ];

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
 }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Debit Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Loans',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
 }
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: MyHomePage(),
      ),
    );
 }
}

class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Welcome to My App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'This is a sample app to demonstrate adding more elements.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(child: MyList()),
      ],
    );
 }
}
{
  {
    {
      {
        {
              SizedBox(height: 8),
              Text(
                'This is a sample app to demonstrate adding more elements.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(child: MyList()),
      ],
    );
 }
}
dart
class MyList extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListItem(index: index);
      },
    );
 }
}

class ListItem extends StatelessWidget {
 final int index;

 ListItem({required this.index});

 @override
 Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text('Item ${index + 1}'),
    );
 }
}

dart
class MyHomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Welcome to My App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'This is a sample app to demonstrate adding more elements.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(child: MyList()),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            '© 2022 My App. All rights reserved.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ],
    );
 }
}
dart
class MyHomePage extends StatefulWidget {
 @override
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 String _searchText = '';

 @override
 Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Welcome to My App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'This is a sample app to demonstrate adding more elements.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            onChanged: (value) {
              setState(() {
                _searchText = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(child: MyList(searchText: _searchText)),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            '© 2022 My App. All rights reserved.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ],
    );
 }
}

class MyList extends StatelessWidget {
 final String searchText;

 MyList({required this.searchText});

 @override
 Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        if (searchText.isEmpty ||
            'Item ${index + 1}'.contains(searchText)) {
          return ListItem(index: index);
        }
        return Container();
      },
    );
 }
}