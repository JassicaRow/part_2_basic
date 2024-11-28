import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("위젯을 비율로 배치하기."),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ExampleStateless(),
        ExampleStateful(),
      ],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  int index = 0;

  void _incrementIndex() {
    setState(() {
      if (index == 5) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: _incrementIndex,
        child: Container(
          color: Colors.blue.withOpacity(index/5),
          child: Center(
            child: Text(
              "$index",
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.center,
//             child: Align(
//               alignment: Alignment.center,
//               child: Container(
//                 width: 300,
//                 height: 300,
//                 decoration: BoxDecoration(
//                     color: Colors.limeAccent,
//                     borderRadius: BorderRadius.circular(150)),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                   color: Colors.red, borderRadius: BorderRadius.circular(140)),
//             ),
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: Text(
//               "count 0",
//               style: TextStyle(color: Colors.white, fontSize: 34),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(width: 110,
//         height: 110,
//         color: Colors.blue,
//         margin: const EdgeInsets.symmetric(vertical: 10),),
//         Container(width: 110,
//           height: 110,
//           color: Colors.blue,
//           margin: const EdgeInsets.symmetric(vertical: 10),),
//         Container(width: 110,
//           height: 110,
//           color: Colors.blue,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   width: 55,
//                   height: 55,
//                   color: Colors.yellowAccent,
//                   margin: const EdgeInsets.symmetric(vertical: 5)
//                 ),
//                 Container(
//                     width: 55,
//                     height: 55,
//                     color: Colors.yellowAccent,
//                     margin: const EdgeInsets.symmetric(vertical: 5)
//                 ),
//                 Container(
//                     width: 55,
//                     height: 55,
//                     color: Colors.yellowAccent,
//                     margin: const EdgeInsets.symmetric(vertical: 5)
//                 ),
//               ],
//             ),
//           ),
//           margin: const EdgeInsets.symmetric(vertical: 10),),
//         Container(width: 110,
//           height: 110,
//           color: Colors.blue,
//           margin: const EdgeInsets.symmetric(vertical: 10),),
//         Container(width: 110,
//           height: 110,
//           color: Colors.blue,
//           margin: const EdgeInsets.symmetric(vertical: 10),),
//
//       ],
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       // width: double.infinity,
//       scrollDirection: Axis.horizontal,
//
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//
//           Container(
//             width: 110,
//             height: 110,
//             color: Colors.grey,
//             margin: EdgeInsets.symmetric(horizontal: 8),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomContainer extends StatelessWidget {
//   const CustomContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//           padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
//           // margin: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
//
//           width: 300,
//           height: 300,
//           // color: Colors.blue.shade50,
//
//           decoration: BoxDecoration(
//               color: Colors.blueGrey,
//               border: Border.all(color: Colors.lightGreenAccent, width: 7, style: BorderStyle.solid,
//               ),
//               borderRadius: BorderRadius.circular(25),
//               boxShadow:[
//                 BoxShadow(color: Colors.black.withOpacity(0.5), offset: Offset(6,6), blurRadius: 10, spreadRadius: 10)
//               ],
//               ),
//           child: Center(
//               child: Container(
//                   color: Colors.deepOrange, child: Text("hello container")))),
//     );
//   }
// }
