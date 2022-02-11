import 'package:flutter/material.dart';

import '../shared/theme.dart';

class ItemUser extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final bool isStory;

  const ItemUser({
    Key? key,
    required this.imageUrl,
    this.isOnline = false,
    this.isStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: isStory
          ? Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: cBlueColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(2, 2),
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: cGreenColor,
                      borderRadius: BorderRadius.circular(46 / 2),
                      border: Border.all(
                        width: 2,
                        color: cBackgroundColor,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          imageUrl,
                        ),
                      ),
                    ),
                  ),
                ),
                isOnline
                    ? Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: cGreenColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: cBackgroundColor,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            )
          : Stack(
              children: [
                Image.asset(
                  imageUrl,
                  width: 50,
                  height: 50,
                ),
                isOnline
                    ? Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: cGreenColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 2,
                              color: cBackgroundColor,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
    );
  }
}
