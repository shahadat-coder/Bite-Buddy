import 'package:bite_buddy/widgets/textstyleWidget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           IconButton(onPressed: (){

              Navigator.pop(context);
           }, icon: Icon(Icons.arrow_back_ios_new_outlined), color: Colors.black,),
           Image.asset('assets/images/garden_salad.png',
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height /2.5,
           ),

           SizedBox(height: 15,),

           Row(
            children: [
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
                
                ],
              ),Spacer(),

              GestureDetector(
                onTap: (){
                  if(a>1){
                    --a;
                  }
                  setState(() {
                    
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.remove, color: Colors.white,),
                ),
              ),
              SizedBox(width: 20,),
              Text(a.toString(),style: ApppWidget.semiBoldTextStyle(),),
               SizedBox(width: 20,),
              GestureDetector(
                onTap: (){
                  ++a;
                  setState(() {
                    
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.add, color: Colors.white,),
                ),
              )
            ],
           ),
             SizedBox(height: 20,),
             Text(
              maxLines: 3,
              'Garden salad is one of the most basic salads,\n yet it’s also one of the most popular. This garden salad is made with fresh garden vegetables tossed in a light.',
             style: ApppWidget.lightTextStyle(),
             ),

             SizedBox(height: 20,),

             Row(
              children: [
                Text(
                  "Delivery Time",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
                SizedBox(width: 50,),
                Icon(Icons.alarm,color: Colors.black,),
                SizedBox(width: 5,),
                Text(
                  "30 min",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
              ],
             ),
               Spacer(),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  "Total Price",
                  style: ApppWidget.semiBoldTextStyle(),
                ),
                SizedBox(height: 5,),
                Text(
                  "\$25",
                  style: ApppWidget.headerTextStyle(),
                ),
                  ],
                ),

              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                    "Add to cart",
                    style: TextStyle(
                    color: Colors.white60,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    ),
                  ),
                    
                   Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    color: Colors.grey
                    ),
                    child: Icon(Icons.shopping_cart),
                   )
                    ],
                  ),
                ),
              )
              ],
             ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}