import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bid_to_buy/Screens/Authentication/profile_screen.dart';
import 'package:bid_to_buy/Screens/Client%20Management/empty_client_list.dart';
import 'package:bid_to_buy/Screens/Employee%20management/management_screen.dart';
import 'package:bid_to_buy/Screens/Expense%20Management/management_screen.dart';
import 'package:bid_to_buy/Screens/File%20Management/empty_file_management.dart';
import 'package:bid_to_buy/Screens/Holiday%20Management/empty_holiday.dart';
import 'package:bid_to_buy/Screens/Home/pricing_screen.dart';
import 'package:bid_to_buy/Screens/Home/privacy_policy.dart';
import 'package:bid_to_buy/Screens/Home/terms_of_service.dart';
import 'package:bid_to_buy/Screens/NOC%20Certificate/empty_certificate.dart';
import 'package:bid_to_buy/Screens/Notice%20Board/empty_notice_board.dart';
import 'package:bid_to_buy/Screens/Payroll%20Management/management_screen.dart';
import 'package:bid_to_buy/Screens/Settings/settings_screen.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_plus/share_plus.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../../constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = false;
   int _currentIndex = 0;
  late PageController _pageController;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   backgroundColor: kMainColor,
      //   elevation: 0.0,
      //   titleSpacing: 0.0,
      //   iconTheme: const IconThemeData(color: mainBlue),
      //   title: Text(
      //     'Bidding Platform',
      //     maxLines: 2,
      //     style: kTextStyle.copyWith(
      //         color: mainBlue, fontFamily: "Fira", fontSize: 16.0),
      //   ),
      //   actions: const [
      //     Image(
      //       image: AssetImage('images/notificationicon.png'),
      //     ),
      //   ],
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       Container(
      //         height: context.height() / 3,
      //         decoration: const BoxDecoration(
      //           borderRadius: BorderRadius.only(
      //               bottomLeft: Radius.circular(30.0),
      //               bottomRight: Radius.circular(30.0)),
      //           color: kMainColor,
      //         ),
      //         child: Column(
      //           children: [
      //             Container(
      //               height: context.height() / 4,
      //               decoration: const BoxDecoration(
      //                 borderRadius: BorderRadius.only(
      //                     bottomLeft: Radius.circular(30.0),
      //                     bottomRight: Radius.circular(30.0)),
      //                 color: Colors.white,
      //               ),
      //               child: Center(
      //                 child: Column(
      //                   children: [
      //                     const SizedBox(
      //                       height: 10.0,
      //                     ),
      //                     const CircleAvatar(
      //                       radius: 60.0,
      //                       backgroundColor: kMainColor,
      //                       backgroundImage: AssetImage(
      //                         'images/emp1.png',
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       height: 10.0,
      //                     ),
      //                     Text(
      //                       'Sahidul Islam',
      //                       style: kTextStyle.copyWith(
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     Text(
      //                       'Admin',
      //                       style: kTextStyle.copyWith(color: kGreyTextColor),
      //                     ),
      //                   ],
      //                 ).onTap(() {
      //                   const ProfileScreen().launch(context);
      //                 }),
      //               ),
      //             ),
      //             const SizedBox(
      //               height: 10.0,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //               children: [
      //                 Column(
      //                   children: [
      //                     Text(
      //                       '27',
      //                       style: kTextStyle.copyWith(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     Text(
      //                       'Employees',
      //                       style: kTextStyle.copyWith(color: Colors.white),
      //                     ),
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Text(
      //                       '12',
      //                       style: kTextStyle.copyWith(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     Text(
      //                       'Client',
      //                       style: kTextStyle.copyWith(color: Colors.white),
      //                     ),
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Text(
      //                       '50',
      //                       style: kTextStyle.copyWith(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     Text(
      //                       'Total Files',
      //                       style: kTextStyle.copyWith(color: Colors.white),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 20.0,
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const SettingScree().launch(context);
      //         },
      //         leading: const Icon(
      //           Icons.settings,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Settings',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const PricingScreen().launch(context);
      //         },
      //         leading: const Icon(
      //           FontAwesomeIcons.medal,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Premium Version   (Pro)',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const EmptyHoliday().launch(context);
      //         },
      //         leading: const Icon(
      //           FontAwesomeIcons.coffee,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Holiday',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const EmptyHoliday().launch(context);
      //         },
      //         leading: const Icon(
      //           FontAwesomeIcons.lock,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'App Lock',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: Transform.scale(
      //           scale: 0.6,
      //           child: CupertinoSwitch(
      //             value: isChecked,
      //             thumbColor: kGreyTextColor,
      //             onChanged: (bool value) {
      //               setState(() {
      //                 isChecked = value;
      //               });
      //             },
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           setState(() {
      //             Share.share('check out This Awesome HRM');
      //           });
      //         },
      //         leading: const Icon(
      //           FontAwesomeIcons.userFriends,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Share With Friends',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const TermsOfServices().launch(context);
      //         },
      //         leading: const Icon(
      //           FontAwesomeIcons.infoCircle,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Terms of Services',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           const PrivacyPolicy().launch(context);
      //         },
      //         leading: const Icon(
      //           Icons.dangerous_sharp,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Privacy Policy',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //       ListTile(
      //         onTap: () {},
      //         leading: const Icon(
      //           FontAwesomeIcons.signOutAlt,
      //           color: kGreyTextColor,
      //         ),
      //         title: Text(
      //           'Logout',
      //           style: kTextStyle.copyWith(color: kGreyTextColor),
      //         ),
      //         trailing: const Icon(
      //           Icons.arrow_forward_ios,
      //           color: kGreyTextColor,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:0, horizontal: 32),
            child: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 10),
                    hintText: "Search Categories",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade200, width: 0.0)
                    ),
                    prefixIcon: const Icon(Icons.search)),
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text("Categories",style: TextStyle(color: mainBlue),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child:
                                  Icon(Icons.electric_bike_rounded, size: 30),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text("Bike",style:TextStyle(color: kGreyTextColor)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child: Icon(Icons.laptop_mac, size: 30),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("Laptop",style:TextStyle(color: kGreyTextColor)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child: Icon(Icons.bed, size: 30),
                            ),
                          ),
                        ),
                         const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text("Bed",style:TextStyle(color: kGreyTextColor)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child: Icon(Icons.card_travel_rounded, size: 30),
                            ),
                          ),
                        ),
                         const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text("Travel",style:TextStyle(color: kGreyTextColor)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child: Icon(Icons.now_widgets_rounded, size: 30),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text("Widgets",style:TextStyle(color: kGreyTextColor)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [
                                  mainBlue,
                                  mainBlue,
                                  dimDarkBlue,
                                ],
                              )),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 30.0,
                            child: Container(
                              child: Icon(Icons.sync_disabled_sharp, size: 30),
                            ),
                          ),
                        ),
                         const Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text("Sharp",style:TextStyle(color: kGreyTextColor),
                        ))
                      ],
                    ),
                 
                  ],
                )
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
            inactiveColor: dimDarkBlue,
            activeColor: mainBlue
          ),
          BottomNavyBarItem(
            title: Text('My Bids'),
            icon: Icon(Icons.apps),
            inactiveColor: dimDarkBlue,
            activeColor: mainBlue
          ),
          BottomNavyBarItem(
            title: Text('Cart'),
            icon: Icon(Icons.shopping_cart_sharp),
            inactiveColor: dimDarkBlue,
            activeColor: mainBlue
          ),
          BottomNavyBarItem(
            title: Text('More'),
            icon: Icon(Icons.more_horiz_outlined),
            inactiveColor: dimDarkBlue,
            activeColor: mainBlue
          ),
          BottomNavyBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings),
            inactiveColor: dimDarkBlue,
            activeColor: mainBlue
          ),
        ],
      ),

    );
  }
}
