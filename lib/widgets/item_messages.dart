import 'package:flutter/material.dart';
import '../shared/theme.dart';

class ItemMessages extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;

  const ItemMessages({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        title: Text(
          name,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          message,
          style: greyTextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          time,
          style: greyTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
