import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ott/watchlist.dart';
import 'package:ott/downloads.dart';


class home extends StatefulWidget {

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //final currentwidth = MediaQuery.of(context).size.width;
  List movi = [
    "https://i.ytimg.com/vi/TT6yPdxBz04/maxresdefault.jpg",
    "https://static.toiimg.com/thumb/msid-89704142,width-1280,height-720,resizemode-4/89704142.jpg",
    "https://imgeng.jagran.com/images/2023/jan/Naai-Sekar-Returns-OTT-Release1672894689168.jpg",
    "https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2023/08/1-Gulaebaghavali.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSZXrcyVW4vDpam3Q_kf-0oQiTmyuCVsKyCRBWHDBD0A&s",
  ];
  List slide = [
    "https://i.ytimg.com/vi/UTAvGzCK6ok/sddefault.jpg",
    "https://static.wixstatic.com/media/437529_af12234720c248928df1b2273062690c~mv2.jpg/v1/fill/w_796,h_494,al_c,lg_1,q_85,enc_auto/437529_af12234720c248928df1b2273062690c~mv2.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnntZwju6X5kYEx4mwrsSPdMcnDH4NfMP1xiJ2SSnZvg&s",
    "https://e0.pxfuel.com/wallpapers/337/926/desktop-wallpaper-jeffrey-quayle-on-disney-king-cartoon-disney-lion-king-lion-king-movie.jpg",
  ];
  List action = [
    "https://i.ytimg.com/vi/Kw0rrqKqS34/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDWlPddHIkkD_H3SFycy5RVGtbkQQ",
    "https://m.media-amazon.com/images/M/MV5BOTdkNGY5YjItOWU5OC00NTA0LTkxMGEtZDRlNWZmMmI2ZGZmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg",
    "https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWkYP9Wvpumlnytvcp2t0iLt-PTdBMuZEhE9vmenb7IUg5OTffqEGhjW3TGW88JiODlmvBcT2SCTkU7Uc_Rh8r4Kmpul84OjCPY.jpg?r=653",
    "https://wirally.com/wp-content/uploads/2020/06/1-Top-20-Asian-Action-Movies-Of-All-Time.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
  ];
  List horror = [
    "https://i.ytimg.com/vi/hd3s0rUrZoI/maxresdefault.jpg",
    "https://i.ytimg.com/vi/r3cZUAkDMEw/maxresdefault.jpg",
    "https://st1.bollywoodlife.com/wp-content/uploads/2023/03/horror-movies.jpg?impolicy=Medium_Resize&w=600&h=600",
    "https://filmfare.wwmindia.com/content/2023/jan/besthollywoodhorrormovies21674128261.jpg",
  ];
  List thriller = [
    "https://images.bewakoof.com/utter/content/4698/content_Badla_2019_-_Hindi_Thriller_Movies_in_Bollywood_-_Bewakoof_Blog.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSeSDGLacLKLtlE13CfHXmzVr0-R5Vs1i5fkwTJFgiA&s",
    "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1675189943-41nIy7R22GL._SL500_.jpg?crop=1xw:0.938xh;center,top&resize=980:*",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYEq_sIs5hq74C5IvIDrCkfXg4vXwKIVBp-px0Evt2dQ&s",
  ];
  // late final tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [
            SliverAppBar(
              bottom: TabBar(
              labelStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04, // Adjust the percentage as needed for text size
              ),
              tabs: [
                Tab(
                  text: "Movies",
                ),
                Tab(
                  text: "Watch list",
                ),
                Tab(
                  text: "Downloads",
                ),
              ],
            ),

          ),
          ];
        },
        body: TabBarView(
          children: [
            Container(
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      aspectRatio: 20 / 9,
                      viewportFraction: 0.97,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration:
                      Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.8,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: slide.length,
                    itemBuilder: (BuildContext context, int index,


                        int realIndex) {
                     return GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> const defaultplayer()));

                       },

                       child: Container(
                          height: MediaQuery.of(context).size.width * 0.2, // Adjust the percentage as needed for height
                          width: MediaQuery.of(context).size.width * 0.95, // Adjust the percentage as needed for width
                          decoration: BoxDecoration(
                            border: Border.all(
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(slide[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                     );

                    },
                  ),
                  Text("Mostpopular Movies >",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey,fontSize: 25),),
                  Text("Need to subscribe",style: TextStyle(fontSize: 20,color: Colors.black),),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Actions",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05, // Adjust the percentage as needed for font size
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.width * 0.4, // Adjust the percentage as needed for height
                        child: ListView.builder(
                          itemCount: action.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(action[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.width * 0.4, // Adjust the percentage as needed for height
                                    width: MediaQuery.of(context).size.width * 0.3, // Adjust the percentage as needed for width
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Text("Webseries",style: TextStyle(fontSize: 20,color: Colors.black),),



                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thriller",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05, // Adjust the percentage as needed for font size
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.width * 0.4, // Adjust the percentage as needed for height
                        child: ListView.builder(
                          itemCount: thriller.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(thriller[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.width * 0.4, // Adjust the percentage as needed for height
                                    width: MediaQuery.of(context).size.width * 0.3, // Adjust the percentage as needed for width
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Text("New Movies",style: TextStyle(fontSize: 20,color: Colors.black),),






                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Horror",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05, // Adjust the percentage as needed for font size
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.width / 2, // Adjust the percentage as needed for height
                        child: ListView.builder(
                          itemCount: horror.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.width /4, // Adjust the percentage as needed for height
                                    width: MediaQuery.of(context).size.width /4, // Adjust the percentage as needed for width
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(horror[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            watch(),
            defaultplayer(),

          ],

        ),

      )
    );
  }
}


