import 'package:flutter/material.dart';

import 'constents.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height* 0.4,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [KprimaryColor,KsecondryColor],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular((90)),
                    bottomRight: Radius.circular((90))
                ),
              ),
              child: const Center(
                child:CircleAvatar(
                  backgroundColor: KprimaryColor,
                  backgroundImage: AssetImage('images/mlogo.jpg'),
                  radius:50 ,
                ) ,
              ),
            ),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                keyboardType: TextInputType.name,
                controller: nameController,
                decoration:   InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(Icons.person),
                  prefixStyle: const TextStyle(color: KprimaryColor),
                  //border: OutlineInputBorder(),
                  labelText: 'Full Name',
                  labelStyle: const TextStyle(
                    color: KTextFieldColor,
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: KprimaryColor)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration:  InputDecoration(
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(Icons.email),
                  prefixStyle: const TextStyle(color: KprimaryColor),
                  //border: OutlineInputBorder(),
                  labelText:'email',
                  labelStyle: const TextStyle(
                    color: KTextFieldColor,
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: KprimaryColor))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: phoneController,
                decoration:  InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(Icons.phone),
                  prefixStyle: const TextStyle(color: KprimaryColor),
                  //border: OutlineInputBorder(),
                  labelText: 'phone number',
                  labelStyle: const TextStyle(
                    color: KTextFieldColor,
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: KprimaryColor))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    prefixIcon: const Icon(Icons.password),
                    labelText: 'password',
                    labelStyle: const TextStyle(
                      color: KTextFieldColor,
                    ),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: KprimaryColor))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 25,
                right: 25,
              ),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: KprimaryColor
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style:textButton.copyWith(color: KwhiteColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 32 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already I have an account?',
                    style: TextStyle(
                      color: KZambeziColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child:Text(
                        'Login',
                        style: titleText,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
