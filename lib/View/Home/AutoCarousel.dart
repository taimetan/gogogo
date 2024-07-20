import 'dart:async';

import 'package:flutter/material.dart';

class AutoSwipeCarousel extends StatefulWidget {
  final List<Widget> children; // List of widgets to display in the carousel
  final Duration swipeDelay; // Delay between automatic swipes

  const AutoSwipeCarousel({Key? key, required this.children, this.swipeDelay = const Duration(seconds: 2)}) : super(key: key);

  @override
  State<AutoSwipeCarousel> createState() => _AutoSwipeCarouselState();
}

class _AutoSwipeCarouselState extends State<AutoSwipeCarousel> {
  int _currentPage = 0;
  Timer? _autoSwipeTimer;

  @override
  void initState() {
    super.initState();
    _autoSwipeTimer = Timer.periodic(widget.swipeDelay, (_) => _next());
  }

  @override
  void dispose() {
    _autoSwipeTimer?.cancel();
    super.dispose();
  }

  void _next() {
    setState(() {
      _currentPage = (_currentPage + 1) % widget.children.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: widget.children,
      onPageChanged: (index) => setState(() => _currentPage = index),
    );
  }
}
