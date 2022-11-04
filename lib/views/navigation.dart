import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism/utils/style/style.dart';
import 'package:tourism/views/home.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  late PageController _pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.bounceIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Stack(children: [
        Scaffold(
          // Wrap this in a widget and name it customAppBar
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Icon(
              Icons.menu_rounded,
              color: blackColor,
            ),
            title: Text(
              "Discover",
              style: largeBlackTitleTextStyle(),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  backgroundImage:
                      const AssetImage("assets/Disneyland Paris.jpg"),
                ),
              )
            ],
            bottom: TabBar(
              indicatorColor: primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: primaryColor,
              unselectedLabelColor: blackLightColor,
              tabs: [
                Tab(
                    child: Text(
                  "Popular",
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  "Featured",
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text("Most Visited",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.bold))),
                Tab(
                    child: Text("Europe",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          body: PageView(
              controller: _pageController,
              onPageChanged: onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                HomePage(),
                Center(
                  child: Icon(Icons.track_changes),
                ),
                Center(
                  child: Icon(Icons.track_changes),
                ),
                Center(
                  child: Icon(Icons.track_changes),
                )
              ]),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(containerRoundCorner)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: CupertinoTabBar(
                    border: Border(
                        top: BorderSide(
                      color: whiteColor,
                    )),
                    backgroundColor: whiteColor,
                    currentIndex: pageIndex,
                    onTap: onTap,
                    activeColor: primaryColor,
                    // inactiveColor: Colors.grey,
                    items: const [
                      BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.calendar_month_outlined)),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.bookmark_outline)),
                      BottomNavigationBarItem(icon: Icon(Icons.person_outline)),
                    ]),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
