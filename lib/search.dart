import 'package:flutter/material.dart';
class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}
class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //leading: Icon(Icons.search),
        title: TextFormField(
          decoration: InputDecoration(
           prefixIcon: Icon(Icons.search,size: 26,),
            hintText: "search here",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),

          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Suggest searches"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("horror Movies",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Fantastic beasts",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(maximumSize: Size(200, 150)),),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Daniel Radcliffe",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("Dealthy hallows",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(),),
          ),
          ElevatedButton(onPressed: (){}, child: Text("The last key",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(),),

        ],
      ),
    );
  }
}
