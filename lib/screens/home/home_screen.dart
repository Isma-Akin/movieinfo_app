import 'package:flutter/material.dart';
import 'package:movieinfo_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(
              left: kDefaultPadding),
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding),
            onPressed: () {},
            icon: Icon(Icons.search))],
      ),
    );
  }
}
