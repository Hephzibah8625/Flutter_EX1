import 'package:flutter/material.dart';
import 'package:cursed_tinder/profile_card.dart';
import 'package:cursed_tinder/profile.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({
    Key? key,
    required this.profile,
    required this.index,
  }) : super(key: key);
  final Profile profile;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: index,
      feedback: Material(
        color: Colors.transparent,
        child: ProfileCard(profile: profile),
      ),
      childWhenDragging: Container(
        color: Colors.transparent,
      ),
      child: ProfileCard(
        profile: profile,
      ),
    );
  }
}
