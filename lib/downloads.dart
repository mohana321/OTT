import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class defaultplayer extends StatefulWidget {
  const defaultplayer({super.key});

  @override
  State<defaultplayer> createState() => _defaultplayerState();
}

class _defaultplayerState extends State<defaultplayer> {

  late FlickManager flickManager;
  @override
  List list = ["https://www.google.com/url?sa=i&url=http%3A%2F%2Fm.behindwoods.com%2Ftamil-movies%2Fslideshow%2Ffunny-yet-catchy-tamil-movie-titles%2Findex.html&psig=AOvVaw2Xm3hQZV20UGsd5lC5Kg4Q&ust=1715943570116000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPCqpoyCkoYDFQAAAAAdAAAAABAE",
  "https://i.pinimg.com/736x/36/89/96/368996eca69b175baf5a3af640b941cc.jpg",
    "https://m.timesofindia.com/thumb.cms?msid=65984144&width=200&height=281",
"https://timesofindia.indiatimes.com/photo/98008084.cms",
    "https://preview.redd.it/name-some-obscure-flop-movies-that-you-love-the-criteria-v0-u4l0gvn0c4za1.jpg?auto=webp&s=ea05a1cb05f0be1d9d94a355c0d5167bf8870812",
  ];
  List list1 = ["https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/ivanakku-sariyaana-aal-illai-et00300948-17-11-2020-07-17-27.jpg",
  "https://qqcdnpictest.mxplay.com/pic/6519005f5f0d78f33bf910d53497853c/en/2x3/312x468/test_pic1704272144275.webp",
    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00038721-vwwelrpfzw-portrait.jpg",
    "https://www.scrolldroll.com/wp-content/uploads/2023/08/vaathi-best-tamil-movies-on-ott-.jpg",
    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00384518-lyklzskwsx-portrait.jpg",
  ];

  List list2 = ["https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/7778/1710554557778-h",
  "https://sund-images.sunnxt.com/101580/500x750_Dagaalty_101580_5ea1220a-6faa-4e12-9285-279d415b04b8.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq6QqgexHXRO5vCta7NsF05uGVR2NfggNy3ZbuAB1CEQ&s",
    "https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2022/11/Kabali.jpg",
    "https://assetscdn1.paytm.com/images/cinema/aranmanai-4--705x750-b2322aa0-07b2-11ef-b78a-95022c935f66.jpg",
  ];
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("https://cdn.pixabay.com/video/2015/10/18/1080-142790249_tiny.mp4"),
        ),
    );
  }
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4, // Adjust the percentage as needed
                width: MediaQuery.of(context).size.width,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                ),
              ),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height /4,
                    child: ListView.builder(
                      itemCount: list.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.4, // Adjust the percentage as needed
                                width: MediaQuery.of(context).size.width * 0.6, // Adjust the percentage as needed
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(list[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height /4,
                    child: ListView.builder(
                      itemCount: list1.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.4, // Adjust the percentage as needed
                                width: MediaQuery.of(context).size.width * 0.6, // Adjust the percentage as needed
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(list1[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height /4,
                    child: ListView.builder(
                      itemCount: list2.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height * 0.4, // Adjust the percentage as needed
                                width: MediaQuery.of(context).size.width * 0.6, // Adjust the percentage as needed
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(list2[index]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),

                  ),
                ],
              ),


            ],
          ),
        ),
        
      ),

    );


      Container(
      height: 100,
      width: 300,
      child: FlickVideoPlayer(
          flickManager: flickManager,
      ),
    );
  }
}


