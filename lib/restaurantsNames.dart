import 'package:flutter/material.dart';
import 'main.dart';

List Meal_Name = ["شاورما", "تشكن بيتزا", "بيتزا", "برجر دجاج", "برجر لحم"];

class MyRestaurants extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return restaurants();
  }
}

class restaurants extends State<StatefulWidget> {
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
              title: const Text('Restaurants'),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child:
                                Image.asset('images/italiano.jpg', width: 150)),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child: Image.asset('images/fahed.jpg', width: 150)),
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child:
                                Image.asset('images/taboon.png', width: 150)),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child:
                                Image.asset('images/salman.jpg', width: 150)),
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child: Image.asset('images/scop.jpg', width: 150)),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child:
                                Image.asset('images/babaroti.jpg', width: 150)),
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("Meals");
                            },
                            child: Image.asset('images/mazaj.png', width: 150)),
                      ]),
                      SizedBox(
                        width: 20,
                      ),
                      Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("Meals");
                              },
                              child:
                                  Image.asset('images/mahran.png', width: 150)),
                        ),
                      ])
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )));
  }
}
