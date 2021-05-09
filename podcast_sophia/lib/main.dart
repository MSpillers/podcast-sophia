import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.00, 25.0, 20.0, 5.0),
            child: Text('Good Morning,',
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: 20.0,
                color: Colors.grey[500],
              ) ,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.00, 0.00, 0.00, 20.00),
            child: Text('Sophia',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.pink[500],
              ) ,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex:2,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search for podcasts...',
                    prefixIcon: Icon(Icons.search,color: Colors.pinkAccent,),
                ),
              ),
            ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.anchor_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}
