import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          // App bar

          // Logo
          Image.asset(
            "Logo",
          ),
          // user name
          Text("User Name:"),
          Container(
            // TODO Color and circular
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Row(
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Kullanıcı Adı',
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.remove_red_eye,
                    )),
              ],
            ),
          ),
          // user pass
          // Login button
          // Or login
          // Create new account
        ],
      ),
    );
  }
}
