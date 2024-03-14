// ignore_for_file: use_super_parameters, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: Text(
              'Alice in Wonderland',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          preferredSize: Size.fromHeight(35)),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Cover(),
              Partition(),
              ShowCharacter(),
              bank(),
              Character(),
              Partition(),
              About(),
              bank(),
              Movies(),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}

class Movies extends StatelessWidget {
  const Movies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        bank(),
        Expanded(
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/zh/6/62/Alice_in_Wonderland_Poster.jpg',
          ),
        ),
        bank(),
        Expanded(
          child: Image.network(
            'https://pic.pimg.tw/orangecat1027/1464098247-805311013.jpg?v=1464098248',
          ),
        ),
        bank(),
        Expanded(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk9GyUkp0dfi3As-HpSeQPlSMT_Og-k1UN2CJuiBGPA7045-ZN',
          ),
        ),
        bank(),
      ],
    );
  }
}

class bank extends StatelessWidget {
  const bank({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 5,
    );
  }
}

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: pi / 9,
          child: const Icon(Icons.movie),
        ),
        Padding(padding: const EdgeInsets.only(left: 5)),
        Text('相關電影'),
        Padding(padding: const EdgeInsets.only(right: 5)),
        Transform.rotate(
          angle: -pi / 9,
          child: const Icon(Icons.movie),
        ),
      ],
    );
  }
}

class Character extends StatelessWidget {
  const Character({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://static.popdaily.com.tw/wp-content/uploads/2020/12/4z77z0h9ay88s44sgco8k8sc0qltysz-1000x754.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://www.niusnews.com/upload/imgs/default/202301_Noah/0106/2/rabbit3.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/df/2b/ee/df2bee095c1b959d6f9785dad05a5125.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_vkYSPA52M2UGUo4UPD2invTWphBQHlqRnaojWvSJRV-FhPJ'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://taoofalice.files.wordpress.com/2015/07/mad-hatter.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage:
              NetworkImage('https://i.ytimg.com/vi/JXaWfkW7UXw/hqdefault.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://i.etsystatic.com/10195620/r/il/80a85c/808038850/il_570xN.808038850_3ip6.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://p3-sdbk2-media.byteimg.com/tos-cn-i-xv4ileqgde/27b15ca6948c434b8afabc20ed655c80~tplv-xv4ileqgde-resize-w:750.image'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/animated-animals/images/8/8a/Dodo.JPG/revision/latest/thumbnail/width/360/height/360?cb=20190816195745'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/236x/9f/cb/1e/9fcb1ec69630782dd2c4d6c044e50aa8.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://i.ytimg.com/vi/N_7BrqcMe_M/maxresdefault.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/animated-animals/images/9/92/Dormouse.JPG/revision/latest/thumbnail/width/360/height/360?cb=20190816195953'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://pic.pimg.tw/martin0602/1340667564-329492285_wn.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/236x/7b/4d/e9/7b4de940ffa0e27904bf3c1422e14f65.jpg'),
        ),
        CircleAvatar(
          radius: 45,
          backgroundImage:
              NetworkImage('https://pbs.twimg.com/media/EZrqZtWUYAAarH2.jpg'),
        ),
      ],
    );
  }
}

class ShowCharacter extends StatelessWidget {
  const ShowCharacter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: -pi / 35,
          child: Icon(Icons.contact_emergency),
        ),
        Padding(padding: const EdgeInsets.only(left: 5)),
        Text('角色展示'),
        Padding(padding: const EdgeInsets.only(right: 5)),
        Transform.rotate(
          angle: pi / 35,
          child: Icon(Icons.contact_emergency),
        ),
      ],
    );
  }
}

class Partition extends StatelessWidget {
  const Partition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      height: 15,
      indent: 10,
      endIndent: 10,
    );
  }
}

class Cover extends StatelessWidget {
  const Cover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/AliceInWonderland.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            child: Icon(
              Icons.play_circle_outline,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MyHomePage(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
