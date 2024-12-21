import 'package:bite_buddy/views/home/componant/itemList_widget.dart';
import 'package:bite_buddy/views/home/componant/row_item_list.dart';
import 'package:bite_buddy/widgets/textstyleWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Shahadat",
                  style: ApppWidget.boldTextStyle(), // Using the static method here
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.shopping_cart, color: Colors.white,),
                )
              ],
            ),

           SizedBox(height: 30,),
            Text(
                  "Delicious Food",
                  style: ApppWidget.headerTextStyle(), // Using the static method here
                ),
               
            Text(
                  "Discover and Get Great Food",
                  style: ApppWidget.lightTextStyle(), // Using the static method here
                ),
                SizedBox(height: 15,),
                 ItemListWidget(),
                 SizedBox(height: 25,),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: RowItemList(),
                 ) ,
                 SizedBox(height: 30,),
                 Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                   child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset('assets/images/caesar_salad.png',height: 100,width: 100,fit: BoxFit.cover,),
                        SizedBox(width: 25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                        )
                      ],
                    ),
                   ),
                 )  
          ],
        ),
      ),
    );
  }

}

