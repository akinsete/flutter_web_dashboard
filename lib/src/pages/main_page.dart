import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web_dashboard/src/commons/theme.dart';
import 'package:flutter_web_dashboard/src/widget/card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/chart_card_tile.dart';
import 'package:flutter_web_dashboard/src/widget/comment_widget.dart';
import 'package:flutter_web_dashboard/src/widget/profile_Widget.dart';
import 'package:flutter_web_dashboard/src/widget/project_widget.dart';
import 'package:flutter_web_dashboard/src/widget/quick_contact.dart';
import 'package:flutter_web_dashboard/src/widget/sidebar_menu..dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    print(_media);
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SideBarMenu(),
          Flexible(
            fit: FlexFit.loose,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 55,
                      width: _media.width,
                      child: AppBar(
                        elevation: 4,
                        centerTitle: true,
                        title: Text(
                          "Flutter Dashboard Web",
                        ),
                        backgroundColor: drawerBgColor,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20) +
                            MediaQuery.of(context).padding,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      CardTile(
                                        iconBgColor: Colors.orange,
                                        cardTitle: "Booking",
                                        icon: Icons.flight_takeoff,
                                        subText: "Todays",
                                        mainText: "230",
                                      ),
                                      SizedBox(width: 30),
                                      CardTile(
                                        iconBgColor: Colors.pinkAccent,
                                        cardTitle: "Website Visits",
                                        icon: Icons.show_chart,
                                        subText:
                                            "Tracked from Google Analytics",
                                        mainText: "3.560",
                                      ),
                                      SizedBox(width: 30),
                                      CardTile(
                                        iconBgColor: Colors.green,
                                        cardTitle: "Revenue",
                                        icon: Icons.home,
                                        subText: "Last 24 Hours",
                                        mainText: "2500",
                                      ),
                                      SizedBox(width: 30),
                                      CardTile(
                                        iconBgColor: Colors.lightBlueAccent,
                                        cardTitle: "Followors",
                                        icon: Icons.unfold_less,
                                        subText: "Last 24 Hours",
                                        mainText: "112",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          ChartCardTile(
                                            cardColor: Color(0xFF7560ED),
                                            cardTitle: "Bandwidth usage",
                                            subText: "March 2017",
                                            icon: Icons.pie_chart,
                                            typeText: "50 GB",
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          ChartCardTile(
                                            cardColor: Color(0xFF25C6DA),
                                            cardTitle: "Download count",
                                            subText: "March 2017",
                                            icon: Icons.cloud_upload,
                                            typeText: "35487",
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      ProjectWidget(media: _media),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              QuickContact(media: _media)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CommentWidget(media: _media),
                              SizedBox(
                                width: 20,
                              ),
                              ProfileWidget(media: _media),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
