import 'package:divo/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:divo/MyPasswordField.dart';
import 'package:divo/screens/loginpage.dart';
import 'package:divo/screens/login_success.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => createpass();
}

class createpass extends State<CreatePasswordScreen> {
  var formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.deepOrange,
        ),
      ),
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              //Main Column
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        Column(
                          //Column A
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                'assets/newPass.png',
                                width: screenWidth * 0.5,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Enter the new password ',
                                    style: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: 30,
                                        shadows: <Shadow>[
                                          Shadow(
                                            blurRadius: 3.0,
                                            color: Colors.black,
                                          ),
                                        ],
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            //Column B
                            children: [
                              MyPasswordField(
                                  flag: true,
                                  myHintText: 'New Password',
                                  myValidatorHint:
                                      'Please enter valid password!'),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              MyPasswordField(
                                  flag: true,
                                  myHintText: 'Confirm Password',
                                  myValidatorHint: 'Password doesn`t match!'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.04,
                        ),
                        myDefualtFieldBotton(
                          myPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginSuccessScreen(),
                                ));
                          },
                          myData: 'Submit',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
