import 'package:flutter/material.dart';
import 'package:main/profile.dart';
import 'package:main/restaurantsNames.dart';
import 'basket.dart';
import 'meals.dart';

bool isDark = false;
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      "Restaurants": (context) => MyRestaurants(),
      "Basket": (context) => MyBasket(),
      "Logout": (context) => MyApp(),
      "Profile": (context) => MyProfile(),
      "Meals": (context) => Mymeals(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return loginPadge();
  }
}

class loginPadge extends State<StatefulWidget> {
  TextEditingController UserNameController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: isDark ? ThemeData.dark() : ThemeData.light(),
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('login'),
              actions: [
                Switch(
                    value: isDark,
                    onChanged: (value) {
                      isDark = !isDark;
                      setState(() {});
                    })
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/logo.png'),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('User Name : '),
                    Container(
                      width: 250,
                      child: TextField(
                        controller: UserNameController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Password : '),
                    Container(
                      width: 250,
                      child: TextField(
                        controller: PasswordController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          String userName = UserNameController.text;
                          String password = PasswordController.text;
                          if (userName == "admin" && password == "123") {
                            // Navigator.of(context).pop();
                            Navigator.of(context).pushNamed("Restaurants");
                            setState(() {});
                          }
                        },
                        child: const Text('Login'))
                  ],
                )
              ],
            )));
  }
}
