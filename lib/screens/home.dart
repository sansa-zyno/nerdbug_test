import 'package:flutter/material.dart';
import 'package:nerdbug_test/helpers/common.dart';
import 'package:nerdbug_test/helpers/style.dart';
import 'package:nerdbug_test/widgets/custom_text.dart';
import 'package:nerdbug_test/widgets/custom_webview.page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/nerdbug-a0f91.appspot.com/o/IMG_20210504_222757_938.jpg?alt=media&token=64f294a1-fef7-4bf7-9e55-1cfe75ab2b88",
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        CustomText(
                          text: "Sansaliu Hassan",
                          size: 24,
                          weight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "Mobile App Engineer",
                          size: 16,
                        ),
                        InkWell(
                          onTap: () {
                            changeScreen(
                                context,
                                CustomWebviewPage(
                                  selectedUrl: "https://github.com/sansa-zyno",
                                ));
                          },
                          child: Text(
                            "Github Profile",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                color: blue),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Spacer()
                  ],
                ),
                Divider(
                  height: 30,
                ),
                CustomText(
                  text:
                      "A highly skilled Mobile Application Developer with a 3-year track record of excellence in Flutter (Android & iOS) development.",
                  size: 16,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: "Skills",
                  size: 18,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 8,
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Flutter-02569B.png?style=for-the-badge&logo=flutter&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Dart-0175C2.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/firebase-ffca28.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Node.js-339933.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Postman-FF6C37.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Stripe-626CD9.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Android-3DDC84.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Git-F05032.png?style=for-the-badge&logo=dart&logoColor=white"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15, bottom: 8),
                      child: Image.network(
                          "https://img.shields.io/badge/Figma-F24E1E.png?style=for-the-badge&logo=dart&logoColor=white"),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomText(
                  text: "Education",
                  size: 18,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.badge),
                    SizedBox(
                      width: 15,
                    ),
                    CustomText(
                      text: "B.Sc Computer Engineering",
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(Icons.school),
                    SizedBox(
                      width: 15,
                    ),
                    CustomText(
                      text: "Olabisi Onabanjo University",
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Table(
                  border: TableBorder(
                      top: BorderSide(color: Colors.black45),
                      bottom: BorderSide(color: Colors.black45),
                      left: BorderSide(color: Colors.black45),
                      right: BorderSide(color: Colors.black45),
                      verticalInside: BorderSide(color: Colors.black45)),
                  columnWidths: {
                    0: FixedColumnWidth(
                        MediaQuery.of(context).size.width - 110),
                    1: FixedColumnWidth(90)
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: CustomText(
                              text: "Projects",
                              size: 16,
                              weight: FontWeight.bold,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: CustomText(
                              text: "Links",
                              size: 16,
                              weight: FontWeight.bold,
                            )),
                          )
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/antpay.PNG",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                  text: "Antpay",
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                    text:
                                        "A Fintech app. I worked on this app as a Flutter Developer and part of a team of UI/UX and backend developers"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                        text: "February 2023 - April 2023")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.network(
                                  "https://user-images.githubusercontent.com/50345358/161318656-3c9d06f0-8782-4d6f-9d85-af9ef0246766.png",
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl: "https://antpay.cool/",
                                      ));
                                },
                                child: Text(
                                  "Website",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: blue),
                                ),
                              ),
                            ],
                          )
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/ribo.jpg",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                  text: "Realty Invest Network",
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                    text:
                                        "A Real Estate Investment App. I worked on this app as a Flutter Developer and part of a team with Paucha Technology Company"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                        text: "November 2022 - December 2022")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl:
                                            "https://play.google.com/store/apps/details?id=com.realtyinvestnetwork.www",
                                      ));
                                },
                                child: Image.network(
                                  "https://user-images.githubusercontent.com/50345358/161318656-3c9d06f0-8782-4d6f-9d85-af9ef0246766.png",
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl: "https://realtyinvest.ng/",
                                      ));
                                },
                                child: Text(
                                  "Website",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: blue),
                                ),
                              )
                            ],
                          )
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/pbo2.jpeg",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                  text: "PWAN Business Owners Chat App",
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                    text:
                                        "A chat app. I worked on this app as a Flutter Developer and part of a team with Paucha Technology Company"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                        text: "October 2022 - November 2022")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl:
                                            "https://play.google.com/store/apps/details?id=com.pbo.www",
                                      ));
                                },
                                child: Image.network(
                                  "https://user-images.githubusercontent.com/50345358/161318656-3c9d06f0-8782-4d6f-9d85-af9ef0246766.png",
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl: "https://pbonetwork.com/",
                                      ));
                                },
                                child: Text(
                                  "Website",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: blue),
                                ),
                              )
                            ],
                          )
                        ]),
                    TableRow(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black45))),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/5.png",
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                  text: "Empowerment Food Network",
                                  size: 16,
                                  weight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                    text:
                                        "A food networking app. I worked on this app as a Flutter Developer and part of a team with Paucha Technology Company"),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                        text: "September 2022 - October 2022")
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl:
                                            "https://play.google.com/store/apps/details?id=com.paultech.efn",
                                      ));
                                },
                                child: Image.network(
                                  "https://user-images.githubusercontent.com/50345358/161318656-3c9d06f0-8782-4d6f-9d85-af9ef0246766.png",
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  changeScreen(
                                      context,
                                      CustomWebviewPage(
                                        selectedUrl:
                                            "https://empowermentfoodnetwork.com/",
                                      ));
                                },
                                child: Text(
                                  "Website",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 16,
                                      color: blue),
                                ),
                              )
                            ],
                          )
                        ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/qabila.jpg",
                              height: 130,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CustomText(
                              text: "MyQabila",
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            CustomText(
                                text:
                                    "An app that connects people with health challenges to vetted medical professionals. I single handedly completed the app"),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                CustomText(text: "August 2021 - September 2021")
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              changeScreen(
                                  context,
                                  CustomWebviewPage(
                                    selectedUrl:
                                        "https://play.google.com/store/apps/details?id=com.zynotech.myQabila",
                                  ));
                            },
                            child: Image.network(
                              "https://user-images.githubusercontent.com/50345358/161318656-3c9d06f0-8782-4d6f-9d85-af9ef0246766.png",
                              width: 70,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              changeScreen(
                                  context,
                                  CustomWebviewPage(
                                    selectedUrl: "http://myqabilaapp.com/",
                                  ));
                            },
                            child: Text(
                              "Website",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                  color: blue),
                            ),
                          )
                        ],
                      )
                    ])
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
