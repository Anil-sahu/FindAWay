import 'package:findaway/controller/NormalController.dart';
import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

NormalController nc = NormalController();
categoryBottomSheet(context) {
  return showModalBottomSheet(
      backgroundColor: primaryColor,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sort by",
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {
                            Get.closeAllSnackbars();
                          },
                          icon: const Icon(Icons.close))
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Obx(
                      () => ListTile(
                        title: const Text('Batchelor of Engineering'),
                        leading: Image.asset(
                          "images/graduation.png",
                          width: 20,
                        ),
                        trailing: Radio(
                          activeColor: secondaryColor,
                          value: "Batchelor of Engineering",
                          groupValue: nc.select.value,
                          onChanged: (value) {
                            Get.find<NormalController>().getSelect(value);
                            Get.find<NormalController>().getSelectedList(value);
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => ListTile(
                        title: const Text('Batchelor of Architecture'),
                        leading: Image.asset(
                          "images/sketch.png",
                          width: 20,
                        ),
                        trailing: Radio(
                          activeColor: secondaryColor,
                          value: "Bachelor of Architecture",
                          groupValue: nc.select.value,
                          onChanged: (value) {
                            Get.find<NormalController>().getSelect(value);
                            Get.find<NormalController>().getSelectedList(value);
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => ListTile(
                        title: const Text('Management'),
                        leading: Image.asset(
                          "images/management.png",
                          width: 20,
                        ),
                        trailing: Radio(
                          activeColor: secondaryColor,
                          value: "Management",
                          groupValue: nc.select.value,
                          onChanged: (value) {
                            Get.find<NormalController>().getSelect(value);
                            Get.find<NormalController>().getSelectedList(value);
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => ListTile(
                        title: const Text('Pharmacy'),
                        leading: Image.asset(
                          "images/pharmacy.png",
                          width: 20,
                        ),
                        trailing: Radio(
                          activeColor: secondaryColor,
                          value: "pharmacy",
                          groupValue: nc.select.value,
                          onChanged: (value) {
                            Get.find<NormalController>().getSelect(value);
                            Get.find<NormalController>().getSelectedList(value);
                          },
                        ),
                      ),
                    ),
                    Obx(
                      () => ListTile(
                        title: const Text('Law'),
                        leading: Image.asset(
                          "images/balance.png",
                          width: 20,
                        ),
                        trailing: Radio(
                          activeColor: secondaryColor,
                          value: "Law",
                          groupValue: nc.select.value,
                          onChanged: (value) {
                            Get.find<NormalController>().getSelect(value);
                            Get.find<NormalController>().getSelectedList(value);
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      });
}

// texWidget(context, title, value) {
//   return Container(
//     margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width / 2 - 40,
//           child: Text(
//             title,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: TextStyle(
//                 color: primarColor, fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width / 2 - 40,
//           child: Text(
//             value,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: TextStyle(
//                 color: primarColor, fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//         ),
//       ],
//     ),
//   );
// }
