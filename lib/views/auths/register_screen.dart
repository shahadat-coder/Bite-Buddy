import 'package:bite_buddy/widgets/textstyleWidget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              
              decoration: BoxDecoration(
                 gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  colors: [
                   Color(0xFF000000),
                   Color(0xFF000000)
                 ])
              ),

              child: Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: MediaQuery.of(context).size.width/2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),),

              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('SignUp',style: ApppWidget.headerTextStyle(),),
                     SizedBox(height: 20,),
                     
                      TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: ApppWidget.lightTextStyle(),
                        prefixIcon: Icon(Icons.person_outlined),
                      ),
                    ),
                    SizedBox(height: 20,),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: ApppWidget.lightTextStyle(),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(height: 20,),
                     
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: ApppWidget.lightTextStyle(),
                        prefixIcon: Icon(Icons.password_outlined),
                      ),
                    ),
                    
                    Spacer(),

                   ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 5, // Adjust elevation as needed
        backgroundColor: Colors.black ,// Default color
        shadowColor: Colors.grey.withOpacity(0.8),
        minimumSize: const Size.fromHeight(60), // Button height
      ),
      child: Text(
        'SignUp',
        style: TextStyle(
          color: Colors.white, // Default text color
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    SizedBox(height: 20,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account",
        style: ApppWidget.lightTextStyle(),
        ),
        TextButton(onPressed: (){},
         child: Text("Login",
        style: ApppWidget.boldTextStyle(),
        ),)
      ],
    ),
    SizedBox(height: 50,),
                  ]
                ),
              ),
            ),

    

          ],
        ),
      ),
    );
  }
}