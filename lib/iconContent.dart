import 'package:flutter/material.dart';


class iconContent extends StatelessWidget {
  
  
  final IconData icon ;  
  final String   lable ; 

  iconContent({required this.icon , required this.lable});
   
  @override
  Widget build(BuildContext context) {
     return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
                 Icon(icon,size: 70.0,),
                 const  SizedBox( height: 10.0,),
                 Text( lable ,  style: const TextStyle(fontSize: 18.0 , color: Color(0xFF8D8E98)),)
                  ],);
  }
}