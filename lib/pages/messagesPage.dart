import 'package:findr/widgets/chatIcon.dart';
import 'package:findr/widgets/textbox.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 15),
          child: CustomText(
              hint: 'Search',
              icon: Icons.search,
              isPassword: false,
              controller: TextEditingController()),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext ctx, int index) {
                return ChatIcon();
              }),
        ),
      ],
    );
  }
}
