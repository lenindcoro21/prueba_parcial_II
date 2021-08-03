import'package:flutter/material.dart';
import 'package:prueba/Bloc/BLOC_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:prueba/Screems/googleBotton.dart';
import 'package:prueba/Screems/pantalla2.dart';
import 'package:firebase_auth/firebase_auth.dart';




class Pantalla_1 extends StatelessWidget {

 UserBloc userBloc;
 //final _controllerPassword=TextEditingController();
 //final _controllerUsername=TextEditingController();
 
 @override
 
  Widget build(BuildContext context) {
        
      userBloc = BlocProvider.of(context);
    
    return _controlSession();
    
    
  }
 
 


    Widget _controlSession(){

    return StreamBuilder(

     stream:   userBloc.authStatus,

      builder: (BuildContext context, AsyncSnapshot snapshot){

        if (!snapshot.hasData || snapshot.hasError){

          return loginApp();

        }else {

          return Pantalla2();

        }

      });

    }    

    Widget loginApp()  {
     return Scaffold( 
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        
       
      ),
       body: Container(
         child: ListView(children:<Widget> [

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Welcome to Meditation ",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text(" Care",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container( 
             height: 250.0,
             width: 250.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/mujer1.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),

                      
           ),
           
            

           Container(
               padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              
               child: Text(
               'Lorem ipsum dolor sit amet, consectur '
                'adipiscing elit.Orci orci suscriplt',
                 softWrap: true,
               ),
             ),//Titulo
             Container(
               padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              
               child: Text(
               '',
                 softWrap: true,
               ),
             ),//

          
           
           /*Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.purple,
             child: Text('Get started',style: TextStyle (color: Colors.white)
             ,),),)
             ,

             
           ),*/

           GoogleBotton(textC: "Login with Google", widthC: 80, heightC: 35, onPressed: (){

              userBloc.signIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}"));
            },
            
            )

                            

         ],) 
       )

       
     );
   }
  
 

} 

/*class Pantalla_1 extends StatelessWidget {
  
  UserBloc userBloc;
  final _controllerPassword=TextEditingController();
  final _controllerUsername=TextEditingController();
 

  @override
  Widget build(BuildContext context) {
     
     return Scaffold( 
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        
       
      ),
       body: Container(
         child: ListView(children:<Widget> [

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text("Welcome to Meditation ",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container(height: 40.0,
           margin: EdgeInsets.only(top:15.0),
           child: Text(" Care",textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
           ),

           Container( 
             height: 250.0,
             width: 250.0,
             margin:EdgeInsets.only(top:15.0),
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.contain,
                 image: AssetImage("assets/img/mujer1.png"),

               ),
               borderRadius: BorderRadius.all(Radius.circular(10.0)),
               shape: BoxShape.rectangle,
             ),

                      
           ), 

           Container(
               padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              
               child: Text(
               'Lorem ipsum dolor sit amet, consectur '
                'adipiscing',
                 softWrap: true,
               ),
             ),//Titulo

             Container(
               padding: const EdgeInsets.all(25),
              alignment: Alignment.center,
              
               child: Text(
               ' consectur adipiscing ',
                
                 softWrap: true,
               ),
             ),//Titulo
           
           Container(
             child: Center(child: MaterialButton(minWidth: 100.0,height: 40.0,onPressed: (){},
             color: Colors.purple,
             child: Text('Get started',style: TextStyle (color: Colors.white)
             ,),),)
             ,

             
           ),

           

                  

         ],) 
       )
     );
  }
 

} */



