import 'package:evote/utils/component/custom_button.dart';
import 'package:evote/utils/component/custom_text_botton.dart';
import 'package:evote/utils/component/input_form.dart';
import 'package:evote/utils/constant/colors.dart';
import 'package:evote/utils/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColor
            ),
            child: IconButton(
              onPressed: (){
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new,color: kWhiteColor,size: 28,),
            )
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  logo,
                  height: MediaQuery.of(context).size.height / 2.8,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
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
                                title: 'Enter your name',
                                icon: Icons.person,
                              ),
                              sizeBox,
                              const InputForm(
                                title: 'Enter your phone',
                                icon: Icons.phone,
                              ),
                              sizeBox,
                              const InputForm(
                                title: 'Enter your email',
                                icon: Icons.email,
                              ),
                              sizeBox,
                              const InputForm(
                                title: 'Enter your email',
                                icon: Icons.password,
                              ),
                              sizeBox,
                              CustomButton(
                                title: 'Register',
                                onPress: () {},
                              ),
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
              left: 0,
              child: Image.asset(redPlane),
            ),
          ],
        ),
      ),
    );
  }
}
