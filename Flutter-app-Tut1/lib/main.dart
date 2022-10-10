import 'package:flutter/material.dart';

// void main() => runApp(<root widget>)
void main() => runApp(MaterialApp(
    // <root widget> acts as a wrapper for other widgets inside it
    home: Card() // determines what will show on the home page
    ));

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { 
            // must use setState function to change/update value in app
            // setState() triggers the build function to re-run again with the updated data
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/user.png'),
                  radius: 40.0,
                ),
                SizedBox(width: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('NAME',
                        style:
                            TextStyle(color: Colors.grey, letterSpacing: 1.5)),
                    SizedBox(height: 10.0),
                    Text('JON LOH',
                        style: TextStyle(
                            color: Colors.amberAccent[200],
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0,
                            letterSpacing: 1.5))
                  ],
                )
              ],
            ),
            Divider(height: 60.0, color: Colors.grey[800]),
            SizedBox(height: 30.0),
            Text(
              'CURRENT ACCOUNT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 1.5,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'jonloh@hotmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text('12345678',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
