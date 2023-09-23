import 'package:flutter/material.dart';
import 'result.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int height = 181; // Initial height in centimeters
  int weight = 60;  // Initial weight in kilograms
  String gender = "male";  // Intitial gender
  int age = 25;  // Intitial age
  double bmi = 0;
  String state='';
  String message1='';
  String message2='';

  void calculateBMI() {
    setState(() {
      // Formula for BMI: weight (kg) / (height (m) * height (m))
      bmi = weight / ((height / 100) * (height / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D2136),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF1D2136),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Gender part
          Expanded(
            child: Row(
                children: [
                  // gender part
                  // male
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        gender = "male";
                        setState(() { });
                      },

                      child: Container(
                        margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(gender=="male"?0xff24263B : 0xff323244),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.male , size: 85, color: Colors.white,),
                          Text('MALE' , style: TextStyle(color: Colors.white60,fontSize: 18),)
                        ],
                      ),
                    ),
                    ),
                  ),

                  // female
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        gender = "female";
                        setState(() { });
                      },

                      child: Container(
                        margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(gender=="female"?0xff24263B : 0xff323244),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.female , size: 85, color: Colors.white,),
                          Text('FEMAL' , style: TextStyle(color: Colors.white60,fontSize: 18),)
                        ],
                      ),
                    ),
                    )
                  ),
                ],
              ),
              ),

          // hight part
          Expanded(
            child: Container(
                        margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff323244),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('HEIGHT' , style: TextStyle(color: Colors.white60,fontSize: 18),),
                          Text.rich(TextSpan(text : '$height' ,
                           style: const TextStyle(color: Colors.white,fontSize: 60 ,fontWeight: FontWeight.bold),
                           children: const [
                            TextSpan(
                              text: 'cm',
                              style: TextStyle(color: Colors.white,fontSize: 16 )
                            ),
                           ]
                           ),
                          ),
                          Slider(
                            min: 70,
                            max: 300,
                            activeColor: const Color(0xFFEF083A),
                            inactiveColor: const Color(0xD2DC4A40),
                            value: height.toDouble(), 
                            onChanged: (value){
                              setState(() {
                              height = value.round();
                              });
                            })
                        ],
                      ),
                    )
            ),

          // weight and age part
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // weight
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff323244),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('WEIGHT' , style: TextStyle(color: Colors.white60,fontSize: 18),),
                              Text('$weight' , style: const TextStyle(color: Colors.white,fontSize: 60 ,fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      radius: 26,
                                      child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    }, 
                                  icon: const Icon(Icons.remove ,color: Colors.white,size: 33,)),
                                  ),
                                    ),
                                  
                                  Container(
                                    margin: const EdgeInsets.only(left: 8),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      radius: 26,
                                      child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    }, 
                                  icon: const Icon(Icons.add ,color: Colors.white,size: 33,)),
                                    )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    
                    // age
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff323244),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('AGE' , style: TextStyle(color: Colors.white60,fontSize: 18),),
                              Text('$age' , style: const TextStyle(color: Colors.white,fontSize: 60 , fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      radius: 26,
                                      child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    }, 
                                  icon: const Icon(Icons.remove ,color: Colors.white,size: 33,)),
                                    )
                                  ),
                                  
                                  Container(
                                    margin: const EdgeInsets.only(left: 8),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      radius: 26,
                                      child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    }, 
                                  icon: const Icon(Icons.add ,color: Colors.white,size: 33,)),
                                    )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ),

            // calculate BMI
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(color: Color(0xFFE83D66)),
              child: TextButton(
                onPressed: (){
                  calculateBMI();
                  if(bmi <18.5) {
                    state='Under Weight';
                    message1='You have an underweight body weight';
                    message2='Go to Gym!';
                  }else if(bmi >=18.5 && bmi <=24.9){
                    state='Normal';
                    message1='You have a normal body weight';
                    message2='Good job!';
                  }else if(bmi >=25 && bmi <=29.9){
                    state='Over Weight';
                    message1='You have an overweight body weight';
                    message2='Go to Gym!';
                  }else if(bmi >=30 && bmi <=34.9){
                    state='Obesity Class I';
                    message1='You have an Obesity Class I body weight';
                    message2='Do sport';
                  }else if(bmi >=35 && bmi <=39.9){
                    state='Obesity Class II';
                    message1='You have an Obesity Class I body weight';
                    message2='Do sport and Run';
                  }else{
                    state='Obesity Class III';
                    message1='You have an Obesity Class III body weight';
                    message2='See Nutritionist';
                  }
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>result(bmi: bmi,state: state, message1: message1, message2: message2,)));
                }, 
                child: const Text('CALCULATE' , style: TextStyle(color: Colors.white,fontSize: 24),)
                )
            )
        ],
      )
    );
  }
}
