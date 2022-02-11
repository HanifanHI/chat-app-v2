import 'package:chat_app_v2/shared/theme.dart';
import 'package:chat_app_v2/widgets/item_messages.dart';
import 'package:chat_app_v2/widgets/item_user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // * HEADER
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/img_user_1.png',
                        width: 40,
                        height: 40,
                      ),
                      Image.asset(
                        'assets/ic_menu.png',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
              // * ONLINE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Online',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xff2F3142),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Text(
                        '4',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: semiBold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // * ONLINE STORY
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // * MY STORY
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/img_user_1.png',
                                width: 50,
                                height: 50,
                              ),
                              Transform.translate(
                                offset: const Offset(18, 40),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    color: cBlueColor,
                                    border: Border.all(
                                      color: cBackgroundColor,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: cWhiteColor,
                                    size: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // * USER ONLINE
                        const ItemUser(
                          imageUrl: 'assets/img_user_2.png',
                          isOnline: true,
                        ),
                        const ItemUser(
                          imageUrl: 'assets/img_user_3.png',
                          isOnline: true,
                        ),
                        const ItemUser(
                          imageUrl: 'assets/img_user_4.png',
                          isOnline: true,
                        ),
                        const ItemUser(
                          imageUrl: 'assets/img_user_5.png',
                          isOnline: true,
                          isStory: true,
                        ),
                        const ItemUser(
                          imageUrl: 'assets/img_user_6.png',
                          isStory: true,
                        ),
                        const ItemUser(
                          imageUrl: 'assets/img_user_7.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              // * MESSAGE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Messages',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Image.asset(
                      'assets/ic_search.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // * CONTENT MESSAGES
              const ItemMessages(
                imageUrl: 'assets/img_user_2.png',
                name: 'Keazia De Rezia',
                message: 'Sent a Photo',
                time: 'Now',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_3.png',
                name: 'Peter Park',
                message: 'Oke, sure',
                time: '11:2 PM',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_4.png',
                name: 'Loila Bae',
                message: 'Don\'t forget group',
                time: '10:6 PM',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_5.png',
                name: 'Ben Markz',
                message: 'Check you Email!',
                time: '9:11 PM',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_6.png',
                name: 'Alice March',
                message: 'No. Sorry',
                time: 'Yesterday',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_7.png',
                name: 'Josh George',
                message: 'Sent Sticker',
                time: 'Yesterday',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_5.png',
                name: 'Ben Markz',
                message: 'Check you Email!',
                time: '9:11 PM',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_2.png',
                name: 'Keazia De Rezia',
                message: 'Sent a Photo',
                time: 'Now',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_3.png',
                name: 'Peter Park',
                message: 'Oke, sure',
                time: '11:2 PM',
              ),
              const ItemMessages(
                imageUrl: 'assets/img_user_4.png',
                name: 'Loila Bae',
                message: 'Don\'t forget group',
                time: '10:6 PM',
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 80,
          color: const Color(0xff2F3142),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ic_chats.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'chats',
                    style: purpleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/ic_calls.png',
                        width: 24,
                        height: 24,
                      ),
                      Transform.translate(
                        offset: const Offset(-4, 4),
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: cRedColor,
                            border: Border.all(
                              width: 2,
                              color: cBackgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'chats',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
