import 'package:flutter/material.dart';
import 'package:video_call_app/views/home_screen.dart';
import 'package:video_call_app/views/video_call_screen.dart';
import 'config/app_setup.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppSetup().setupAll();
  //runApp(MaterialApp(home: MyApp()));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Call',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeScreen(),           // Default route
        '/video_call': (context) => const VideoCallScreen(),// Route to settings screen
      },
    );
  }
}