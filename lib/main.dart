import 'package:bmi_calculator/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Bmi(),
    );
    
  }
}
class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

double result = 0.0;
String title="";
String descrip = "";
Color colorTitle = Colors.green;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

   void calculate(){
    
    var inFeet = double.parse( heightController.text);
    var inMeters = inFeet * 0.3048;


  result =  double.parse( weightController.text )/ (inMeters * inMeters);

  if(result<=18){
 title="UnderWeight";
  descrip="The Body is UnderWeight";
  colorTitle = Colors.red;
  }
 
  

  if(result>18 && result<24){
title="Normal";
  descrip="The Body is Normal";
  colorTitle = Colors.green;
  }
    
  

  if(result>=24){
title="Unfit";
  descrip="The Body is OverWeight"; 
  colorTitle = Colors.amber;
  
  }
  
  
  setState(() { });

}





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
           
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.12,
                 // width: double.infinity,
                  color: Color(0xff1A1F38),
                  child: Center(
                    child: Text("BMI calculator",style: TextStyle(
                      color: Colors.white,fontSize: 32,fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
            
            
                  Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.85,
                 decoration: BoxDecoration(
                   color: Color(0xff1A1F38),
                   borderRadius: BorderRadius.circular(10)
                 ),
                  child: Column(
                    children: [
                       Padding(
                               padding: const EdgeInsets.only(left: 30,top: 20),
                               child: Row(
                                children: [
                                  Text("HIEGHT",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500,color: Colors.white),)
                                ],
                               ),
                             ),  
                            Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            child: SizedBox(
                              width: 270,
                              height: 43,
                              child: TextFormField(
                                controller: heightController,
                                keyboardType: TextInputType.number,
                                
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius:
                                                         BorderRadius.circular(50),
                                                      borderSide: BorderSide(
                                                        color: Colors.green,
                                                        width: 2,
                                                      )),
                                  
                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                         BorderRadius.circular(50),
                                                      borderSide: BorderSide(
                                                        color: Colors.green,
                                                        width: 2,
                                                      )),
                                  
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                 
                               
                                  
                                ),
                              ),
                            ),
                          ),
            
                            Padding(
                               padding: const EdgeInsets.only(left: 30,top: 10),
                               child: Row(
                                children: [
                                  Text("WEIGHT",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500,color: Colors.white),)
                                ],
                               ),
                             ),  
                            Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            child: SizedBox(
                              width: 270,
                              height: 43,
                              child: TextFormField(
                                controller: weightController,
                                 keyboardType: TextInputType.number,
                                
                                
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                                      borderRadius:
                                                         BorderRadius.circular(50),
                                                      borderSide: BorderSide(
                                                        color: Colors.green,
                                                        width: 2,
                                                      )),
                                  
                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(50),
                                                      borderSide: BorderSide(
                                                        color: Colors.green,
                                                        width: 2,
                                                      )),
                                  
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 10,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                 
                               
                                  
                                ),
                              ),
                            ),
                          ),
            
                      
                            
                    ],
                  ),
                  
                ),
                SizedBox(height: 20,),
            
                  InkWell(
                    onTap:(){
                      calculate();
                      print("$result");
                    } ,
                    child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffF10606),
                            ),
                            height: MediaQuery.of(context).size.height*0.07,
                              width: MediaQuery.of(context).size.width*0.8,
                            child: Center(child: Text("CALCULATE",style: TextStyle(fontSize: 17,color: Colors.white),)),
                           ),
                  ),
            
                         SizedBox(
                          height: 20,
                         ),
            
                  Container(
                   height: MediaQuery.of(context).size.height*0.35,
                width: MediaQuery.of(context).size.width*0.85,
                 decoration: BoxDecoration(
                   color: Color(0xff1A1F38),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Text("Your Result is :",style: TextStyle(fontSize: 17,color: Colors.white)),
                          InkWell(
                             onTap: (){
                              clear();


                             },
                            
                            
                            child: Image.asset("assets/loading.png",height: 30,width: 30,color: Colors.white,))
                          
                        ],
            
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                 
                 
                    Text("$title",style: TextStyle(
                      color: colorTitle,fontSize: 25,fontWeight: FontWeight.w500
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                       Text("${result.toStringAsFixed(2)}",style: TextStyle(
                        
                      color: Colors.white,fontSize: 80,fontWeight: FontWeight.bold
                    ),),
                     SizedBox(
                      height: 10,
                    ),
                    Text("$descrip",style: TextStyle(
                      color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold

                    ),),
                    
                    
                  ],
                 )
                  ),
            
              ],
            ),
          
          ),
        ),
      ),
    );
    
  }

  clear(){
    heightController.clear();
    weightController.clear();


    setState(() {
  result = 0.0;
  title='';
  descrip = '';
      
    });

    
//   
 

  }



}
