import 'package:flutter/material.dart';

import 'main.dart';

class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return profile();
  }
}

class profile extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: isDark ? ThemeData.dark() : ThemeData.light(),
        child: Scaffold(
          drawer: Drawer(
            child: Column(children: [
              UserAccountsDrawerHeader(
                accountName: Text('Wellcome Mohammed'),
                accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/myImage.jpg')),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("Restaurants");
                },
                title: Text('Restaurants'),
                subtitle: Text('Go to Restaurants List'),
                leading: Icon(Icons.restaurant_rounded),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("Basket");
                },
                title: Text('basket'),
                subtitle: Text('Go to Basket'),
                leading: Icon(Icons.shopping_basket),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("Profile");
                },
                title: Text('View Profile'),
                subtitle: Text('Click to View Profile'),
                leading: Icon(Icons.view_comfortable_rounded),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("Logout");
                },
                title: Text('Logout'),
                subtitle: Text('Click to logout'),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ]),
          ),
          appBar: AppBar(
            actions: [
              Switch(
                  value: isDark,
                  onChanged: (value) {
                    isDark = !isDark;
                    setState(() {});
                  })
            ],
            title: const Text('Profile'),
          ),
          body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/MyImage.jpg', width: 200),
                SizedBox(height: 20),
                Text("My Name : Mohammed Akram"),
                SizedBox(height: 10),
                Text("My ID : 120190436"),
              ],
            )
          ]),
        ));
  }
}
