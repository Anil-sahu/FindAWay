import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  var data;
  DetailsPage({super.key, required this.data});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var imgList = [
    "https://images.pexels.com/photos/271619/pexels-photo-271619.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://st.depositphotos.com/1164721/2078/i/450/depositphotos_20784379-stock-photo-interior-of-modern-comfortable-hotel.jpg"
        "https://img.freepik.com/free-photo/interior-modern-comfortable-hotel-room_1232-1822.jpg",
    "https://media-cdn.tripadvisor.com/media/photo-m/1280/14/53/ea/9e/g-hotel.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2021/9/VB/VO/FU/9337401/a-c-rooms-hotels-accommodation-service-500x500.JPG"
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: secondaryColor,
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_outline))
                  ],
                  expandedHeight: 310.0,
                  floating: false,
                  pinned: true,
                  title: Text(widget.data['name'],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(widget.data['img']))),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: primaryColor,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 150 - 8.54,
                                  padding: const EdgeInsets.all(20),
                                  color: primaryColor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.data['name'],
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: secondaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12),
                                        child: Text(
                                          widget.data['desc'],
                                          maxLines: 3,
                                          overflow: TextOverflow.clip,
                                          style: const TextStyle(
                                              color: Colors.black45,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // width: 40,
                                // height: 60,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: acentColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(children: [
                                  Text(
                                    widget.data['rating'],
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                  )
                                ]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size(10, 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: primaryColor,
                      child: TabBar(
                        isScrollable: true,
                        labelColor: secondaryColor,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: secondaryColor,
                        indicatorWeight: 5,
                        tabs: const [
                          Tab(text: "About Colleg"),
                          Tab(text: "Hostel Facilty"),
                          Tab(
                            text: "Q & A",
                          ),
                          Tab(text: "Event"),
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Container(
                  color: primaryColor,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.all(20),
                            child: Text(
                              widget.data['desc'],
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Text(
                            "Location",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 200,
                          margin: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://snazzy-maps-cdn.azureedge.net/assets/1243-xxxxxxxxxxx.png?v=20220106114208"))),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Text(
                            "Student Review",
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width - 110,
                                child: ListView.builder(
                                    itemCount: 10,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: 50,
                                        height: 50,
                                        margin:
                                            const EdgeInsets.only(right: 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: secondaryColor,
                                            image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                    "https://media.istockphoto.com/id/1351445530/photo/african-student-sitting-in-classroom.jpg?s=612x612&w=0&k=20&c=1ICaZ03iFLzDmxfBkfDkmBGSgj1SDEpsM3eSDgB1KBk="))),
                                      );
                                    }),
                              ),
                              Container(
                                width: 60,
                                height: 50,
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black12,
                                ),
                                child: const Text("12+"),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: primaryColor,
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 5,
                                    // spreadRadius: 5,
                                    color: Colors.black12)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 12),
                                child: Text(
                                  "Student Name",
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. like Aldus PageMaker including versions of Lorem Ipsum.",
                                style: TextStyle(color: Colors.black45),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.amber,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  border: Border.all(
                                    width: 1,
                                    color: secondaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(children: [
                                Icon(
                                  Icons.king_bed_rounded,
                                  size: 20,
                                  color: primaryColor,
                                ),
                                const Text(
                                  " 1 ",
                                  style: TextStyle(color: Colors.white),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    width: 1,
                                    color: secondaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(children: [
                                Icon(
                                  Icons.king_bed_rounded,
                                  size: 20,
                                  color: secondaryColor,
                                ),
                                Text(
                                  " 2 ",
                                  style: TextStyle(color: secondaryColor),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    width: 1,
                                    color: secondaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(children: [
                                Icon(
                                  Icons.king_bed_rounded,
                                  size: 20,
                                  color: secondaryColor,
                                ),
                                Text(
                                  " 3 ",
                                  style: TextStyle(color: secondaryColor),
                                )
                              ]),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  border: Border.all(
                                    width: 1,
                                    color: secondaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(children: [
                                Icon(
                                  Icons.king_bed_rounded,
                                  size: 20,
                                  color: secondaryColor,
                                ),
                                Text(
                                  " 4 ",
                                  style: TextStyle(color: secondaryColor),
                                )
                              ]),
                            )
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 150,
                          margin: const EdgeInsets.all(20),
                          child: ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: Container(
                                    width: 150,
                                    height: 150,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                NetworkImage(imgList[index]))),
                                  ),
                                );
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              4,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.circle,
                                      size: selected == index ? 12 : 10,
                                      color: selected == index
                                          ? secondaryColor
                                          : Colors.black38,
                                    ),
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.data['name'],
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                // width: 40,
                                // height: 60,
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: acentColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(children: [
                                  Text(
                                    widget.data['rating'],
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 20,
                                  )
                                ]),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.black26,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              const Text(
                                "Lorem Ipsum is simply",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            widget.data['desc'],
                            style: const TextStyle(
                                color: Colors.black38,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Text(
                          "Facilities",
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Image.asset(
                                "images/school.png",
                                width: 20,
                              ),
                            ),
                            Text(
                              "Colleg in 400mtrs",
                              style: TextStyle(color: secondaryColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Image.asset(
                                "images/bathtub.png",
                                width: 20,
                              ),
                            ),
                            Text(
                              "Colleg in 400mtrs",
                              style: TextStyle(color: secondaryColor),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(),
                Container()
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: secondaryColor,
          onPressed: () {},
          label: Container(
              width: MediaQuery.of(context).size.width - 70,
              alignment: Alignment.center,
              child: Text("Apply Now"))),
    );
  }
}
