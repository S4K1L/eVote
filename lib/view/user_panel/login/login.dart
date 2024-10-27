import 'package:evote/utils/component/custom_button.dart';
import 'package:evote/utils/component/custom_text_botton.dart';
import 'package:evote/utils/component/input_form.dart';
import 'package:evote/utils/constant/colors.dart';
import 'package:evote/utils/constant/constant.dart';
import 'package:evote/view/user_panel/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  logo,
                  height: MediaQuery.of(context).size.height / 2.2,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                        color: Colors.blue.withOpacity(0.3),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.arrow_drop_down,
                          color: kPrimaryColor,
                          size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding * 2, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const InputForm(
                                title: 'Enter your email',
                                icon: Icons.email,
                              ),
                              sizeBox,
                              const InputForm(
                                title: 'Enter your email',
                                icon: Icons.password,
                              ),
                              const SizedBox(height: kDefaultPadding*2,),
                              CustomButton(
                                title: 'Login',
                                onPress: () {},
                              ),
                              sizeBox,
                              CustomTextButton(firstText: "Don't have an account?  ", secondText: 'Register here', onPress: () {
                                Get.to(()=> const Register(),transition: Transition.leftToRight);
                              },)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 50,
              right: -60,
              child: Image.asset(plane),
            ),
          ],
        ),
      ),
    );
  }
}
