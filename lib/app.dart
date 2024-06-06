import 'package:flutter/material.dart';
import 'package:nutrifast/pages/login_page.dart';

 class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nutrifast",
      routes: {
        '/' : (context) => const LoginPage(),
      },
    );
  }
}