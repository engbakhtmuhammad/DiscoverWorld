import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/utils/style/style.dart';
import 'package:tourism/views/navigation.dart';

class LetsGoPage extends StatelessWidget {
  const LetsGoPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // wrap this in a widget and name it image
          ImageWidget(height: height),
          // wrap this in a widget and name it body
          const BodyWidget()
        ],
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Let's Travel \nThe World with Us",
              style: largeBlackTitleTextStyle(),
            ),
          ),
          Text(
            "Enjoy your Vacations with amazing sightseeing over the world.\nEnjoy the best Experience with us",
            style: subTitleTextStyle(),
          ),
          // Wrap this in a widget and name it button
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: 130,
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.symmetric(horizontal: 20)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(containerRoundCorner),
                      ))),
                  onPressed: () => Get.to(const NavigationPage()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Let's Go!"),
                      Icon(Icons.arrow_forward)
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height * .6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(containerRoundCorner),
            bottomLeft: Radius.circular(containerRoundCorner),
          ),
          image: const DecorationImage(
              image: AssetImage("assets/let's go.jpg"), fit: BoxFit.cover)),
    );
  }
}
