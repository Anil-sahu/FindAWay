import 'package:findaway/common/variable/DataList.dart';
import 'package:findaway/controller/NormalController.dart';
import 'package:findaway/widget/CategoryCard.dart';
import 'package:findaway/widget/CollegeCard.dart';
import 'package:findaway/widget/TextFields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../constant/colors.constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 135),
          child: Container(
            decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Search in 600 colleges around!",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width - 100,
                      height: 50,
                      child: const TextFields(),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: primaryColor),
                      child: Icon(
                        Icons.mic,
                        color: secondaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              margin: EdgeInsets.only(top: 20),
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: secondaryColor),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("College Name"),
                    );
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2 + 50,
              child: Obx(
                () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: Get.find<NormalController>().data.isNotEmpty
                        ? Get.find<NormalController>().data.length
                        : category.length,
                    itemBuilder: (context, index) {
                      if (Get.find<NormalController>().data.isNotEmpty) {
                        return CollegeCard(
                            data: Get.find<NormalController>().data[index]);
                      } else {
                        return CategoryWidget(
                          category: category[index],
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
