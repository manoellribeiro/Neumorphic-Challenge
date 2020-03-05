import 'package:flutter/material.dart';

class NeumorphicContainer extends StatefulWidget {
  final Widget child;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  final double padding;
  final double borderRadius;
  final double height;
  final double width;

  const NeumorphicContainer({Key key, this.child, this.bevel = 5, this.blurOffset, this.color, this.padding, this.borderRadius, this.height, this.width}) : super(key: key); 

  @override
  _NeumorphicContainerState createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event){
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event){
    setState(() {
      _isPressed = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Theme.of(context).backgroundColor;
    return Listener(
        onPointerDown: _onPointerDown,
        onPointerUp: _onPointerUp,
        child: AnimatedContainer(
          width: widget.width,
          height: widget.height,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          color: Colors.white,
          boxShadow: _isPressed ? null :[
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 10,
              offset: widget.blurOffset,
              color: Color.lerp(Colors.blueGrey.shade100, Colors.white, .3)
            ),
            BoxShadow(
              offset: -Offset(1,1),
              color: Colors.white
            ),
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 5,
              offset: -Offset(4,2),
              color: Color.lerp(Colors.white, Colors.black, .02)
            ),
          ]   
            ),
            padding:  EdgeInsets.all(widget.padding),
        child: widget.child),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount){
    return Color.lerp(this, another, amount);
  }
}
