import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lokerku/app/modules/recommendation_page/views/widgets/recommendation_header.dart';
import 'package:lokerku/app/modules/recommendation_page/views/widgets/recommendation_job_card.dart';
import 'package:lokerku/app/routes/app_pages.dart';
import 'package:lokerku/app/theme.dart';

import '../controllers/recommendation_page_controller.dart';

class RecommendationPageView extends GetView<RecommendationPageController> {
  var c = Get.put(RecommendationPageController());
  @override
  Widget build(BuildContext context) {
    var list_of_job = [
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
      Toko(
          namaToko: "Bumdesa Tuah Baru",
          lowongan: "Kasir",
          alamat: "Selatbaru",
          gambar: "assets/gambar1.png",
          tanggal: "28 Oktober 2021"),
    ];
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 25 / 38,
      padding: EdgeInsets.all(10),
      children: list_of_job.map((e) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.DETAIL_JOB);
          },
          child: RecommendationJobCard(
            namaToko: e.namaToko,
            gambar: e.gambar,
            lowongan: e.lowongan,
            alamat: e.alamat,
            tanggal: e.tanggal,
          ),
        );
      }).toList(),
    );

    // return Column(
    //   children: [
    //     // RecommendationHeader(),
    //     Container(
    //         margin: EdgeInsets.only(top: 200),
    //         child: GridView.builder(
    //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2,
    //             crossAxisSpacing: 16,
    //             mainAxisSpacing: 16,
    //           ),
    //           itemCount: list_of_job.length,
    //           itemBuilder: (context, index) {
    //             return Text("data");
    //           },
    //         ))
    //   ],
    // );
  }
}

class Toko {
  String? namaToko, lowongan, alamat, gambar, tanggal;
  Toko({this.namaToko, this.lowongan, this.alamat, this.gambar, this.tanggal});
}
