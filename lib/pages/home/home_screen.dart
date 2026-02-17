import 'package:fl_audio_book/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../localization/localization_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final popularlist = [
    {
      "image": "assets/home/mostPopular1.png",
      "name": "The Foundling",
      "rate": 3.5,
      "view": "2.5m",
      "author": "By Ann Leary"
    },
    {
      "image": "assets/home/mostPopular2.png",
      "name": "Tales & Time",
      "rate": 2.5,
      "view": "3.5m",
      "author": "By G.Bailey"
    },
    {
      "image": "assets/home/mostPopular3.png",
      "name": "Dear Universe",
      "rate": 5.5,
      "view": "4.5m",
      "author": "By Sarah prout"
    },
    {
      "image": "assets/home/mostPopular4.png",
      "name": "The Way Life Should ",
      "rate": 2.5,
      "view": "1.5m",
      "author": "By Baker kline"
    },
    {
      "image": "assets/home/mostPopular5.png",
      "name": "Marrying Winterborne",
      "rate": 2.5,
      "view": "5.5m",
      "author": "G Bailey"
    },
    {
      "image": "assets/home/mostPopular6.png",
      "name": "Meditation",
      "rate": 4.5,
      "view": "9.5m",
      "author": "By Gabrielle Bernstein"
    },
  ];
  final recommendedlist = [
    {
      "image": "assets/home/recommended1.png",
      "name": "Ruthless As Hell",
      "rate": 5.5,
      "view": "4.5m",
      "author": "By G Bailey"
    },
    {
      "image": "assets/home/recommended2.png",
      "name": "Best Wife",
      "rate": 4.5,
      "view": "2.5m",
      "author": "By Ajay K Pandey"
    },
    {
      "image": "assets/home/recommended3.png",
      "name": "Dark Operative ",
      "rate": 3.5,
      "view": "2.5m",
      "author": "By I.T. Lucas"
    },
    {
      "image": "assets/home/recommended4.png",
      "name": "Bed Boys After Dark",
      "rate": 4.5,
      "view": "7.5m",
      "author": "By melissa foster"
    },
    {
      "image": "assets/home/recommended5.png",
      "name": "Dark Hope",
      "rate": 1.5,
      "view": "4.5m",
      "author": "By H.D.Smith"
    },
    {
      "image": "assets/home/recommended6.png",
      "name": "Dark Secret",
      "rate": 4.5,
      "view": "9.5m",
      "author": "I. T. Lucas"
    },
  ];
  final newReleaselist = [
    {
      "image": "assets/home/newRelease1.png",
      "name": "A life",
      "rate": 4.5,
      "view": "2.5m",
      "author": "By A.P.J.Abdul kalam"
    },
    {
      "image": "assets/home/newRelease2.png",
      "name": "Ignited Minds",
      "rate": 3.5,
      "view": "6.5m",
      "author": "By A.P.J.Abdul kalam"
    },
    {
      "image": "assets/home/newRelease3.png",
      "name": "Holly Black",
      "rate": 4.5,
      "view": "3.5m",
      "author": "By Sarah prout"
    },
    {
      "image": "assets/home/newRelease4.png",
      "name": "Stars Across Time",
      "rate": 5.5,
      "view": "6.5m",
      "author": "By Baker kline"
    },
    {
      "image": "assets/home/newRelease5.png",
      "name": "Harry Potter",
      "rate": 4.5,
      "view": "5.5m",
      "author": "By J.K.Rowling"
    },
    {
      "image": "assets/home/newRelease6.png",
      "name": "Rebirth",
      "rate": 2.5,
      "view": "6.5m",
      "author": "By Jahnavi Barua"
    },
  ];
  final paidbooklist = [
    {
      "image": "assets/home/paidbook1.png",
      "name": "Ruthless As Hell",
      "rate": 3.5,
      "view": "2.5m",
      "author": "G Bailey"
    },
    {
      "image": "assets/home/paidbook2.png",
      "name": "Best Wife",
      "rate": 3.5,
      "view": "2.5m",
      "author": "By Ajay K Pandey"
    },
    {
      "image": "assets/home/paidbook3.png",
      "name": "Dark Operative",
      "rate": 2.5,
      "view": "3.5m",
      "author": "By I.T. Lucas"
    },
    {
      "image": "assets/home/paidbook4.png",
      "name": "Bed Boys After Dark",
      "rate": 3.5,
      "view": "2.5m",
      "author": "By melissa foster"
    },
    {
      "image": "assets/home/paidbook5.png",
      "name": "Dark Hope",
      "rate": 3.5,
      "view": "2.5m",
      "author": "By H.D.Smith"
    },
  ];
  final authorList = [
    {"image": "assets/home/author1.png", "name": "Abdul kalam"},
    {"image": "assets/home/author2.png", "name": "I.T.Lucas"},
    {"image": "assets/home/author3.png", "name": "Rhonda Byrne's"},
    {"image": "assets/home/author4.png", "name": "G Bailey"},
    {"image": "assets/home/author5.png", "name": "J. K. Rowling"},
    {"image": "assets/home/author6.png", "name": "Ruskin Bond"},
    {"image": "assets/home/author7.png", "name": "Nora Roberts"},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        toolbarHeight: size.height * 0.11,
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        leadingWidth: 90,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2),
          child: Row(
            children: [
              Container(
                height: size.height * 0.065,
                width: size.height * 0.065,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/home/Ellipse 11.png"),
                  ),
                ),
              ),
              widthSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getTranslate(context, 'home.good_morning'),
                      style: bold18Black2,
                    ),
                    Text(
                      getTranslate(context, 'home.time_read'),
                      style: bold14Grey94,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/notification');
            },
            icon: const Icon(
              CupertinoIcons.bell,
              color: primaryColor,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          bottom: fixPadding,
        ),
        physics: const BouncingScrollPhysics(),
        children: [
          premiumBox(size),
          heightSpace,
          heightSpace,
          mostPopularListview(size),
          heightSpace,
          recommendedListview(size),
          heightSpace,
          newReleaseListview(size),
          heightSpace,
          paidBookListview(size),
          heightSpace,
          famousAuthorListview(size)
        ],
      ),
    );
  }

  famousAuthorListview(Size size) {
    return Column(
      children: [
        titleText(getTranslate(context, 'home.famous_author'), () {
          Navigator.pushNamed(context, '/famousAuthor');
        }),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: authorList
                .map(
                  (author) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/authorScreen');
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.symmetric(horizontal: fixPadding),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.11,
                            width: size.height * 0.11,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    author['image'].toString(),
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          height5Space,
                          Text(
                            author['name'].toString(),
                            style: bold14Black2,
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  paidBookListview(Size size) {
    return Column(
      children: [
        titleText(getTranslate(context, 'home.paid_book'), () {
          Navigator.pushNamed(context, '/paidstory');
        }),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: paidbooklist
                .map(
                  (paidbook) => GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/getPremium');
                    },
                    child: Container(
                      width: size.width * 0.35,
                      margin:
                          const EdgeInsets.symmetric(horizontal: fixPadding),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: size.height * 0.2,
                            padding: const EdgeInsets.all(fixPadding / 2),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  paidbook['image'].toString(),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: size.height * 0.03,
                                width: size.height * 0.03,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: primaryColor,
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "\$",
                                  style: bold16White,
                                ),
                              ),
                            ),
                          ),
                          height5Space,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                paidbook['name'].toString(),
                                style: bold15Black2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 14,
                                        color: primaryColor,
                                      ),
                                      width5Space,
                                      Text(paidbook['rate'].toString(),
                                          style: regular14Black2,
                                          overflow: TextOverflow.ellipsis)
                                    ],
                                  ),
                                  widthSpace,
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.visibility,
                                        size: 14,
                                        color: primaryColor,
                                      ),
                                      width5Space,
                                      Text(
                                        paidbook['view'].toString(),
                                        style: regular14Black2,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                paidbook['author'].toString(),
                                style: semibold14Grey94,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  newReleaseListview(Size size) {
    return Column(
      children: [
        titleText(getTranslate(context, 'home.new_release'), () {
          Navigator.pushNamed(context, '/newRelease');
        }),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: newReleaselist
                .map(
                  (newRelease) => listContent(
                      size,
                      newRelease['image'].toString(),
                      newRelease['name'].toString(),
                      newRelease['rate'].toString(),
                      newRelease['view'].toString(),
                      newRelease['author'].toString(), () {
                    Navigator.pushNamed(context, '/storyDetail');
                  }),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  recommendedListview(Size size) {
    return Column(
      children: [
        titleText(getTranslate(context, 'home.recommended'), () {
          Navigator.pushNamed(context, '/recommended');
        }),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: recommendedlist
                .map(
                  (recommended) => listContent(
                      size,
                      recommended['image'].toString(),
                      recommended['name'].toString(),
                      recommended['rate'].toString(),
                      recommended['view'].toString(),
                      recommended['author'].toString(), () {
                    Navigator.pushNamed(context, '/storyDetail');
                  }),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  mostPopularListview(Size size) {
    return Column(
      children: [
        titleText(getTranslate(context, 'home.most_popular'), () {
          Navigator.pushNamed(context, '/mostpopular');
        }),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: popularlist
                .map(
                  (popular) => listContent(
                    size,
                    popular['image'].toString(),
                    popular['name'].toString(),
                    popular['rate'].toString(),
                    popular['view'].toString(),
                    popular['author'].toString(),
                    () {
                      Navigator.pushNamed(context, '/storyDetail');
                    },
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }

  Widget listContent(Size size, String image, String name, String rate,
      String view, String author, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.34,
        margin: const EdgeInsets.symmetric(horizontal: fixPadding),
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.2,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            height5Space,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: bold15Black2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: primaryColor,
                        ),
                        width5Space,
                        Text(rate,
                            style: regular14Black2,
                            overflow: TextOverflow.ellipsis)
                      ],
                    ),
                    widthSpace,
                    Row(
                      children: [
                        const Icon(
                          Icons.visibility,
                          size: 14,
                          color: primaryColor,
                        ),
                        width5Space,
                        Text(
                          view,
                          style: regular14Black2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  author,
                  style: semibold14Grey94,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  titleText(String title, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: bold18Black2,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              getTranslate(context, 'home.see_all'),
              style: bold14Primary,
            ),
          )
        ],
      ),
    );
  }

  premiumBox(Size size) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/getPremium');
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(fixPadding / 5),
        margin: const EdgeInsets.symmetric(horizontal: fixPadding * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            colors: [
              primaryColor,
              Color(0xffEEC7AD),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: fixPadding * 1.5, vertical: fixPadding * 1.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      getTranslate(context, 'home.get_premium'),
                      style: extrabold20White,
                    ),
                    Text(
                      getTranslate(context, 'home.download_text'),
                      style: bold16White,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: fixPadding / 2,
                        horizontal: fixPadding * 2,
                      ),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        getTranslate(context, 'home.subscribe_now'),
                        style: bold16Primary,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              "assets/home/premiumImage.png",
              fit: BoxFit.cover,
              width: size.width * 0.32,
            ),
          ],
        ),
      ),
    );
  }
}
