import 'package:flutter/material.dart';
import 'ResuableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


 const Color  activeCardColor  =  Color(0xFF1D1E33) ; 
 const Color  inactiveCardColor = Color(0xFF111328) ;
 const Color  bottomContainerColor = Color(0xFFEB1555);


 enum Gender {
  male , 
  female, 
}


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
    
   Gender? selectedGender ; 
   int height = 180 ;
   int weight = 60 ;  
   int age = 20 ; 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
       appBar: AppBar(
         centerTitle: true,
         title: const Text('BMI CALCLUATE'),
         backgroundColor: const Color(0xFF0A0E21),
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           
           Expanded(child: Row(
             children:  [
                     Expanded(
                       child: GestureDetector(
                         onTap: () {
                               setState(() {
                               selectedGender =  Gender.male ; 
                               });                           
                         },
                         child:ResuableCard(
                           color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                           cardChild: iconContent(
                              icon: FontAwesomeIcons.mars,
                              lable: "MALE",)),),
                       ),
                       
                      Expanded(
                        child:GestureDetector(
                           onTap: () {
                             setState(() {
                              selectedGender = Gender.female ; 
                             });
                           },
                            child:  ResuableCard(
                                   color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor, 
                                   cardChild:  iconContent(
                                       icon: FontAwesomeIcons.venus,
                                       lable: "FEMALE",))
                       )
                      )
                     ],)),


           Expanded(
             child: ResuableCard(
               color: inactiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  <Widget>[
                    const Text('HEIGHT' , style: TextStyle(fontSize: 18.0 , color: Color(0xFF8D8E98)),),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children:  <Widget>[
                         Text(height.toString() , style: const TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)
                        ],
                     ),
                     Slider(
                       value: height.toDouble(),
                       activeColor: const Color(0xFFEB1555),
                       inactiveColor:const Color(0xFF8D8E98),
                       min: 120.0,
                       max: 220.0,
                       onChanged: (double newValue) {
                         setState(() {
                           height = newValue.round() ;
                         });
                       },
                       )
                 ],
               )
                  )
                  ),



           Expanded(
             child: Row(
                  children:  [
                      Expanded(
                         child: ResuableCard(
                            color: activeCardColor,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              const  Text('weight', style: TextStyle(fontSize: 18.0 , color: Color(0xFF8D8E98)),),
                              Text(weight.toString() , style: const TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  <Widget>[
                                  FloatingActionButton(
                                    backgroundColor: const Color(0xFF4C4F5E),
                                    onPressed: () {
                                      setState(() {
                                        weight-- ;
                                      });
                                    },
                                    child: const Icon(FontAwesomeIcons.minus , color: Colors.white,),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FloatingActionButton(
                                     backgroundColor: const Color(0xFF4C4F5E),
                                    onPressed: () {
                                      setState(() {
                                        weight++;  
                                      });
                                    },
                                    child: const Icon(FontAwesomeIcons.plus , color: Colors.white,),
                                    )
                                ],
                              ) 
                              ])
                              )
                              ),
                            
                      Expanded(
                         child: ResuableCard( 
                            color: activeCardColor,
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              const  Text('Age', style: TextStyle(fontSize: 18.0 , color: Color(0xFF8D8E98)),),
                              Text(age.toString() , style: const TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  <Widget>[
                                  FloatingActionButton(
                                    backgroundColor: const Color(0xFF4C4F5E),
                                    onPressed: () {
                                      setState(() {
                                        age-- ;
                                      });
                                    },
                                    child: const Icon(FontAwesomeIcons.minus , color: Colors.white,),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  FloatingActionButton(
                                     backgroundColor: const Color(0xFF4C4F5E),
                                    onPressed: () {
                                      setState(() {
                                        age++;  
                                      });
                                    },
                                    child: const Icon(FontAwesomeIcons.plus , color: Colors.white,),
                                    )
                                ],
                              ) 
                              ])
                                 )
                                 )]
                                 ),
              )
              ]
              )
              ); 
  }
}



 