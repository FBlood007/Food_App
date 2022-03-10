import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            leading:const Icon(
              Icons.keyboard_backspace_sharp,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:const [
                Text(
                  'PROFILE',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
       ),
    );
  }
}
