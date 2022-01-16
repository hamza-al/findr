import 'package:findr/widgets/chatIcon.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext ctx, int index) {
            return ChatIcon();
          }),
    );
  }
}
