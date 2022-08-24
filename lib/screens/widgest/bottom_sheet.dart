
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/get_controller.dart';

void settingModalBottomSheet(context) {
    final _titleController = TextEditingController();
  final _descriptionController = TextEditingController(); 
  final data_control = Get.put(GetController());

    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        elevation: 8.0,
        builder: (BuildContext bc) {
          return Form(
            child: SingleChildScrollView(
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
                      color: Colors.limeAccent,
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
                              ),
                            ),
                          ),
                        ),
                        const Divider(),
                        TextFormField(
                          maxLength: 20,
                          controller: _titleController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Title',
                          ),
                        ),
                        TextFormField(
                          maxLength: 70,
                          controller: _descriptionController,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Description',
                          ),
                        ),
                        // SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {
                            String _title = _titleController.text;
                            String _description = _descriptionController.text;
                            data_control.list_title.add(_title);
                            data_control.list_description.add(_description);
                            data_control.update();
                            _titleController.text='';
                            _descriptionController.text='';
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.add),
                        ),
                      ],
                    )),
              ),
            ),
          );
        });
  }