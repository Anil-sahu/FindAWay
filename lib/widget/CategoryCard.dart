import 'package:findaway/common/variable/DataList.dart';
import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:findaway/widget/bottomSheet.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  var category;
  CategoryWidget({super.key, required this.category});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        categoryBottomSheet(context);
      },
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: width,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.category['img']))),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: width,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [Color.fromARGB(255, 0, 0, 0), Colors.transparent]),
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.category['title'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: width / 2 + 50,
                    child: Text(
                      widget.category['desc'],
                      maxLines: 4,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                // offset: Offset(2, 2),
                                color: primaryColor,
                                blurRadius: 2)
                          ],
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              topLeft: Radius.circular(12)),
                          color: primaryColor),
                      child: RichText(
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.ltr,
                        softWrap: true,
                        maxLines: 1,
                        textScaleFactor: 1,
                        text: TextSpan(
                            text: "+ ${widget.category['leng']}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                            children: [
                              TextSpan(
                                  text: " ${widget.category['name']} ",
                                  style: const TextStyle(
                                      color: Colors.black38, fontSize: 10))
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
