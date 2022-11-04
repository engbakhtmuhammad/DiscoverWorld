import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/views/detail.dart';

import '../utils/style/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "let's go",
      "Disneyland Paris",
      "Golden Gate Park",
      "Grand Bazaar",
      "Las Vegas Strip",
      "Niagara Falls",
    ];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * .35,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        GestureDetector(
                          onTap: () => Get.to(
                              DetailPage(title: imageList[index].toString())),
                          child: ImageWidget(
                              height: height,
                              width: width,
                              image: imageList[index]),
                        )),
              ),
              const TextWidget(),
              const SizedBox(
                height: 20,
              ),
              GridWidget(imageList: imageList),
            ],
          ),
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      shrinkWrap: true,
      children: List.generate(
        imageList.length,
        (index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/${imageList[index]}.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(imageList[index],
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amberColor,
                        size: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: amberColor,
                        size: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: amberColor,
                        size: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: amberColor,
                        size: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: amberColor,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('4.5',
                          style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: whiteColor,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recommended",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text("View All", style: subTitleTextStyle())
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.image,
  }) : super(key: key);

  final double height;
  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        height: height * .3,
        width: width * .7,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/${image}.jpg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(containerRoundCorner),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
              title: Text(image.toString(),
                  style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amberColor,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: amberColor,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: amberColor,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: amberColor,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: amberColor,
                    size: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('4.5',
                      style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              trailing: CircleAvatar(
                radius: 15,
                backgroundColor: whiteColor,
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
