// Importing the Flutter Material package
import 'package:flutter/material.dart';

// The main function is the starting point for all Dart apps.
void main() {
  // runApp makes the given widget the root of the widget tree and initializes the app.
  runApp(MyApp());
}

// MyApp class. This class represents the whole application.
class MyApp extends StatelessWidget {
  // The build method rebuilds the widget tree if there are any changes and allows hot reload to work.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the base widget for Material apps.
    return MaterialApp(
      // ThemeData is used to set the colors for the app.
      theme: ThemeData(
        // Setting the background color of the scaffold (the base for showing widgets).
        scaffoldBackgroundColor: Color(0xFF1D052D),
      ),
      // The widget that will be shown on the home screen.
      home: ContactList(),
    );
  }
}

// ContactTile class. This class represents a single contact tile.
class ContactTile extends StatelessWidget {
  // Variables for storing contact details.
  final String name;
  final String photoUrl;
  final String callTime;
  final bool missedCall;

  // Constructor for the class. It initializes the contact details.
  ContactTile({required this.name, required this.photoUrl, required this.callTime, this.missedCall = false});

  // The build method for creating the contact tile.
  @override
  Widget build(BuildContext context) {
    // ListTile is a single fixed-height row that typically contains some text as well as a leading or trailing icon.
    return ListTile(
      // The leading widget is displayed before the title.
      leading: Transform.translate(
        // Offset is used to shift the widget horizontally by -16 pixels.
        offset: Offset(-16, 0),
        // CircleAvatar is used to show circular images.
        child: CircleAvatar(
          // NetworkImage is used to load an image from a URL.
          backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
          // The radius of the circular image.
          radius: 50.0,
        ),
      ),
      // The title of the ListTile.
      title: Text(
        name,
        // TextStyle is used to specify the style of the text.
        style: TextStyle(color: missedCall ? Colors.red : Colors.white),
      ),
      // The subtitle of the ListTile.
      subtitle: Text(
        'Mobile',
        style: TextStyle(color: Colors.grey, fontFamily: 'Lato'),
      ),
      // The trailing widget is displayed after the title.
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon widget to show different icons based on whether the call was missed or not.
          Icon(missedCall ? Icons.phone_missed_outlined : Icons.add_ic_call_outlined, color: missedCall ? Colors.red : Colors.white),
          // Text widget to display the call time.
          Text(
            callTime,
            style: TextStyle(color: Colors.grey, fontFamily: 'Lato'),
          ),
        ],
      ),
    );
  }
}

// ContactList class. This class represents the list of contacts.
class ContactList extends StatelessWidget {
  // The build method for creating the contact list.
  @override
  Widget build(BuildContext context) {
    // Scaffold is a class that implements the basic material design visual layout structure.
    return Scaffold(
      // AppBar is a class that creates a material design app bar.
      appBar: AppBar(
        // Setting the background color of the AppBar.
        backgroundColor: Color(0xFF1D052D),
        // The title of the AppBar.
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // IconButton is a class that creates a material design icon button.
            IconButton(
              icon: Icon(Icons.settings_outlined, color: Colors.white),
              onPressed: () {
                // Functionality for the button goes here.
              },
            ),
            IconButton(
              icon: Icon(Icons.person_add_alt_1_outlined, color: Colors.white),
              onPressed: () {
                // Functionality for the button goes here.
              },
            ),
          ],
        ),
      ),
        // The body of the Scaffold widget is a Column widget.
        body: Column(
          // The children of the Column widget are a list of widgets.
          children: <Widget>[
            // The first child is a Row widget.
            Row(
              // The children of the Row widget are a list of widgets.
              children: <Widget>[
                // The first child is a Container widget.
                Container(
                  // The margin property sets the margin around the container.
                  margin: EdgeInsets.only(left: 35.0),
                  // The child of the Container widget is a CircleAvatar widget.
                  child: CircleAvatar(
                    // The backgroundImage property sets the background image of the circle.
                    backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    // The radius property sets the radius of the circle.
                    radius: 30.0,
                  ),
                ),
                // SizedBox is a box with a specified size. It can be used to create space between widgets.
                SizedBox(width: 10.0),
                // The second child of the Row widget is a Column widget.
                Column(
                  // crossAxisAlignment property determines how the children are placed along the cross axis.
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // The children of the Column widget are a list of widgets.
                  children: <Widget>[
                    // The first child is a Text widget.
                    Text(
                      'Norhan Waleed',
                      // The style property sets the style of the text.
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontFamily: 'Lato',
                      ),
                    ),
                    // The second child is also a Text widget.
                    Text(
                      '123-456-7890',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // The second child of the Column widget is a Container widget.
            Container(
              // The margin property sets the margin around the container.
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 16.0),
              // The child of the Container widget is a Row widget.
              child: Row(
                // The children of the Row widget are a list of widgets.
                children: <Widget>[
                  // The child of the Row widget is a Text widget.
                  Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
            ),




        Expanded(
            child: ListView(
              children: <Widget>[
                ContactTile(name: 'Aiden Adams', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '15:30', missedCall: false),
                ContactTile(name: 'Sophia Robinson', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '16:45', missedCall: false),
                ContactTile(name: 'Liam Murphy', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '15:30', missedCall: true),
                ContactTile(name: 'Harper Miller', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '16:45', missedCall: false),
                ContactTile(name: 'Benjamin Clark', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '15:30', missedCall: false),
                ContactTile(name: 'Scarlet Lewis', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '16:45', missedCall: false),
                ContactTile(name: 'Samuel Reed', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '15:30', missedCall: false),
                ContactTile(name: 'Anna Kelvin', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '16:45', missedCall: false),
                ContactTile(name: 'Richard Papen', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '15:30', missedCall: false),
                ContactTile(name: 'Edmund Corcoran', photoUrl: 'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', callTime: '16:45', missedCall: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
