import 'package:bite_buddy/views/auths/login_screen.dart';
import 'package:bite_buddy/widgets/content_model.dart';
import 'package:bite_buddy/widgets/textstyleWidget.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    
  _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: contents.length,
              controller: _controller,
               
               onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
               },
            
            
              itemBuilder: (_, i){
              return Padding(padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                 Image.asset(contents[i].image, height: 450,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                 SizedBox(height: 20,),
                 Text(contents[i].title,style: ApppWidget.headerTextStyle(),textAlign: TextAlign.center,),
                 SizedBox(height: 10,),
                 Text(contents[i].description,style: ApppWidget.lightTextStyle(),textAlign: TextAlign.center),
                ],
              ),
              );
            }),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length,
               (index) => buildDot(index, context),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                  onPressed: (){
            
                    if(currentIndex == contents.length-1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    }
                    _controller.nextPage(duration: Duration(milliseconds: 100),
                     curve: Curves.bounceIn);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 5, // Adjust elevation as needed
                    backgroundColor: Colors.black ,// Default color
                    shadowColor: Colors.grey.withOpacity(0.8),
                    minimumSize: const Size.fromHeight(60), // Button height
                  ),
                  child: Text(
                   currentIndex == contents.length - 1? 'Start' : 'Next',
                   
                    style: TextStyle(
            color: Colors.white, // Default text color
            fontSize: 20,
            fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          ),
    SizedBox(height: 50,)
        ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context){
    return  Container(
        height: 10.0, 
        width: currentIndex == index? 18:7, 
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.black),
    );
  }
}