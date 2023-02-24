import 'package:findaway/screen/Home/DetailsPage.dart';
import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CollegeCard extends StatefulWidget {
  var data;
  CollegeCard({super.key, required this.data});

  @override
  State<CollegeCard> createState() => _CollegeCardState();
}

class _CollegeCardState extends State<CollegeCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Get.to(() => DetailsPage(data: widget.data));
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        width: width,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, -1),
                  color: Color.fromARGB(22, 0, 0, 0),
                  blurRadius: 10)
            ]),
        child: Stack(
          children: [
            Column(children: [
              Container(
                width: width,
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.data['img']))),
              ),
              SizedBox(
                width: width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.data['name']
                                        .toString()
                                        .toUpperCase(),
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      width: width - 175,
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        widget.data['desc'],
                                        textAlign: TextAlign.justify,
                                        maxLines: 2,
                                        style: const TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14),
                                      ))
                                ]),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: acentColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(children: [
                                  Text(
                                    widget.data['rating'],
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 18,
                                  )
                                ]),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.all(12),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Text(
                                    " Apply now ",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: secondaryColor,
                      ),
                      SizedBox(
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: width / 1.4,
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Image.asset(
                                          "images/like.png",
                                          width: 25,
                                        )),
                                    SizedBox(
                                      width: width / 1.9,
                                      child: const Text(
                                        "More than 1000+ student have been placed",
                                        overflow: TextOverflow.clip,
                                        maxLines: 1,
                                        style: TextStyle(color: Colors.black26),
                                      ),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 70,
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.black26,
                                  ),
                                  Text(
                                    " 234+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black26),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Icon(
                        Icons.share,
                        size: 20,
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                      child: const Icon(
                        Icons.bookmark_outline,
                        size: 20,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
