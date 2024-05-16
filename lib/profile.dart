import 'package:flutter/material.dart';
class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    TextEditingController a=TextEditingController();
    List aa =[];
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/avt.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            tileColor: Colors.grey,
            leading: Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            title: Text("Donald",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          ListTile(
            tileColor: Colors.grey,
            leading: Text("Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            title: Text("Donaldabcd@gmail.com",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          ListTile(
            tileColor: Colors.grey,
            leading: Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            title: Text("donald",style: TextStyle(fontSize: 20,color: Colors.white),),
            trailing: IconButton(onPressed: ()
            {
              showDialog(context: context,
                  builder: (BuildContext context)
                  {
                    return AlertDialog(
                      content: Container(
                        height: 300,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: a,

                            ),
                            ElevatedButton(onPressed: ()
                            {
                              setState(() {
                               // aa=a.text;
                              });
                            }, child: Text("change")),
                          ],
                        ),
                      ),
                    );
                  }
            );
            },


              icon: Icon(Icons.edit),),
          ),
          ListTile(
            tileColor: Colors.grey,
            leading: Text("UserId",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            title: Text("9I2563MK56S",style: TextStyle(fontSize: 20,color: Colors.white),),
            // trailing: Icon(Icons.edit),
          ),

        ],
      ),

    );
  }
}
