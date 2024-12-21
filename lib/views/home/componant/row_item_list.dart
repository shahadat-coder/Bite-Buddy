import 'package:bite_buddy/views/details_page.dart';
import 'package:bite_buddy/widgets/textstyleWidget.dart';
import 'package:flutter/material.dart';

class RowItemList extends StatelessWidget {
  const RowItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
      },
      child: Container(
        child: Row(
         children: [
          
        Material(
          elevation: 5,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/caesar_salad.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 15),
                Text(
                  "Caesar Salad",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
                Text(
                  "Fresh and Healthy",
                  style: ApppWidget.lightTextStyle(),
                ),
                Text(
                  "\$25",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
              ],
            ),
          ),
        ),
        
          SizedBox(width: 20,),
        Material(
          elevation: 5,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/garden_salad.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 15),
                Text(
                  "Garden Salad",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
                Text(
                  "Fresh and Healthy",
                  style: ApppWidget.lightTextStyle(),
                ),
                Text(
                  "\$25",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
              ],
            ),
        
            
          ),
        ),
         SizedBox(width: 20,),
        Material(
          elevation: 5,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/green_salad.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 15),
                Text(
                  "Green Salad",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
                Text(
                  "Fresh and Healthy",
                  style: ApppWidget.lightTextStyle(),
                ),
                Text(
                  "\$25",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
              ],
            ),
          ),
        ),
        
        ],),
      ),
    );
  }
}