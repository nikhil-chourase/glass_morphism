import 'package:flutter/material.dart';
import 'package:glass_morphism/constants.dart';
import 'package:glassmorphism/glassmorphism.dart';



class GlassMorphism extends StatefulWidget {

  @override
  State<GlassMorphism> createState() => _GlassMorphismState();
}

class _GlassMorphismState extends State<GlassMorphism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network('https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true',
            fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,

            ),
            SafeArea(
                child: Center(
                  child: GlassmorphicContainer(
                    width: 350, height: 600, borderRadius: 20.0, blur: 20.0,
                    border: 2.0,alignment: Alignment.bottomCenter,
                    linearGradient: LinearGradient(
                        colors: [
                          Color(0xFF00897B).withOpacity(0.1),
                          Color(0xFF7d96ba).withOpacity(0.5),
                        ],
                      stops: [
                        0.1,
                        1,
                      ]
                    ),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF00897B).withOpacity(0.5),
                        Color(0xFF7d96ba).withOpacity(0.5),
                      ],
                    ),
                    child: Column(
                      children: [
                        GlassmorphicContainer(
                          width: 320,  height: 200,
                          borderRadius: 20.0,
                          border: 2.0, blur: 10.0,
                          linearGradient: LinearGradient(
                            colors: [
                              Color(0xFF00897B).withOpacity(0.1),
                              Color(0xFF7d96ba).withOpacity(0.5),
                            ],
                          ),
                          borderGradient: LinearGradient(
                            colors: [
                              Color(0xFF00897B).withOpacity(0.5),
                              Color(0xFF7d96ba).withOpacity(0.5),
                            ],
                          ),
                          child: Center(
                            child: Container(
                              height: 80.0,
                              //child: Image.asset('images/lamborghini.png'),
                            ),
                          ),
                        ),
                        SizedBox(height: 50.0,),

                        GlassmorphicContainer(
                          width: 320 , height: 350, blur: 10.0,
                          borderRadius: 20.0,
                          border: 2.0, alignment: Alignment.topCenter,
                          linearGradient: LinearGradient(
                            colors: [
                              Color(0xFF00897B).withOpacity(0.1),
                              Color(0xFF7d96ba).withOpacity(0.5),
                            ],
                            stops: [0.1, 1,],
                          ),
                          borderGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.center,
                            colors: [
                              Color(0xFF00897B).withOpacity(0.5),
                              Color(0xFF7d96ba).withOpacity(0.5),
                            ],
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                            child: Column(
                              children: [
                                Text('Sign in',
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 20.0,fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 50.0,),
                                Text('GlassMorphic Container on board',
                                 style: TextStyle(
                                   color: Colors.blueGrey,
                                   fontSize: 15.0,
                                   fontWeight: FontWeight.w300,
                                 ),
                                ),
                                SizedBox(height: 30.0,),
                                TextField(
                                  textAlign: TextAlign.center,
                                  decoration: kTextFieldDecoration.copyWith(hintText: 'enter details',fillColor: Colors.blueGrey.shade400),
                                ),
                                SizedBox(height: 10.0,),
                                TextField(
                                  textAlign: TextAlign.center,
                                  decoration: kTextFieldDecoration.copyWith(hintText: 'enter id',fillColor: Colors.blueGrey.shade400),
                                ),
                                SizedBox(height: 25.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FloatingActionButton(
                                        onPressed: (){},
                                      child: Icon(Icons.arrow_forward),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
            ),

          ],
        ),
      ),

    );
  }
}
