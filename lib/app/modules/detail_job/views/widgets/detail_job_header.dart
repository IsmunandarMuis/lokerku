import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lokerku/app/routes/app_pages.dart';
import 'package:lokerku/app/theme.dart';

class DetailJobHeader extends StatelessWidget {
  const DetailJobHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        color: primaryColor,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 5),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: backgroundColor,
              ),
            ),
            SizedBox(width: 70,),
            Text(
              " Detail Pekerjaan",
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
                color: backgroundColor,
              ),
            ),
          ],
        ));
  }
}
