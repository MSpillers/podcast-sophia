import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
          children: <Widget>[
            SizedBox(
              height: 50.00,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10.00),
                Text(
                  'Good Morning,',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 20.0,
                    color: Colors.grey[400],
                    letterSpacing: 1.00,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0),
                Text(
                  'Sophia',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 30.0,
                    color: Colors.pink[400],
                    letterSpacing: 2.00,
                  ),
                ),
                SizedBox(
                  width: 200.00,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.UHMcLKyqw1a_qe1mJdQuJwHaJD%26pid%3DApi&f=1'),
                  radius: 30.0,
                ),
                SizedBox(height:20.00),
              ],
            ),
            SizedBox(height:15.00),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search for Podcasts...',
                        prefixIcon: Icon(CupertinoIcons.search_circle,color: Colors.pink[400]),
                        focusColor: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:30.0),
            Row(
              children:[
                Text('Recommended',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 20.0,
                  letterSpacing: 2.00,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text('View All',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 10.0,
                    letterSpacing: 2.00,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height:10.0),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child:
                      Card(
                        child:
                        Image(
                          image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.fineartamerica.com%2Fimages%2Fartworkimages%2Fmediumlarge%2F1%2Fhistory-of-pink-abstract-art-by-linda-woods-linda-woods.jpg&f=1&nofb=1'),
                        ),
                      ),
                    ),
                    Card(
                      child:
                      Image(
                        image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.c4hCbi5kcgNxNJuFHt88DwHaHa%26pid%3DApi&f=1'),
                      ),
                    ),
                    Card(
                      child:
                      Image(
                        image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.mmFMFzf2qzWQTYbzinYXYgHaF1%26pid%3DApi&f=1'),
                      ),
                    ),
                    Card(
                      child:
                      Image(
                        image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.fineartamerica.com%2Fimages%2Fartworkimages%2Fmediumlarge%2F1%2Fhistory-of-pink-abstract-art-by-linda-woods-linda-woods.jpg&f=1&nofb=1'),
                      ),
                    ),
                  ],
                ),
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
