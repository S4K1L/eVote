import 'package:evote/firebase_options.dart';
import 'package:evote/utils/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/user_panel/login/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'eVote',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesPath.login,
      getPages: pages,
    );
  }
}
