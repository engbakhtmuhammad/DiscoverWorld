import 'package:flutter/material.dart';
import 'package:tourism/utils/style/style.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  String title;
  DetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        BackImageWidget(height: height, title: title),
        BottomSheetWidget(height: height, title: title),
      ],
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
    required this.height,
    required this.title,
  }) : super(key: key);

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * .6,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(containerRoundCorner),
                topRight: Radius.circular(containerRoundCorner)),
            color: whiteColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleTextStyle(),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20,
                    color: amberColor,
                  ),
                  Text("5 (100+)", style: subTitleTextStyle()),
                  const Spacer(),
                  Text("See All Reviews", style: subTitlePrimaryTextStyle()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Descripption",
                style: titleTextStyle(),
              ),
              Text(
                  "If your Text widget is in the tree of a Scaffold or Material widget you won't need the decoration text style.Also, as others have mentioned, if your Text widget is in the tree of a Scaffold or Material widget you won't need the decoration text style.Also, as others have mentioned, if your Text widget is in the tree of a Scaffold or Material widget you won't need the decoration text style.",
                  style: subTitleTextStyle()),
              Row(
                children: [
                  Text(
                    "\$800/day",
                    style: titlePrimaryTextStyle(),
                  ),
                  const Spacer(),
                  Container(
                    height: containerRoundCorner - 5,
                    width: containerRoundCorner - 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: blackLightColor)),
                    child: Center(
                        child: Text(
                      "-",
                      style: subTitleTextStyle(),
                    )),
                  ),
                  SizedBox(
                    height: containerRoundCorner - 5,
                    width: containerRoundCorner - 5,
                    child: Center(
                        child: Text(
                      "5",
                      style: subTitleTextStyle(),
                    )),
                  ),
                  Container(
                    height: containerRoundCorner - 5,
                    width: containerRoundCorner - 5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      "+",
                      style: subTitleWhiteTextStyle(),
                    )),
                  )
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                child: const Text('Book Now '),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackImageWidget extends StatelessWidget {
  const BackImageWidget({
    Key? key,
    required this.height,
    required this.title,
  }) : super(key: key);

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: height * .5,
        width: double.infinity,
        child: Image(
          image: AssetImage("assets/${title}.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
