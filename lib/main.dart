import 'package:expenses/firebase_options.dart';
import 'package:expenses/plugins/firebase_api.dart';
import 'package:expenses/plugins/local_notification.dart';
import 'package:expenses/plugins/local_shared_preferences.dart';
import 'package:expenses/screens/account/addaccount.dart';
import 'package:expenses/screens/auth/login_screen.dart';
import 'package:expenses/screens/splash_screen.dart';
import 'package:expenses/screens/transaction/addtransaction.dart';
import 'package:expenses/widgets/expensebank/Expensecard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.initialize();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform

  );
// await FirebaseApi().initNotifications();
   
    //  LocalStorage();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //  home: LoginScreen(),
      // home: SplashScreen(),
        // home: ExpenseCard(),
      
      home: AddTranscation(),

      // home: AddAccount(),
    );
  }
}

