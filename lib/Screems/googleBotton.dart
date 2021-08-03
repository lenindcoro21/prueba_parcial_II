import 'package:flutter/material.dart';

class GoogleBotton extends StatefulWidget {
 final String textC;
 double heightC = 0.0;
 double widthC = 0.0;
  final VoidCallback onPressed;   


 GoogleBotton({ 
     Key key,
     @required this.textC,
     @required this.widthC,
     @required this.heightC,
     @required this.onPressed

 });
 @override
 State<StatefulWidget> createState() {

     return _GoogleBotton();
 }
   

}


class _GoogleBotton extends State<GoogleBotton>{
    @override

    Widget build(BuildContext context) {
      return InkWell(
          onTap: widget.onPressed,
          child: Container(
          margin: EdgeInsets.only(top:20),
          width: widget.widthC ,
          height: widget.heightC,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
           gradient: LinearGradient(
            colors:   [
                 Color(0xFFD81B60),
                 Color(0xFFD81B60)

              ],
              begin: FractionalOffset(0.7,0.2),
               end : FractionalOffset(3.0,0.6)
            
            ) ),
             
             child: Center (
                 child: Text(widget.textC, style: TextStyle(fontSize: 20, color: Colors.white,), ),

              ),
            

          ),  

        );
    }

}