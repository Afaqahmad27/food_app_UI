import 'package:flutter/material.dart';
import 'package:food_app/src/dashboard.dart';
import 'package:page_transition/page_transition.dart';

const kTitleText=TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 25,
    fontFamily: 'poppins',
);

const kLabelText=TextStyle(
  fontSize: 14,

);


class CardItem{
  String? urlImg;
  String? infoTitle;
  String? infoPrice;
  String? clrText;
  Color? clr;

  CardItem({this.urlImg, this.infoTitle, this.infoPrice,this.clr, this.clrText});
}




Container userTextInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
    ),
  );
}

Container userEmailInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    ),
  );
}


Container userPasswordInput(String hintText,
    {onTap, onChanged, onEditingComplete, onSubmitted}) {
  return Container(
    margin: EdgeInsets.only(top: 13),
    child: TextField(
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      obscureText: true,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),),
    ),
  );
}

Widget authButton(BuildContext context,String authFor){
  return RawMaterialButton(
    onPressed: () {
      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: Dashboard()));
    },
    padding: EdgeInsets.all(13),
    child: Container(
      height: 60,
      width: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(authFor,style: kTitleText.copyWith(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),),
          SizedBox(width: 2,),
          Icon(Icons.arrow_forward_outlined, color: Colors.white,)
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.deepOrange.withOpacity(0.95),
          borderRadius: BorderRadius.circular(14)
      ),
    ),
  );
}