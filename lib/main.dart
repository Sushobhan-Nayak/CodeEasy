// ignore_for_file: prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hello_world/login/googlesignin.dart';
import 'package:hello_world/login/login.dart';
import 'package:hello_world/screens/navigation.dart';
import 'package:hello_world/theme/dark.dart';
import 'package:hello_world/theme/light.dart';
import 'package:hello_world/theme/themeprovider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );
  
  // SystemChrome.setEnabledSystemUIMode();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => GoogleSignInProvider()),
          ChangeNotifierProvider(
            create: (context) => ThemeProvider(),
            builder: (context, child) {
              final themeProvider = Provider.of<ThemeProvider>(context);
              return MaterialApp(
                themeMode: themeProvider.themeMode,
                theme: lighttheme,
                darkTheme: darktheme,
                debugShowCheckedModeBanner: false,
                home: MyHomePage(),
              );
            },
          )
        ],
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return NavigationScreen();
          } else if (snapshot.hasError) {
            return const Center(child: Text('Something has went wrong.'));
          } else {
            return const LoginPage();
          }
        });
  }
}
