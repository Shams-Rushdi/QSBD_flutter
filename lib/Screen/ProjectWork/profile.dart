import 'package:flutter/material.dart';
import 'package:flutter_test1/Screen/ProjectWork/custom_textfield.dart';


class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Theme.of(context).primaryColor),
                    )),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 57,
                            backgroundImage: AssetImage('assets/profile.jpg')),
                      ),
                    ),
                    Positioned(
                        right: -8,
                        top: 17,
                        child: CircleAvatar(
                            radius: 17,
                            backgroundColor: Theme.of(context).cardColor,
                            child: CircleAvatar(
                                backgroundColor: Theme.of(context).cardColor,
                                radius: 16,
                                child: Icon(
                                  Icons.edit,
                                  size: 18,
                                  color: Theme.of(context).primaryColor,
                                ))))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomTextField('Name', Icon(Icons.account_circle),TextInputType.name),

                        CustomTextField('Phone ', Icon(Icons.call),TextInputType.number),

                        CustomTextField('E-mail address', Icon(Icons.email),TextInputType.text),
                        SizedBox(
                          height: 25,
                        ),


                        TextField(
                          keyboardType: TextInputType.multiline,
                          minLines: 1,
                          maxLines: 5,

                          decoration: InputDecoration(
                            filled: true,

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            prefixIcon:Icon(Icons.edit_note_outlined),
                            suffixIcon: Icon(Icons.arrow_forward_ios),
                            hintText: 'Tell Us About Yourself',
                          ),

                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                            width: 500,
                            height: 45,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text('UPDATE')))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}