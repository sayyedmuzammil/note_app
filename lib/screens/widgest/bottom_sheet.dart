import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/get_controller.dart';

void modelBottomSheet(context) {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final dataControl = Get.put(GetController());

  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent, //bottom sheet color is invisible
      context: context,
      elevation: 8.0,
      builder: (BuildContext bc) {
        return Form(
          child: SingleChildScrollView(
            // scroll the bottoom sheet top of the Keyboard
            child: AnimatedPadding(
              padding: MediaQuery.of(context).viewInsets,
              duration: const Duration(milliseconds: 100),
              curve: Curves.decelerate,
              child: Container(
                  height: 37.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: Colors
                        .amberAccent, //bottom sheet color is assigned here
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Add Your Note',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                      const Divider(),
                      // Title textfield
                      TextFormField(
                        maxLength: 20,
                        controller: _titleController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Title',
                        ),
                      ),
                      // description textfield
                      TextFormField(
                        maxLength: 70,
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Description',
                        ),
                      ),
                      // adding button
                      ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blueGrey),
                        onPressed: () {
                          String _title = _titleController.text;
                          String _description = _descriptionController.text;
                          dataControl.list_title.add(_title);
                          dataControl.list_description.add(_description);
                          dataControl.update();
                          _titleController.text = '';
                          _descriptionController.text = '';
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        );
      });
}
