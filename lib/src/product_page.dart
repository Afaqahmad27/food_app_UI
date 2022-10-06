import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../shared/constants.dart';

class Products extends StatefulWidget {
  CardItem myItem;
  Products({required this.myItem,Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  double _rating = 4.0;
  int _quantity=1;

  Widget topContainer(){
    return Expanded(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20,
            right: 20,
            child: Container(
              height: 460,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: Offset(-2,-2),
                      blurRadius: 5,
                      spreadRadius: -1,
                    ),
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: Offset(2,0),
                      blurRadius: 5,
                      spreadRadius: -1,
                    )
                  ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 80,),
                  Text(widget.myItem.infoTitle.toString(),style: kTitleText.copyWith(fontSize: 24, fontWeight: FontWeight.w500),),
                  Text(widget.myItem.infoPrice.toString(),style: kTitleText.copyWith(fontSize: 30, fontWeight: FontWeight.w700),),

                  SizedBox(height: 10,),
                  SmoothStarRating(
                    allowHalfRating: false,
                    onRated : (v) {
                      setState(() {
                        _rating = v;
                      });
                    },
                    starCount: 5,
                    rating: _rating,
                    size: 27.0,
                    color: Colors.orange,
                    borderColor: Colors.orange,
                  ),
                  SizedBox(height: 20,),
                  Text('Quantity',style: kTitleText.copyWith(fontSize: 24, fontWeight: FontWeight.w500),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if(_quantity>1) {
                                _quantity -= 1;
                              }
                              else{
                                _quantity=1;
                              }
                            });
                          },
                          child: Icon(Icons.remove,size: 35,),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text(_quantity.toString(),style: kTitleText.copyWith(fontSize: 24, fontWeight: FontWeight.w500),),
                      SizedBox(width: 20,),
                      Container(
                        width: 55,
                        height: 55,
                        child: RawMaterialButton(
                          onPressed: () {
                            setState(() {
                              if(_quantity<10) {
                                _quantity += 1;
                              }
                              else{
                                _quantity=10;
                              }
                            });
                          },
                          child: Icon(Icons.add,size: 35,),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Container(
                    width: 140,
                    height: 40,
                    child: RawMaterialButton(
                      onPressed: (){},
                      child: Text('Buy Now',style: kTitleText.copyWith(fontSize: 16,color: Colors.deepOrange, fontWeight: FontWeight.normal),),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.deepOrange,
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: 140,
                    height: 40,
                    child: RawMaterialButton(
                      onPressed: (){},
                      child: Text('Add to Cart',style: kTitleText.copyWith(fontSize: 16,color: Colors.white, fontWeight: FontWeight.normal),),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      border: Border.all(
                        color: Colors.deepOrange,
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 100,
            right: 100,
            child: Stack(
                children: [ Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  child: Image.asset(widget.myItem.urlImg.toString(),fit: BoxFit.scaleDown, height: 100,),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(0,6),
                          blurRadius: 5,
                          spreadRadius: -1,
                        )
                      ]
                  ),
                ),
                  Positioned(
                    top: 7,
                    left: 10,
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 40,
                      child: Text(widget.myItem.clrText.toString(),style: kLabelText.copyWith(fontWeight: FontWeight.w500,color: Colors.white),),
                      decoration: BoxDecoration(
                        color: widget.myItem.clr,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(widget.myItem.infoTitle.toString(), style: kTitleText.copyWith(color: Colors.black, fontFamily: 'fryo', fontWeight: FontWeight.w600,letterSpacing: 1.5),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          topContainer(),
        ],
      ),
    );
  }
}

