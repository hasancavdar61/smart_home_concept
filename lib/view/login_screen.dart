import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smart_home_concept/components/social_button.dart';
import 'package:smart_home_concept/view/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image =
        'https://images.unsplash.com/photo-1668670975877-4e95bcb16145?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.colorBurn)),
        ),
        constraints: const BoxConstraints.expand(),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height / 5,
                  ),
                  SocialButton(
                    onPressed: () {},
                    iconData: FontAwesomeIcons.apple,
                    color: Colors.black,
                    bgColor: Colors.white,
                    text: 'Sign in with Apple',
                  ),
                  SocialButton(
                    onPressed: () {},
                    iconData: FontAwesomeIcons.google,
                    color: Colors.white,
                    bgColor: Colors.red,
                    text: 'Sign in with Google',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(
                          child: Divider(
                            indent: 10.0,
                            endIndent: 10.0,
                            height: 1,
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'OR',
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Divider(
                            indent: 10.0,
                            endIndent: 10.0,
                            height: 1,
                            thickness: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: '  Email Address',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: '  Password',
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.08),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF536DED),
                        ),
                      ),
                      onPressed: () => Get.to(
                        const MainScreen(),
                      ),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        "I don't have an account",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
