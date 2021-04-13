import 'package:flutter/material.dart';
// import 'package:profile_card/main.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List? data = [];
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as List<dynamic>?;
    nameController.text = data![0];
    phoneController.text = data![1];
    emailController.text = data![2];
    addressController.text = data![3];
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 50.0,
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Name",
                labelText: "Name",
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Phone",
                labelText: "Phone",
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Email",
                labelText: "Email",
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Address",
                labelText: "Address",
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      '/main',
                      arguments: [
                        data![0],
                        data![1],
                        data![2],
                        data![3],
                      ],
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 15.0,
                      letterSpacing: 2.2,
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      '/main',
                      arguments: [
                        nameController.text,
                        phoneController.text,
                        emailController.text,
                        addressController.text,
                      ],
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
