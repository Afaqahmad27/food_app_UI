import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';
import 'package:food_app/src/sign_in_page.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          title: Text('Sign Up',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Text('Welcome New User!', style: kTitleText.copyWith(fontSize: 20),),
                      Text('Howdy, let\'s Now Register an Account',style: kTitleText.copyWith(fontSize: 16.2,fontWeight: FontWeight.w500),),
                      userTextInput('Enter Full Name'),
                      userEmailInput('Enter Email'),
                      userPasswordInput('Enter Password'),
                      SizedBox(height: 20,),
                      Center(child: authButton(context, "SignUp"))
                    ],
                  ),
                ],
              ),

              width: double.infinity,
            ),
          ],
        )
    );

  }
}
