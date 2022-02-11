import 'package:chat_app_v2/pages/home_page.dart';
import 'package:flutter/material.dart';

import '/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBackgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * ILLUSTRATION
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Image.asset(
                'assets/img_illustration.png',
                height: 285,
                width: double.infinity,
              ),
            ),
            // * TITLE
            Text(
              'instant messaging,\nsimple  and personal',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'start your new journey in the Chat Us',
              style: greyTextStyle,
            ),
            const SizedBox(
              height: 25,
            ),
            // * BUTTON LET'S BEGIN
            GestureDetector(
              onTap: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              }), (route) => false),
              child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 55,
                decoration: BoxDecoration(
                  color: cPurpleColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Let’s Begin',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
