import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';
import 'package:food_app/src/dashboard.dart';
import 'package:food_app/src/sign_up_page.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white70,
          title: Text('Sign In',
              style: TextStyle(
                  color: Colors.grey, fontFamily: 'Poppins', fontSize: 15)),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10, top: 4, bottom: 4),
              width: 100,
              decoration: BoxDecoration(
              color: Colors.deepOrange.withOpacity(0.8),
               borderRadius: BorderRadius.circular(14) 
              ),
              child: RawMaterialButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacementNamed('/signup');
                  Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft,  child: SignUp()));

                },
                child: Text('Sign Up',style: kTitleText.copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
              ),
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Welcome Back!', style: kTitleText.copyWith(fontSize: 20),),
                      Text('Howdy, let\'s authenticate',style: kTitleText.copyWith(fontSize: 17, fontWeight: FontWeight.w500),),
                      userTextInput('Username'),
                      userPasswordInput('Password'),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Text('Forgot Password?',),
                      ),
                      Center(child: authButton(context, "Login"))
                    ],
                  ),
                ],
              ),
              height: 350,
              width: double.infinity,
            ),

          ],
        )
    );

  }
}
