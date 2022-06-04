import 'package:flutter/material.dart';
import 'package:re_practive/bodyApp.dart';
import 'ResuableCard.dart';


class ResoultPage extends StatelessWidget {
  const ResoultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCLUATE'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child:Center(
              child: const  Text("Your Resoult" , style: TextStyle(fontSize: 50,  fontWeight: FontWeight.bold),),
            )),
          ),
          Expanded(
            flex: 5,
           child: Container(
                 margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       color: activeCardColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:const [
                  Text('Normal' , style:  TextStyle(color: Color(0xFF24D876),fontSize: 22,fontWeight: FontWeight.bold),),
                  Text('18.3' , style: TextStyle(fontSize: 100 , fontWeight: FontWeight.bold),),
                  Text('your BMI resoult is quite  low , you should eat more' ,
                  textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 22),)
                ],
              ),
           )
          )
        ],
      ),
    );
  }
}