import 'package:flutter/material.dart';
import 'package:flutter_first_launch/model/governante.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            //  ListView.builder(
            //   itemCount: governanteList.length,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       width: 300,
            //       height: 300,
            //       margin: EdgeInsets.all(8),
            //       decoration: BoxDecoration(
            //         color: Colors.amber,
            //       ),
            //       alignment: Alignment.center,
            //       child: Text(
            //         governanteList[index].name,
            //         style: TextStyle(fontSize: 24, color: Colors.black),
            //       ),
            //     );
            //   },
            // )
            GridView.builder(
          itemCount: governanteList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 300,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage(governanteList[index].image ?? 'it.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                governanteList[index].name,
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            );
          },
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        ),
      ),
    );
  }
}
