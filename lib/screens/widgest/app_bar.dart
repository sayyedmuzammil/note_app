import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/get_controller.dart';

AppBar Appbar(String title) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff242134),
      title: Center(child: Text(title)),
      actions: [
        Container(
            height: 5,
            width: 20,
            color: Colors.transparent,
            child: FittedBox(
                child: Container(
              child:  Center(
                  child: GetBuilder<GetController>(
                    builder: (controller) {
                      return Text(
                controller.list_title.length.toString(), 
                style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600, 
                ),
              );
                    }
                  )),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.yellow),
            ))),
        const SizedBox(
          width: 10, 
        ),
      ],
    );

}