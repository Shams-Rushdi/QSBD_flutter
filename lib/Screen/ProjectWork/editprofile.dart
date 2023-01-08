import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 10,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text('Edit Profile',style: TextStyle(fontSize: 30,color: Colors.black),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 40, 16, 0),
              child: SizedBox(
                height: 100,
                width: 150,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                  decoration:
                  InputDecoration(labelText: 'First Name'),

                ),
              )
                ,)
            ],
          )
          // ClipOval(
          //   child: Image.network("https://avatars.githubusercontent.com/u/77982841?s=400&v=4",width: 330,
          //     ),
          //   //clipper: MyClip(),
          // ),

        ],
      ),

    );
  }
}

