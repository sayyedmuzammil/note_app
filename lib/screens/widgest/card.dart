
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../controller/get_controller.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
    required this.dataControl,
    required this.index,
  }) : super(key: key);

  final GetController dataControl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 45.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,     
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // showing title 
            Text(
              dataControl.list_title[index],
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // giving a space between title and description
            const SizedBox(
              height: 7,
            ),  
            // showing desctiption
            SizedBox(
                width: 40.w,
                child: Text(
                  dataControl.list_description[index],
                  style:
                      const TextStyle(fontSize: 12, color: Colors.black), 
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2, 
                )),
          ],
        ),
      ),
    );
  }
}
