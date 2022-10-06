import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';
import 'package:food_app/src/section2_page.dart';
import 'package:food_app/src/section3_page.dart';
import 'package:food_app/src/status_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10,left: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('All Categories',style: kTitleText.copyWith(fontSize: 20),),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.grey.shade200,
                  child: Row(
                    children: [
                      Text('View all',style: kLabelText.copyWith(color: Colors.deepOrange.shade900),),
                      Text(' >',style: kLabelText.copyWith(
                          fontSize: 8,
                          color: Colors.deepOrange.shade900),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: statusList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StatusBar(info: statusList[index],)),
          ),
          Container(
            margin: EdgeInsets.only(right: 10,left: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Deals',style: kTitleText.copyWith(fontSize: 20),),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.grey.shade200,
                  child: Row(
                    children: [
                      Text('View all',style: kLabelText.copyWith(color: Colors.deepOrange.shade900),),
                      Text(' >',style: kLabelText.copyWith(
                          fontSize: 8,
                          color: Colors.deepOrange.shade900),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 275,
            padding: EdgeInsets.all(10.0),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=> myCard(context,item: items[index]), separatorBuilder: (context, _)=>SizedBox(width: 10,), itemCount: items.length),
          ),          Container(
            margin: EdgeInsets.only(right: 10,left: 10,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Drinks',style: kTitleText.copyWith(fontSize: 20),),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.grey.shade200,
                  child: Row(
                    children: [
                      Text('View all',style: kLabelText.copyWith(color: Colors.deepOrange.shade900),),
                      Text(' >',style: kLabelText.copyWith(
                          fontSize: 8,
                          color: Colors.deepOrange.shade900),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 275,
            padding: EdgeInsets.all(10.0),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index)=> myCardS3(context,item: itemsS3[index]), separatorBuilder: (context, _)=>SizedBox(width: 10,), itemCount: itemsS3.length),
          ),
        ],
      ),

    );
  }
}
