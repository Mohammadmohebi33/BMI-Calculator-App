import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
 
    final Color color;
    final Widget cardChild ;  
  
   ResuableCard({required this.color ,required this.cardChild});
   
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: cardChild,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
              ),


    );
  }
}