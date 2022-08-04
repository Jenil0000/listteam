import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: listteam(),));
}
class listteam extends StatefulWidget {
  const listteam({Key? key}) : super(key: key);

  @override
  State<listteam> createState() => _listteamState();
}

class _listteamState extends State<listteam> {
  List<String> name =[
    "David",
    "Hardik",
    "Rahul",
    "Rasidkhan",
    "Saha",
    "Sai",
    "Sami",
    "Subham",
    "Wade",
    "Yashdayal",
    "Lockie",
  ];
  List<String> player =[
    " Batsman",
    " Batsman",
    " Batsman",
    " Batsman",
    " Batsman",
    "All-Rounder",
    "All-Rounder",
    "All-Rounder",
    "Fast Bowler",
    "Fast Bowler",
    "Wk-Batman",
  ];
  List<String> image =[
    "photo/david.jpg",
    "photo/hardik.jpg",
    "photo/lockie.webp",
    "photo/rahul.jpg",
    "photo/rasidkhan.jpg",
    "photo/saha.jpg",
    "photo/Sai.jpg",
    "photo/sami.jpg",
    "photo/subham.jpg",
    "photo/wade.webp",
    "photo/yashdayal.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Gujrat Team"),),

      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context,index){
            return ListTile(
              leading: Image.asset(image[index],
              height: 90,
                width: 90,
              ),
              title: Text(name[index]),
              subtitle: Text(player[index]),
              trailing: Icon(Icons.list),
            );
          }),
    );
  }
}
