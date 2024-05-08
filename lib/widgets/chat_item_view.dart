
import 'package:flutter/material.dart';
import '../screens/chat/chat_screen.dart';
import '../utils/color_res.dart';
import '../utils/font_res.dart';
import '../utils/image_res.dart';
import 'rounded_container_view.dart';


class ChatItemView extends StatelessWidget {
  const ChatItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainerView(
      margin: const EdgeInsets.symmetric(
          vertical: 5, horizontal: 15
      ),
      constraints: const BoxConstraints(
          minHeight: 45
      ),
      boxDecoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_)=> const ChatScreen())
          );
        },
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 10
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).colorScheme.background,
                        image: DecorationImage(
                            image: AssetImage(
                                ImageRes.bg3
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Bhawana Badgurjar",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Hello Rajesh",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                right: 0, bottom: 0,
                child: Text(
                  "09:50 pm",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
