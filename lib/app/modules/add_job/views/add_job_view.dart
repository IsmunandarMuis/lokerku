import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lokerku/app/modules/add_job/views/widgets/add_job_header.dart';
import 'package:lokerku/app/theme.dart';

import '../controllers/add_job_controller.dart';
import 'widgets/add_job_content.dart';

class AddJobView extends GetView<AddJobController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            AddJobHeader(),
            SizedBox(
              height: 30,
            ),
            AddJobContent(),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: defaultMargin, left: defaultMargin, right: defaultMargin, bottom: 40),
          decoration: BoxDecoration(
            color: Color(0xffF9F9F9),
            // color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Batal",
                    style: primaryTextStyle.copyWith(fontSize: 20, color: primaryColor),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                     color: secondaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "Batal",
                    style: primaryTextStyle.copyWith(fontSize: 20, color: backgroundColor),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
