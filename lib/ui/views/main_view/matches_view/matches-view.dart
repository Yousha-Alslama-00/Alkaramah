import 'package:flutter/material.dart';
class MatchesView extends StatefulWidget {
  const MatchesView({super.key});

  @override
  State<MatchesView> createState() => _MatchesViewState();
}

class _MatchesViewState extends State<MatchesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        child: Center(
          child: Text("المباريات"),
        ),
      ),
    );
  }
}
