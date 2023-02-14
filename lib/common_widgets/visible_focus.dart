import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class EnsureVisibleWhenFocused extends StatefulWidget {
  const EnsureVisibleWhenFocused({
    Key? key,
    required this.child,
    required this.focusNode,
    this.curve: Curves.linear,
    this.duration: Duration.zero,
  }) : super(key: key);


  final FocusNode focusNode;


  final Widget child;

  final Curve curve;

  final Duration duration;

  @override
  _EnsureVisibleWhenFocusedState createState() => _EnsureVisibleWhenFocusedState();
}


class _EnsureVisibleWhenFocusedState extends State<EnsureVisibleWhenFocused> with WidgetsBindingObserver  {

  @override
  void initState(){
    super.initState();
    widget.focusNode.addListener(_ensureVisible);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose(){
    WidgetsBinding.instance.removeObserver(this);
    widget.focusNode.removeListener(_ensureVisible);
    super.dispose();
  }


  @override
  void didChangeMetrics(){
    if (widget.focusNode.hasFocus){
      _ensureVisible();
    }
  }


  Future<void> _keyboardToggled() async {
    if (mounted){
      EdgeInsets edgeInsets = MediaQuery.of(context).viewInsets;
      while (mounted && MediaQuery.of(context).viewInsets == edgeInsets) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }

    return;
  }

  Future<Null> _ensureVisible() async {
    // Wait for the keyboard to come into view
    await Future.any([Future.delayed(const Duration(milliseconds: 100)), _keyboardToggled()]);

    // No need to go any further if the node has not the focus
    if (!widget.focusNode.hasFocus){
      return;
    }

    // Find the object which has the focus
    final RenderObject? object = context.findRenderObject();
    final RenderAbstractViewport? viewport = RenderAbstractViewport.of(object);

    // If we are not working in a Scrollable, skip this routine
    if (viewport == null) {
      return;
    }


    ScrollableState? scrollableState = Scrollable.of(context);
    assert(scrollableState != null);


    ScrollPosition position = scrollableState!.position;
    double alignment;

    if (position.pixels > viewport.getOffsetToReveal(object!, 0.0).offset) {
      alignment = 0;
    } else if (position.pixels < viewport.getOffsetToReveal(object, 1).offset){
      alignment = 1;
    } else {
      return;
    }

    position.ensureVisible(
      object,
      alignment: alignment,
      duration: widget.duration,
      curve: widget.curve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
