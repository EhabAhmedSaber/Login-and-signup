import 'package:flutter/material.dart';
import 'package:loginandsignup2/constents.dart';
import 'package:loginandsignup2/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObsecure = true;
  bool pass = true;
  var emailController = TextEditingController();
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
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration:  InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    prefixStyle: const TextStyle(color: KprimaryColor),
                    //border: OutlineInputBorder(),
                    labelText: 'email',
                    labelStyle: const TextStyle(
                      color: KTextFieldColor,
                    ),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide(color: KprimaryColor)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: pass? _isObsecure: false,
                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      labelText: 'password',
                      labelStyle: const TextStyle(
                        color: KTextFieldColor,
                      ),
                      focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: KprimaryColor)),
                      suffixIcon:pass ? IconButton(
                        onPressed:(){
                          setState(() {
                            _isObsecure=!_isObsecure;
                          });
                        } ,
                        icon: Icon(
                            _isObsecure ? Icons.visibility_off : Icons.visibility,
                          color: KprimaryColor,
                        ),
                      ):null

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
                      'Login',
                      style:textButton.copyWith(color: KwhiteColor),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0,),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: KZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 32 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have ab account?',
                      style: TextStyle(
                        color: KZambeziColor,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                        },
                        child:Text(
                            'SignUp',
                          style: titleText,
                        ))
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
