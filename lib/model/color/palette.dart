import 'package:flutter/material.dart';

class Palette {
  static MaterialColor iris = const MaterialColor( 
    /// 0% comes in here, this will be color picked
    /// if no shade is selected when defining a Color
    /// property which doesn’t require a swatch.
    0xff613DC1,  
    <int, Color>{ 
      50:   Color.fromRGBO(97, 61, 193, 0.1),//10% 
      100:  Color.fromRGBO(97, 61, 193, 0.2),//20% 
      200:  Color.fromRGBO(97, 61, 193, 0.3),//30% 
      300:  Color.fromRGBO(97, 61, 193, 0.4),//40% 
      400:  Color.fromRGBO(97, 61, 193, 0.5),//50% 
      500:  Color.fromRGBO(97, 61, 193, 0.6),//60% 
      600:  Color.fromRGBO(97, 61, 193, 0.7),//70% 
      700:  Color.fromRGBO(97, 61, 193, 0.8),//80% 
      800:  Color.fromRGBO(97, 61, 193, 0.9),//90% 
      900:  Color.fromRGBO(97, 61, 193, 1.0),//100% 
    }, 
  ); 
}