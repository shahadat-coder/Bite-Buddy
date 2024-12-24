class OnboardingContent{
  String image;
  String title;
  String description;

  OnboardingContent({required this.image,required this.title,required this.description});
}

List<OnboardingContent> contents = [

OnboardingContent(image: 'assets/images/screen1.png',
 title: "Select from Our Best Menu",
  description: "Pick your food from our menu More than 35 times"),
  
  OnboardingContent(image: 'assets/images/screen2.png',
 title: "Easy and Online Payment",
  description: "You can pay cash on delivery and\n   Cart payment is available"),

  OnboardingContent(image: 'assets/images/screen3.png',
 title: "Quick Delivery ay Your Doorstep",
  description: "Deliver your food at your\n     Doorstep"),

];