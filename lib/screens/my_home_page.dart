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
      appBar: Appbar(title),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,  
          child: GetBuilder<GetController>(builder: (controller) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 90.w,
                  childAspectRatio: 3 / 1.3,
                  crossAxisSpacing: 4.w,
                  mainAxisSpacing: 2.h),
              itemCount: data_control.list_title.length,
              itemBuilder: (context, index) {
                return Card1(data_control: data_control, index: index,);
              },
            );
          }),
        ),
      ),
      floatingActionButton: 
      FloatingActionButton.extended(
        hoverColor: Colors.blueAccent,
        backgroundColor: Colors.blueAccent,
        splashColor: Colors.red,
        onPressed: () {
          settingModalBottomSheet(context);
        },
        tooltip: 'Add a Note',
        heroTag: 'Note',
        label: Row(
          children: const [Icon(Icons.note_add), Text('New Note')],
        ),
      ), 
    );
  }

  
  }

