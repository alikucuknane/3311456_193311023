// import 'dart:async';
// import 'package:dots_e_commerce/pages/signin_page.dart';
// import 'package:flutter/material.dart';

// /*
// Burası daha yapılmadı
// */

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3), () {
//       // Açılış yükleme ekranı bittikten sonra ana sayfaya geçiş yapabilirsiniz.
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Sign_in_Page()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircularProgressIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }
