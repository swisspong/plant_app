import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithUnderline(title: title,),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color:kPrimaryColor,
            onPressed:press, 
            child: Text("More",style: TextStyle(color:Colors.white),))
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    Key key,
    this.title
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:24,
      child:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:kDefaultPadding / 4),
            child: Text(title,style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold)),
          ),
          Positioned(
            
            left: 0,
            right: 0,
            bottom:0,
            child: Container(
              margin: const EdgeInsets.only(right:kDefaultPadding / 4),
              height:7 ,
              color:kPrimaryColor.withOpacity(0.2)
            ),

          )
        ],

      ) ,
    );
  }
}
