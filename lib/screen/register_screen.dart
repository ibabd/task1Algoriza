import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:task_01algoriza/screen/login_screen.dart';
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/logo.jpg',fit: BoxFit.fill,width: double.infinity,height:130,),
                  const Positioned(
                    bottom: 20,
                      left: 10,
                      child: CircleAvatar(
                      backgroundColor: Colors.black,
                       child: Icon(Icons.arrow_back,color: Colors.white,),
                  )),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'welcome to fashion Daily',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sign in',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(
                      children: const [
                        Text('Help',style: TextStyle(color: Colors.blue,),),
                        SizedBox(width: 5,),
                        CircleAvatar(
                          child: Text('?',style: TextStyle(color: Colors.white),),
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,bottom: 5.0),
                child: Text('Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black38),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    hintText: 'Enter your email',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,bottom: 5),
                child: Text(
                  'phone Number',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black38),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: phoneController,
                  obscureText: false,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    hintText: 'Enter number phone',
                    prefixStyle: const TextStyle(color: Colors.black,),
                    prefixIcon: CountryPickerDropdown(
                      dropdownColor: Colors.orange,
                      initialValue: 'eg',
                      itemBuilder: _buildDropdownItem,
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },

                    ),
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0,bottom: 5.0),
                child: Text(
                  'Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black38),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade200,
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility,
                      ),
                      onPressed: (){},
                    ),
                    hintText: 'Enter password',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),

              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: const Text('Register',style: TextStyle(color: Colors.white),),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Divider(color: Colors.black26,),
                  Center(child: Text('Or',textAlign:TextAlign.center,style: TextStyle(color: Colors.black),)),
                  Divider(color: Colors.black26),
                ],
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: (){},
                child: Container(
                  margin:const EdgeInsets.only(left: 10,right: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue,width: 2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/google.png'),
                      const SizedBox(width: 10.0,),
                      const Text('Sign with by google'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('has any account ?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: const Text('Sign In here',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                ],
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('By registering your account,you are agree to our'
                    ' terms and condition',textAlign: TextAlign.center,),
              )

            ],
          ),
        ));
  }
  Widget _buildDropdownItem(Country country) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CountryPickerUtils.getDefaultFlagImage(country),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    );
  }

}