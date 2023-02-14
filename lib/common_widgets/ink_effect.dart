import 'package:flutter/material.dart';



class InkK extends StatelessWidget {
  final Widget? child;
  final Color? splash;
  final double? radius;
  final VoidCallback? onTap;
  final String? tooltip;
  final bool? center;

  const InkK({super.key,
    this.child,
    this.onTap,
   this.radius,
    this.splash,
    this.tooltip = "Button",
   this.center = false,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: tooltip,
      child: center! ? centered() : stack(),
    );
  }

  Widget centered() {
    return Center(
      child: stack(),
    );
  }

  Widget stack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        primaryChild(),
        inkEffect(),
      ],
    );
  }

  Widget primaryChild() {
    return ClipRRect(
      borderRadius: borderRadius,
      child: child,
    );
  }

  Widget inkEffect() {
    return Positioned.fill(
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: InkWell(
            borderRadius: borderRadius,
            highlightColor: highlightColor,
            splashColor: splashColor,
            onTap: onTap ?? printFn,
          ),
        ));
  }

  BorderRadius get borderRadius => BorderRadius.circular(radius ?? 0);
  Color get highlightColor => (splash ?? Colors.white).withOpacity(0.35);
  Color get splashColor => (splash ?? Colors.white).withOpacity(0.25);
  static void printFn(){}
}