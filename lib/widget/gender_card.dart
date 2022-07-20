import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderCard extends StatefulWidget {
  const GenderCard({Key? key, required this.onChange}) : super(key: key);
  final Function(int) onChange;
  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  int _gender = 0;

  final ChoiceChip3DStyle selectedStyle = ChoiceChip3DStyle(
    topColor: Colors.grey[300]!,
    backColor: Colors.grey,
    borderRadius: BorderRadius.circular(20),
  );
  final ChoiceChip3DStyle unselectedStyle = ChoiceChip3DStyle(
    topColor: Colors.white,
    backColor: Colors.grey[300]!,
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChoiceChip3D(
            border: Border.all(color: Colors.grey),
            style: _gender == 1 ? selectedStyle : unselectedStyle,
            onSelected: () {
              setState(() {
                _gender = 1;
              });
              widget.onChange(_gender);
            },
            onUnSelected: () {
              setState(() {
                _gender = 0;
              });
            },
            selected: _gender == 1,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/boy.png',
                  height: 60,
                  width: 50,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Male'),
                // Image.asset('assets/images/girl.png')
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ChoiceChip3D(
            border: Border.all(color: Colors.grey),
            style: _gender == 2 ? selectedStyle : unselectedStyle,
            onSelected: () {
              setState(() {
                _gender = 2;
              });
              widget.onChange(_gender);
            },
            onUnSelected: () {
              setState(() {
                _gender = 0;
              });
            },
            selected: _gender == 2,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/girl.png',
                  width: 50,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('Female'),
                // Image.asset('assets/images/girl.png')
              ],
            ),
          )
        ],
      ),
    );
  }
}
