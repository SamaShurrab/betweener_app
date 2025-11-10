import 'package:betweener_app/core/utils/app_colors.dart';
import 'package:betweener_app/core/utils/app_images.dart';
import 'package:betweener_app/view/active%20sharing/active_sharing_screen.dart';
import 'package:betweener_app/view/home/home_screen.dart';
import 'package:betweener_app/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const id = "/MainScreen";
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 1;

  List<Widget> screens = [ActiveSharingScreen(), HomeScreen(), ProfileScreen()];

  void onTaped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget buildBottomNavigationBar(int currentIndex) {
    return SizedBox(
      height: 115,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 22, bottom: 40, right: 22),
        child: Card(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                customBorder: CircleBorder(),
                onTap: () {
                  onTaped(0);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    currentIndex != 0
                        ? AppImages.activeSharingzunSelected
                        : AppImages.activeSharingSelected,
                    width: currentIndex != 0 ? 30 : 32,
                    height: currentIndex != 0 ? 30 : 32,
                  ),
                ),
              ),
              InkWell(
                customBorder: CircleBorder(),
                onTap: () {
                  onTaped(1);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    currentIndex == 1 ? Icons.home : Icons.home_outlined,
                    size: currentIndex == 1 ? 32 : 30,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                customBorder: CircleBorder(),
                onTap: () {
                  onTaped(2);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    currentIndex != 2 ? Icons.person_outline : Icons.person,
                    size: currentIndex == 2 ? 32 : 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(currentIndex),
      body: screens[currentIndex],
    );
  }
}

// BottomNavigationBar(
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//           if (currentIndex == index) return;
//           if (index == 0) {
//             Navigator.of(context).pushNamed(ActiveSharingScreen.id);
//           } else if (index == 1) {
//             Navigator.of(context).pushNamed(HomeScreen.id);
//           } else if (index == 2) {
//             Navigator.of(context).pushNamed(ProfileScreen.id);
//           }
//         },
//         currentIndex: currentIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               currentIndex == 0
//                   ? AppImages.activeSharingSelected
//                   : AppImages.activeSharingzunSelected,
//               width: 30,
//               height: 30,
//             ),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: currentIndex == 1
//                 ? Icon(Icons.home)
//                 : Icon(Icons.home_outlined),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: currentIndex == 2
//                 ? Icon(Icons.person)
//                 : Icon(Icons.person_outline),
//             label: "",
//           ),
//         ],
//       )
