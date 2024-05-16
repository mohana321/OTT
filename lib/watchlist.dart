import 'package:flutter/material.dart';

class watch extends StatefulWidget {
  const watch({super.key});

  @override
  State<watch> createState() => _watchState();
}
class _watchState extends State<watch> {
  @override
  List action = [
    "https://i.ytimg.com/vi/Kw0rrqKqS34/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDWlPddHIkkD_H3SFycy5RVGtbkQQ",
    "https://m.media-amazon.com/images/M/MV5BOTdkNGY5YjItOWU5OC00NTA0LTkxMGEtZDRlNWZmMmI2ZGZmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg",
    "https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWkYP9Wvpumlnytvcp2t0iLt-PTdBMuZEhE9vmenb7IUg5OTffqEGhjW3TGW88JiODlmvBcT2SCTkU7Uc_Rh8r4Kmpul84OjCPY.jpg?r=653",
    "https://wirally.com/wp-content/uploads/2020/06/1-Top-20-Asian-Action-Movies-Of-All-Time.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
  ];
  List horror = [
    "https://i.ytimg.com/vi/hd3s0rUrZoI/maxresdefault.jpg",
    "https://static.toiimg.com/thumb/msid-89704142,width-1280,height-720,resizemode-4/89704142.jpg",
    "https://imgeng.jagran.com/images/2023/jan/Naai-Sekar-Returns-OTT-Release1672894689168.jpg",
    "https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2023/08/1-Gulaebaghavali.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSZXrcyVW4vDpam3Q_kf-0oQiTmyuCVsKyCRBWHDBD0A&s",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://i.ytimg.com/vi/r3cZUAkDMEw/maxresdefault.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
    "https://i.ytimg.com/vi/hd3s0rUrZoI/maxresdefault.jpg",
    "https://i.ytimg.com/vi/r3cZUAkDMEw/maxresdefault.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
    "https://i.ytimg.com/vi/TT6yPdxBz04/maxresdefault.jpg",
    "https://i.ytimg.com/vi/UTAvGzCK6ok/sddefault.jpg",
    "https://static.toiimg.com/thumb/msid-89704142,width-1280,height-720,resizemode-4/89704142.jpg",
    "https://imgeng.jagran.com/images/2023/jan/Naai-Sekar-Returns-OTT-Release1672894689168.jpg",
    "https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2023/08/1-Gulaebaghavali.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSZXrcyVW4vDpam3Q_kf-0oQiTmyuCVsKyCRBWHDBD0A&s",
    //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd54HlNni7WxPJk2a8J7pkQRGRqSdPFPpUE7i_7DSYbg&s",
    "https://resizing.flixster.com/sPD8qwWkiDUukuoxqY8sx4oqD-Y=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzFlNjZlYzRkLThjZTItNDUyYi05ZDUzLTg1NGE2YTc2YTM5MC5wbmc=",
    "https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/86/10/14/s6jo_us_2023_poster_1400x2100_nb.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcQSWZ_AjyKc6dWDr26qDWSpC9lj06rRhsi4NDaNc0Cw&s",

    // "https://st1.bollywoodlife.com/wp-content/uploads/2023/03/horror-movies.jpg?impolicy=Medium_Resize&w=600&h=600",
    // "https://filmfare.wwmindia.com/content/2023/jan/besthollywoodhorrormovies21674128261.jpg",
    "https://i.ytimg.com/vi/hd3s0rUrZoI/maxresdefault.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://i.ytimg.com/vi/r3cZUAkDMEw/maxresdefault.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://i.ytimg.com/vi/MJJ2bvsomRo/maxresdefault.jpg",
    "https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/86/10/14/s6jo_us_2023_poster_1400x2100_nb.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcQSWZ_AjyKc6dWDr26qDWSpC9lj06rRhsi4NDaNc0Cw&s",
    "data:image/jpeg;base64,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",
  ];
  List slide = [
    "https://i.ytimg.com/vi/UTAvGzCK6ok/sddefault.jpg",
    "https://static.wixstatic.com/media/437529_af12234720c248928df1b2273062690c~mv2.jpg/v1/fill/w_796,h_494,al_c,lg_1,q_85,enc_auto/437529_af12234720c248928df1b2273062690c~mv2.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnntZwju6X5kYEx4mwrsSPdMcnDH4NfMP1xiJ2SSnZvg&s",
    "https://e0.pxfuel.com/wallpapers/337/926/desktop-wallpaper-jeffrey-quayle-on-disney-king-cartoon-disney-lion-king-lion-king-movie.jpg",
    "https://i.ytimg.com/vi/UTAvGzCK6ok/sddefault.jpg",
    "https://i.ytimg.com/vi/BHaeOnDOd28/maxresdefault.jpg",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/avt.jpg"),
                  ),
                  Text("Cristopher Nolan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.phone),
                      Text("998765421"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.email),
                      Text("hello@gmail.com"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My movies",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.label_important_outlined,color: Colors.amber,),
                    title: Text("Want to watch"),
                    trailing: Text("27"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border_sharp,color: Colors.amber,),
                    title: Text("Ratings and views"),
                    trailing: Text("90"),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time,color: Colors.amber,),
                    title: Text("Expected"),
                    trailing: Text("43"),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite_border,color: Colors.amber,),
                    title: Text("Favourite flims"),
                    trailing: Text("33"),
                  ),
                  ListTile(
                    leading: Icon(Icons.recommend_rounded,color: Colors.amber,),
                    title: Text("Recommended"),
                    trailing: Text("56"),
                  ),
                ],
              ),


            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //image: DecorationImage(
                // image: AssetImage("assets/avt.jpg"),
                // fit: BoxFit.fill,
              ),
            ),
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(("Recently Watched"),style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.05,color: Colors.black,fontWeight: FontWeight.bold),),
            Container(
              height: MediaQuery.of(context).size.height * 0.6, // Adjust the percentage as needed
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: action.length,
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
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: NetworkImage(action[index]),
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
              height: MediaQuery.of(context).size.height, // Take full height of the screen
              child: GridView.builder(
                itemCount: slide.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width ~/ 250, // Adjust according to your needs
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: NetworkImage(slide[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.width ~/ 250), // Adjust according to your needs
                    ),
                  );
                },
              ),
            ),




          ],
        ),
      ),
    );
  }
}
