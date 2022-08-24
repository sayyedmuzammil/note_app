
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../controller/get_controller.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
    required this.data_control,
    required this.index,
  }) : super(key: key);

  final GetController data_control;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 45.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.accents[index],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data_control.list_title[index],
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 40.w,
                child: Text(
                  data_control.list_description[index],
                  style:
                      const TextStyle(fontSize: 12, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )),
          ],
        ),
      ),
    );
  }
}
