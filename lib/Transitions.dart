import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slide extends PageRouteBuilder{
  final Widget widget;
  Slide({required this.widget})
      :super(
      transitionDuration: const Duration(milliseconds: 950),
      transitionsBuilder: (context,animation,animationTime,child){
        animation = CurvedAnimation(parent: animation, curve: Curves.bounceOut);

        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },

      pageBuilder: (context,animation,animationTime){
        return  widget;
      }
  );
}

class Slide1 extends PageRouteBuilder{
  final Widget widget;
  Slide1({required this.widget})
      :super(
      transitionDuration: const Duration(milliseconds: 1200),
      transitionsBuilder: (context,animation,animationTime,child){
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },

      pageBuilder: (context,animation,animationTime){
        return  widget;
      }
  );
}

class Bouncy extends PageRouteBuilder{
  final Widget widget;
  Bouncy({required this.widget})
      :super(
      transitionDuration: const Duration(milliseconds: 950),
      transitionsBuilder: (context,animation,animationTime,child){
        animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
        return ScaleTransition(
          alignment: Alignment.center,
          scale: animation,
          child: child,
        );
      },
      pageBuilder: (context,animation,animationTime){
        return widget;
      }
  );
}