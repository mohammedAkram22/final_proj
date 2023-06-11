import 'package:flutter/material.dart';
import 'package:main/meals.dart';

import 'main.dart';

class MyBasket extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return basket();
  }
}

class basket extends State<StatefulWidget> {
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
            title: const Text('Basket'),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              for (String x in to_basket)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("$x"),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add Notic : "),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 250,
                    child: TextField(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your Location : "),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 240,
                    child: TextField(),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ElevatedButton(onPressed: () {}, child: Text("Go"))],
              ),
            ],
          ),
        ));
  }
}
