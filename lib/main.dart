// A

// 1 - write function to calculate factorial in dart?

// 2 - write name of widget that organize element in vertical shape?

// 3 - solve this issue in screen?

import 'package:flutter/material.dart';
import 'package:flutter_first_launch/second.dart';

void main() {
  runApp(EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Text("hello ism 3 "),
//           Flexible(
//             child: Container(
//               margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Colors.blueGrey,
//                 border: Border.all(color: Colors.cyanAccent, width: 3),
//               ),
//               child: Image.asset(
//                 'assets/images/it.jpg',
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Colors.blueGrey,
//                 border: Border.all(color: Colors.cyanAccent, width: 3),
//               ),
//               child: Image.asset(
//                 'assets/images/it.jpg',
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(20),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Colors.blueGrey,
//                 border: Border.all(color: Colors.cyanAccent, width: 3),
//               ),
//               child: Image.asset(
//                 'assets/images/it.jpg',
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ]),
//       ),
//     );
//   }
// }

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SecondScreen()));
    });
    print(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                maxRadius: 250,
                backgroundImage: AssetImage(
                  'assets/images/it.jpg',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hello in our \n journey",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ));
  }
}
