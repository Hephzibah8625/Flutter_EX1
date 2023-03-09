import 'package:flutter/material.dart';
import 'package:cursed_tinder/drag_profile_card.dart';
import 'package:cursed_tinder/profile.dart';
import 'package:cursed_tinder/action_button.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CardsStack extends StatefulWidget {
  const CardsStack({
    Key? key,
  }) : super(key: key);

  @override
  State<CardsStack> createState() => CardsStackState();
}

class CardsStackState extends State<CardsStack> {
  List<Profile> draggableItems = [];

  fetchJSON() async {
    Uri url = Uri.https('script.google.com',
        'macros/s/AKfycbwA1KnNrWTuQKS-ENnMrov0fAlDSUfUmOD-yYK9V6fujco9VTibqkP76dRUbkzrt2qenA/exec');
    var response = await http.get(url);

    String stringData = response.body;
    var data = json.decode(stringData);
    var array = data['data'];
    for (int i = 1; i < array.length; i++) {
      draggableItems.add(Profile.fromJson(array[i]));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: <Widget>[
              for (int i = 0; i < draggableItems.length; i++)
                DraggableWidget(
                  profile: draggableItems[i],
                  index: i,
                )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButtonWidget(
                  onPressed: () {
                    setState(() {
                      Profile curr = draggableItems.removeLast();
                      draggableItems.insert(0, curr);
                      draggableItems = List.from(draggableItems);
                    });
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                  iconColor: Colors.red,
                ),
                const SizedBox(width: 20),
                ActionButtonWidget(
                  onPressed: () {
                    setState(() {
                      Profile curr = draggableItems.removeLast();
                      draggableItems.insert(0, curr);
                      draggableItems = List.from(draggableItems);
                    });
                  },
                  iconColor: Colors.green,
                  icon: const Icon(
                    Icons.favorite,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: DragTarget(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                Profile curr = draggableItems.removeLast();
                draggableItems.insert(0, curr);
                draggableItems = List.from(draggableItems);
              });
            },
          ),
        ),
        Positioned(
          right: 0,
          child: DragTarget(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.height * 0.2,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                Profile curr = draggableItems.removeLast();
                draggableItems.insert(0, curr);
                draggableItems = List.from(draggableItems);
              });
            },
          ),
        ),
      ],
    );
  }
}
