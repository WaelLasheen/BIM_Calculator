import 'package:flutter/material.dart';

// ignore: camel_case_types
class result extends StatelessWidget{
  final bmi;
  final state;
  final message1;
  final message2;

  const result({super.key, required this.bmi, required this.state, required this.message1, required this.message2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2136),
      // appBar: AppBar(
      //   title: const Text('Your Result' , style: TextStyle( color: Colors.white,fontSize: 48 ,fontWeight: FontWeight.bold),),
      //   backgroundColor: const Color(0xFF1D2136),
      //   elevation: 0,
      // ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: const Text('Your Result' , style: TextStyle( color: Colors.white,fontSize: 48 ,fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15),
                decoration:  BoxDecoration(color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
                ),
                // margin: const EdgeInsets.only(bottom: 55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(child: SizedBox()),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Text('$state',style: TextStyle(fontSize: 24,color:(state=='Normal'?Colors.green:Colors.red ),fontWeight: FontWeight.bold),))
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Text('${bmi.toStringAsFixed(1)}' ,style: const TextStyle(fontSize: 70,color: Colors.white,fontWeight: FontWeight.bold))
                        )
                    ),
                    Expanded(
                      child:Container(
                        // margin: const EdgeInsets.only(top:55),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('$message1' ,style: const TextStyle(fontSize: 18,color: Colors.white)),
                            Text('$message2' ,style: const TextStyle(fontSize: 18,color: Colors.white)),
                          ],
                        ),
                      )
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(color: Color(0xFFE83D66)),
              child: TextButton(
                onPressed: (){
                  Navigator. of(context). pop(); 
                },
                 child: const Text('RE-CALCULATE',
                 style: TextStyle(color: Colors.white,fontSize: 22)
                )
              )
            )
          ],
        ),
      ),
    );
  }
}