import 'package:flutter/material.dart';


class ResuableCard extends StatelessWidget {

  final Color color;
  final Widget cardChild ; 

  
 ResuableCard({required this.color ,required this.cardChild});

    

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
              ),
              margin: const EdgeInsets.all(15.0),  
              child:  cardChild ,                       
              );
  }
}


class iconContent extends StatelessWidget {

    iconContent({required this.icon , required this.lable});

    final IconData icon ;  
    final String   lable ; 

  @override
  Widget build(BuildContext context) {
    return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
                 Icon(
                     icon,
                     size: 80.0,
                      ),
                    const  SizedBox(
                        height: 15.0,
                      ),
                      Text( lable ,  style: const TextStyle(fontSize: 18.0 , color: Color(0xFF8D8E98)),)
                         ],
                       );
  }
}