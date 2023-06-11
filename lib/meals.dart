import 'package:flutter/material.dart';
import 'package:main/restaurantsNames.dart';

import 'main.dart';

// ignore: non_constant_identifier_names
List to_basket = [];

class Mymeals extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return meals();
  }
}

class meals extends State<StatefulWidget> {
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
              title: const Text('Meals'),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                for (String x in Meal_Name)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$x"),
                      SizedBox(
                        width: 60,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            to_basket.add("$x");
                          },
                          child: Text('Add to Basket')),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("Basket");
                        },
                        child: Text("Done"))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ]),
            )));
  }
}
