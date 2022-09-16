import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Darshak"),
                accountEmail: Text("darshak@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.purple,
                  radius: 25,
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account"),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text("About Us"),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: Icon(
                    Icons.close,
                    size: 30,
                  ),
                  title: Text("Close"),
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
    );
  }
}
