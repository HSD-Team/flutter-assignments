import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(title: 'Kullanıcı Profili'),
  ));
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Ekranı',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Kullanıcı Profili'),
    );
  }

  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,

              backgroundImage: NetworkImage("https://ui-avatars.com/api/?name=Zehra+Vural&background=random"),
            ),
            const SizedBox(height:50),

            const Text("Zehra Vural",
              style:TextStyle(fontSize:30,
                fontWeight:FontWeight.bold,
              ),
            ),
            const SizedBox(height:25),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children:[
                    Expanded(child:Center(child:Text("posts:12"))),
                    Expanded(child:Center(child:Text("Followers:300"))),
                    Expanded(child:Center(child:Text("Following: 150"))),
                  ],
                )
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(100, 50),
                  textStyle: const TextStyle(fontSize: 16),
                ),

                onPressed: () {  },
                child:const Text("Edit Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

