import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_01algoriza/screen/login_screen.dart';
import 'package:task_01algoriza/screen/register_screen.dart';

class SplashTwo extends StatelessWidget {
   SplashTwo({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Text('skip'),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '7',
                    style: TextStyle(color: Colors.brown, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Krave',
                    style: TextStyle(color: Colors.teal, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/buy_food1.jpg',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Buy any food from your'
                      ' favorite restaurant',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                    'we are constantly adding your favourite '
                        'restaurant throughout the territory and around'
                        ' your area carefully selected',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),

              const SizedBox(height: 15,),
              Container(
                margin: const EdgeInsets.only(left: 10,right: 10),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15.0)
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   [
                    const Text('Don,\t have an account ?',style: TextStyle(color: Colors.black,fontSize: 17,)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                        },
                        child:const Text('Sign Up',style: TextStyle(color: Colors.teal,fontSize: 17,),))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
