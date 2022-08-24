// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/screens/widgest/bottom_sheet.dart';
import 'package:note_app/screens/widgest/card.dart';
import 'package:sizer/sizer.dart';
import 'package:note_app/controller/get_controller.dart';

import 'widgest/app_bar.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  var data_control = Get.put(GetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color(0xff242134),
      //appbar extracted
      appBar: appBar(title),
      //body started here
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GetBuilder<GetController>(builder: (controller) {
            //adding state management in card
            return controller.list_title.isEmpty //checking the list is empty 
                ? const Center(
                    child: Text(
                      "Please Add some Notes",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ))
                : GridView.builder(//if list is not empty showing this grid
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 90.w,
                        childAspectRatio: 3 / 1.3,
                        crossAxisSpacing: 4.w,
                        mainAxisSpacing: 2.h),
                    itemCount: data_control.list_title.length,
                    itemBuilder: (context, index) {
                      // return a card(Each note as a card)
                      return Card1(
                        dataControl: data_control,
                        index: index,
                      );
                    },
                  );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        //extended floating action button used for adding label in button
        hoverColor: Colors.blueAccent,
        backgroundColor: Colors.blueAccent,
        splashColor: Colors.red,
        onPressed: () {
          modelBottomSheet(context); //pop upping bottom sheet
        },
        //adding two item icon and text in floating action button
        label: Row(
          children: const [Icon(Icons.note_add), Text('New Note')],
        ),
      ),
    );
  }
}
