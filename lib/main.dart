import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Divider(
              height: 20,
            ),
            ListTile(
              leading: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2014/04/03/10/41/light-311119_640.png"),
              ),
              title: Text("Android Switch",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black
                ),
              ),
              trailing: Transform.scale(
                scale: 1.5,
                child: Switch(
                  value: switchis,
                  onChanged: (bool news){
                    setState(() {
                      switchis = news;
                    });
                  },
                  activeColor: Colors.yellow,
                  inactiveTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.yellow,
                  activeTrackColor: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
                leading: Image(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2014/04/03/10/41/light-311119_640.png"),
                ),
                title: Text("ios Switch",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black
                  ),
                ),
                trailing: Transform.scale(
                  scale: 1.5,
                  child: CupertinoSwitch(
                    value: switchis,
                    onChanged: (bool news){
                      setState(() {
                        switchis = news;
                      });
                    },
                    activeColor: Colors.pink,
                    thumbColor: Colors.green.shade900,
                    trackColor: Colors.blue,
                  ),
                )
            ),
            Divider(height: 20,),
            ListTile(
              leading: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2014/04/03/10/41/light-311119_640.png"),
              ),
              title: Text("Adpative Switch",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black
                ),
              ),
              trailing: Transform.scale(
                scale: 1.0,
                child: Switch(
                  value: switchis,
                  onChanged: (bool news){
                    setState(() {
                      switchis = news;
                    });
                  },
                  activeColor: Colors.red,
                  inactiveTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.green,
                  activeTrackColor: Colors.orange,
                ),
              ),
            ),
            Divider(height: 20,),
            ListTile(
              leading: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2014/04/03/10/41/light-311119_640.png"),
              ),
              title: Text("Image Switch",
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black
                ),
              ),
              trailing: Transform.scale(
                scale: 1.5,
                child: Switch(
                  value: switchis,
                  onChanged: (bool news){
                    setState(() {
                      switchis = news;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.green,
                  activeTrackColor: Colors.purple,
                  inactiveThumbImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/11/10/23/emoji-1585265_640.png"),
                  activeThumbImage: NetworkImage("https://cdn.pixabay.com/photo/2019/02/19/23/35/graphic-4008068_640.png"),
                ),
              ),

            )
          ],
        )

    );
  }
}
