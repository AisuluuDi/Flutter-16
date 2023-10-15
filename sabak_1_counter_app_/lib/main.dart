import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterApp(),
    );
  }
}
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: const Text("Тапшырма 1"),
          ),
 ),
 body: Center(
   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
      width: 325,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey,
      ), 
      child: Center(
        child: Text(
           "Сан:$count",
           style: TextStyle(
            color: Colors.black, 
            fontSize: 18,
            fontWeight: FontWeight.w500,
        ),
        ),
          ),
      ),
      const SizedBox(
        height: 41,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          InkWell(
            onTap: () {
              setState(() {
                count--;
                });
              
            },
            child: Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff0d65ae),
                  ),
                  child:const Icon(
            Icons.remove,color: Colors.white,
            ),
                ),
          ),
      const SizedBox(width: 20,),
       InkWell(
        onTap: (){
           setState(() {
            count++;
             });
        },
         child: Container(
          width: 80,
          height: 50,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff0d65ae),
             ),
             child: const Icon(
          Icons.add,color:Colors.white
          ),
             ),
       ),
      ],
      ),
     ],
     ),
 ),
);
  }
}
