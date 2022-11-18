import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:smart_home_concept/components/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const NetworkImage(
                'https://images.unsplash.com/photo-1668670975877-4e95bcb16145?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1364&q=80',
              ),
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
                    height: Get.height / 8,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
