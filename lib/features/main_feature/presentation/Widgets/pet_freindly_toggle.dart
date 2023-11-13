import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PetFriendlyToggle extends StatefulWidget {
  const PetFriendlyToggle({super.key});

  @override
  State<PetFriendlyToggle> createState() => _PetFriendlyToggleState();
}

class _PetFriendlyToggleState extends State<PetFriendlyToggle> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: isSwitch,
      onToggle: (bool value) {
        isSwitch = value;
        setState(() {});
      },
      padding: 5,
      valueFontSize: 25,
      inactiveColor: const Color(0xffE9E9EB),
      width: 70,
      height: 45,
      toggleSize: 35,
    );
  }
}
