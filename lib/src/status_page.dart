import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';

class StatusBar extends StatelessWidget {
   StatusBar({required this.info,Key? key}) : super(key: key);
   IconInfo info;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          margin: EdgeInsets.symmetric(horizontal: 8),
          height: 100,
          child: Icon(info.icon,size: 40,),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(0,5),
                blurRadius: 5.0,
                spreadRadius: -1
              )
            ]
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            children: [
              Text(info.iconInfo.toString(), style: kLabelText.copyWith(fontWeight: FontWeight.w600,fontSize: 16),),
              Text(' >',style: kLabelText.copyWith(fontSize: 10,fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ],
    );
  }
}



List<IconInfo> statusList=[
  IconInfo(
    icon: Icons.restaurant,
    iconInfo: 'Frieds',
  ),
  IconInfo(
    icon: Icons.soup_kitchen,
    iconInfo: 'Fast Food',
  ),
  IconInfo(
    icon: Icons.icecream,
    iconInfo: 'Creamery',
  ),
  IconInfo(
    icon: Icons.local_drink,
    iconInfo: 'Hot Drink',
  ),
  IconInfo(
    icon: Icons.energy_savings_leaf,
    iconInfo: 'Vegetables',
  )
];

class IconInfo{
  IconData? icon;
  String? iconInfo;
  IconInfo({this.icon, this.iconInfo});
}