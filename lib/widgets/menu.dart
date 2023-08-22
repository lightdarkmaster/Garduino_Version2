// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:garduino_dashboard/Responsive.dart';
import 'package:garduino_dashboard/main.dart';
import 'package:garduino_dashboard/model/menu_modal.dart';
import 'package:flutter_svg/svg.dart';

import 'controller_page.dart';
import 'aboutUs.dart';

class Menu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const Menu({super.key, required this.scaffoldKey});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<MenuModel> menu = [
    MenuModel(icon: 'assets/svg/home.svg', title: "Dashboard"),
    MenuModel(icon: 'assets/svg/remote.svg', title: "Controller"),
    MenuModel(icon: 'assets/svg/share-2.svg', title: "Connect"),
    MenuModel(icon: 'assets/svg/bell.svg', title: "Notification"),
    MenuModel(icon: 'assets/svg/history.svg', title: "History"),
    MenuModel(icon: 'assets/svg/setting.svg', title: "Settings"),
    MenuModel(icon: 'assets/svg/profile.svg', title: "About Us"),
    MenuModel(icon: 'assets/svg/signout.svg', title: "Exit"),
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey[800]!,
              width: 1,
            ),
          ),
          color: const Color(0xFF171821)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: Responsive.isMobile(context) ? 40 : 80,
            ),
            for (var i = 0; i < menu.length; i++)
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                  color: selected == i
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selected = i;
                    });
                    widget.scaffoldKey.currentState!.closeDrawer();

                    // Navigate to the corresponding page
                    switch (i) {
                      case 0: // Dashboard
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const MyApp()),
                        );
                        break;
                      case 1: // Controller
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ControllerPage()),
                        );
                        break;
                      // Add similar cases for other menu items
                      case 2: //Connect
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ControllerPage()),
                        );
                        break;
                      case 3: //Notification
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ControllerPage()),
                        );
                        break;
                      case 4: //History
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ControllerPage()),
                        );
                        break;
                      case 5: //Settings
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const ControllerPage()),
                        );
                        break;
                      case 6: //About Us
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const AboutUsPage()),
                        );
                        break;
                      case 7: //Exit
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const AboutUsPage()),
                        );
                        break;
                    }
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 7),
                        child: SvgPicture.asset(
                          menu[i].icon,
                          color: selected == i ? Colors.black : Colors.grey,
                        ),
                      ),
                      Text(
                        menu[i].title,
                        style: TextStyle(
                            fontSize: 16,
                            color: selected == i ? Colors.black : Colors.grey,
                            fontWeight: selected == i
                                ? FontWeight.w600
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              ),
          ],
        )),
      ),
    );
  }
}
