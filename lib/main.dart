import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child:Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left:250),
                  child: CircleAvatar(
                    backgroundImage:AssetImage("img/circle.png"),
                    radius: 25,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Text("Google",style: TextStyle(color: Colors.pink,fontSize: 35,fontWeight: FontWeight.w800),),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.apps),
                            ),
                            IconButton(
                              icon: Icon(Icons.cake),
                            )
                          ],
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search the items here',
                        fillColor: Colors.white54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          borderSide: BorderSide(color: Colors.black26),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Icon(Icons.cloud,size: 20,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("28 degrees"),
                          Text("Mostly cloiud")
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("31 degrees"),
                          Row(
                            children: [
                              Icon(Icons.cloud),
                              Text("Mostly cloiud"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,
                ),
                Text("Choose your Discover language",style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700,fontSize: 20),),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.apps),
                          SizedBox(width: 15,),
                          Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:12.0),
                                child: Text("Telugu"),
                              ),
                              Text("English")
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.apps),
                          SizedBox(width: 15,),
                          Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:12.0),
                                child: Text("Hindi"),
                              ),
                              Text("maths")
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  child: Image.asset("img/circle.png"),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
