import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final _email =  TextEditingController();
  final _password =  TextEditingController();
  final _formKey = GlobalKey<FormState>();
  PrintInputData(){
    if(_formKey.currentState!.validate()){
      print(_email);
      print(_password);
    }
   }

   @override
  void dispose() {
    // TODO: implement dispose
    _email.clear();
    _password.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample App"),
        centerTitle: true,
      ),
      
      body: Container(
        height: 800,
        width: double.infinity,
        //padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20,bottom: 20)),
            //Image.network("https://cdn.dribbble.com/users/1889528/screenshots/7239609/0aba6579301149.5cbf290c5a8dd.jpg"),
            Text("TutorialKart",style: TextStyle(color: Colors.lightBlue,fontSize: 40)),
            Padding(padding: EdgeInsets.only(top: 20,bottom: 20)),
            Text("Sign in",style: TextStyle(fontSize: 20)),

            Padding(
                padding: EdgeInsets.only(top: 20,right: 40,left: 40,bottom: 30),
                child: TextFormField(
                  controller: _email,
                            validator:(value){
                              if(value == null || value.isEmpty){
                                return "Please Enter Your Email";
                              }
                  },
                onChanged: (value){
                          },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Email',
                  ),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40,left: 40,bottom: 30),
              child: TextFormField(
                controller: _password,
                validator:(value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Your Email";
                  }
                  else if (value.length < 8) {
                    return 'Provide 8 digit Strong Password';
                  }
                  },
                onChanged: (value){
                  },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            Text("Forgot Password",style: TextStyle(fontSize: 15,color: Colors.lightBlueAccent)),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              TextButton(

                style:TextButton.styleFrom(
                    padding: EdgeInsets.only(right: 120,left: 120),
                    backgroundColor: Colors.lightBlueAccent,
                ),

                  onPressed:(){
                  PrintInputData();
                  },
                  child:
                  Text("Login",style: TextStyle(color:Colors.white, fontSize: 15),)
                      ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Text("Does not have account? ",style: TextStyle(fontSize: 15,color: Colors.black)),
        // RichText(
        //     text: TextSpan(
        //       text: 'Does not have account?  ',
        //       style: DefaultTextStyle.of(context).style,
        //       children: const <TextSpan>[
        //         TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.bold)),
        //         TextSpan(text: ' world!'),
        //       ],
        //     ),
        //   ),

          ],
        )

        
        // Form(
        //   key: _formKey,
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: EdgeInsets.all(20.5),
        //         child: TextFormField(
        //           controller: _email,
        //           validator:(value){
        //             if(value == null || value.isEmpty){
        //               return "Please Enter Your Email";
        //             }
        //           },
        //           onChanged: (value){
        //
        //           },
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsets.all(20.5),
        //         child: TextFormField(
        //           controller: _password,
        //           validator:(value){
        //             if(value == null || value.isEmpty){
        //               return "Please Enter Your Email";
        //             }
        //             else if (value.length < 8) {
        //               return 'Provide 8 digit Strong Password';
        //             }
        //           },
        //           onChanged: (value){
        //           },
        //         ),
        //       ),
        //       TextButton(
        //           style:   TextButton.styleFrom(
        //               padding: EdgeInsets.symmetric(
        //                   horizontal: 60,
        //                   vertical: 5
        //               ),
        //               backgroundColor: Colors.deepOrange
        //           ),
        //
        //           onPressed:(){
        //             PrintInputData();
        //           },
        //           child: Text("login",)
        //       ),
        //     ],
        //   ),
        // ),
      )
    );
  }
}
