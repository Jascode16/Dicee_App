import 'dart:math';
import 'package:flutter/material.dart';

// void main() {
//
//   runApp(
//     MaterialApp(
//       title: "Stateful App Example",
//       home: FavouriteCity(),
//     )
//   );
// }
//
// class FavouriteCity extends StatefulWidget {
//   const FavouriteCity({super.key});
//
//   @override
//   State<FavouriteCity> createState() => _FavouriteCityState();
// }
//
// class _FavouriteCityState extends State<FavouriteCity> {
//
//   String nameCity = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stateful App Example"),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             onSubmitted: (String userInput){
//               setState ((){
//                 nameCity = userInput;
//               }
//               );
//             },
//           ),
//           SizedBox(height: 20,),
//           Text(
//               "Your favorite city is $nameCity",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
//           ),
//         ],
//       ),
//     );
//   }
// }

void main() {

  runApp(
    MaterialApp(
      title: "Dice App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dicee"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});


  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//this is the to change both at a tap
// class _DicePageState extends State<DicePage> {
//
//   int leftDiceNumber = 3;
//   int rightDiceNumber = 2;
//
//   void rollDice() {
//     setState(() {
//       leftDiceNumber = Random().nextInt(6) + 1;
//       rightDiceNumber = Random().nextInt(6) + 1;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: rollDice,
//       child: Center(
//         child: Row(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Image.asset('images/dice$leftDiceNumber.png'),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Image.asset('images/dice$rightDiceNumber.png'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

