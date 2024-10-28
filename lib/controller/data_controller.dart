import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evote/controller/login_controller.dart';
import 'package:evote/controller/signup_controller.dart';
import 'package:evote/model/user_model.dart';
import 'package:evote/utils/constant/colors.dart';
import 'package:evote/utils/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';


class UserController extends GetxController {
  // Observables
  var user = UserModel().obs;
  var isLoading = false.obs;

  // Firebase instances
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final User? currentUser = FirebaseAuth.instance.currentUser;


  @override
  void onInit() {
    fetchLoggedInUser();
    super.onInit();
  }


  // Fetch the logged-in user's data
  Future<void> fetchLoggedInUser() async {
    isLoading.value = true;
    try {
      User? currentUser = _auth.currentUser;
      if (currentUser != null) {
        DocumentSnapshot doc = await _firestore.collection('users').doc(currentUser.uid).get();
        user.value = UserModel.fromSnapshot(doc);
      }
    } catch (e) {
      print("Error fetching user data: $e");
    } finally {
      isLoading.value = false;
    }
  }


  // Logout method
  Future<void> logout() async {
    try {
      if (_auth.currentUser != null) {
        await _auth.signOut();

        // Reset all models to their initial empty state
        user.value = UserModel();

        // Clear cache and delete UserController (if needed)
        await Get.delete<UserController>();
        await Get.delete<LoginController>();
        await Get.delete<SignupController>();

        Get.snackbar(
          'Logout Success',
          'You have successfully logged out!',
          colorText: kWhiteColor,
          backgroundColor: kPrimaryColor,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.only(bottom: 30, left: 16, right: 16),
        );

        // Navigate to login page
        Get.offAllNamed(RoutesPath.login);
      } else {
        if (kDebugMode) {
          print("No user is currently signed in");
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error logging out: $e");
      }
      Get.snackbar('Error', 'An error occurred while logging out. Please try again.');
      rethrow;
    }
  }

}