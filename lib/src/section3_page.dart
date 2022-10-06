import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';
import 'package:food_app/src/product_page.dart';

Widget myCardS3(BuildContext context,{required CardItem item})=> Container(
  width: 200,
  height: 200,

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Stack(
        children:[
        Container(
          alignment: Alignment.center,
          height: 200,
          width: 200,

    decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(0,8),
              blurRadius: 8,
              spreadRadius: -5,
            ),
    ],
      borderRadius: BorderRadius.circular(12),
  ),
          child: Material(
            color: Colors.transparent,
            child: Ink.image(image: AssetImage(item.urlImg.toString(),),fit: BoxFit.scaleDown,height: 150,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Products(myItem: item,)));
              },
            ),
            ),
          ),
        ),
          Positioned(
            top: 7,
            left: 10,
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 20,
              decoration: BoxDecoration(
              color:item.clr,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(item.clrText.toString(), style: kLabelText.copyWith(fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          ),
],
      ),
      Text(item.infoTitle.toString(),style: kTitleText.copyWith(fontSize: 18, fontWeight: FontWeight.w600),),
      Text(item.infoPrice.toString(),style: kLabelText.copyWith(fontSize: 18, fontWeight: FontWeight.w500),)
    ],
  ),
);

List<CardItem> itemsS3 =[
  CardItem(
      urlImg: 'images/6.png',
      infoTitle: 'Coca Cola',
      infoPrice: '\$ 10',
      clr:  Colors.deepOrange.withOpacity(0.8),
      clrText: '10%'

  ),
  CardItem(
      urlImg: 'images/7.png',
      infoTitle: 'Lemonade',
      infoPrice: '\$ 13',
clr:  Colors.deepOrange.withOpacity(0.8),
clrText: '19%'
  ),
  CardItem(
      urlImg: 'images/2.png',
      infoTitle: 'Akara',
      infoPrice: '\$ 30',
    clrText: '',
  ),
  CardItem(
      urlImg: 'images/1.png',
      infoTitle: 'Strawberry',
      infoPrice: '\$ 40',
clr:  Colors.deepOrange.withOpacity(0.8),
clrText: '3%'
  ),
];
