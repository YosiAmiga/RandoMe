import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class YosiPage extends StatefulWidget {
  @override
  _YosiPageState createState() => _YosiPageState();
}

class _YosiPageState extends State<YosiPage> {
  String specificLink = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      // puts all the container's widgets inside the safe area for the user to view
      body: SafeArea(
        // can have multiple children!
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/me.jfif'),
              radius: 50,
              backgroundColor: Colors.red,
            ),
            Text(
              "Yosi Amiga",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "INFORMATION SYSTEMS STUDENT",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 250,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InkWell(
              child: Card(
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.white,
                        size: 40,
                      ),
                      title: Text("Yosi_Amiga",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          )),
                    )),
              ),
              onTap: () {
                specificLink =
                    'https://www.linkedin.com/in/yosi-amiga-633243178/';
                _launchURL();
              },
            ),
            Card(
              color: Colors.red,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 40,
                  ),
                  title: Text("yosiamiga1710@gmail.com",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      )),
                ),
              ),
            ),
            InkWell(
              child: Card(
                color: Colors.blue.shade700,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.facebook,
                      color: Colors.white,
                      size: 40,
                    ),
                    title: Text("@YosiAmiga",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1,
                        )),
                  ),
                ),
              ),
              onTap: () {
                specificLink = 'https://www.facebook.com/yosi.amiga/';
                _launchURL();
              },
            ),
          ],
        ),
      ),
    );
  }

  // a method to use a string as a link to the desired site
  void _launchURL() async => await canLaunch(specificLink)
      ? await launch(specificLink)
      : throw 'Could not launch $specificLink';
}
