import 'package:flutter/material.dart';
import 'package:test_1/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Prdoucts'),
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back), // You can use a different icon if needed
            onPressed: () {
              // Define the behavior when the back button is pressed
              // For example, you can navigate back to the previous screen using Navigator
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('Sign Out')),
          ],
        ),
        body: SafeArea(
            child: ListView.separated(
                itemBuilder: ((ctxt, index) {
                  return ListTile(
                    title: Text('Bread $index'),
                    subtitle: Text('Quantity $index'),
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/bread.png')),
                    trailing: Text('1$index:00 PM'),
                  );
                }),
                separatorBuilder: (ctxt, index) {
                  return Divider();
                },
                itemCount: 10)));
  }
}
