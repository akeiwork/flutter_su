//Благослови Господи !
import 'package:inter_widget/lesson.dart';
import 'package:flutter/material.dart';

import 'lessons_classes/lib.dart';

void main() => runApp(new InterWidget());

class InterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Lessons',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,

      ),
      home: Home(),

    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.account_circle),
        color: Colors.blue[600],
        splashColor: Colors.blue,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                  title: Text('Разработчик мобильного приложения flutter.su (ver_1.0): DRONWORK', style: TextStyle(color: Colors.lightBlue),),
                  // semanticLabel: 'flutter.su',
                  backgroundColor: Colors.white,
                  titlePadding: EdgeInsets.all(20.0),
                );
              });
        },
      ),
      title: Text('Flutter Lessons'),
      backgroundColor: Colors.grey[200],
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          color: Colors.red[900],
          splashColor: Colors.redAccent,
          onPressed: () { //Найти альтернативу SimpleDialog'у
            showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                      title: Text('© 2019 Flutter.su, по всем вопросам пишите по адресу contact@flutter.su', style: TextStyle(color: Colors.orange),),
                      // semanticLabel: 'flutter.su',
                    backgroundColor: Colors.white,
                    titlePadding: EdgeInsets.all(20.0),
                  );
                });
          },
        )
      ],
    );

    // Tile hero, !Переписать маршруты!Хотя бы через switch!
    createTile(Lesson lessons) => Hero(
      tag: lessons.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.blue,
        child: InkWell(
          onTap: () {
            switch(lessons.title) {
              case "D1": Navigator.push(context, MaterialPageRoute(builder: (context) => DartScreen1()));
              break;
              case "D2": Navigator.push(context, MaterialPageRoute(builder: (context) => DartScreen2()));
              break;
              case "F1": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen1()));
              break;
              case "F2": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen2()));
              break;
              case "F3": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen3()));
              break;
              case "F4": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen4()));
              break;
              case "F5": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen5()));
              break;
              case "F6": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen6()));
              break;
              case "F7": Navigator.push(context, MaterialPageRoute(builder: (context) => FlutterScreen7()));
              break;
            }


          },
          child: Image(
            image: AssetImage(lessons.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    //Lesson grid tiles for flutter.su
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 7 / 3,
            crossAxisCount: 1,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: lessons.map((book) => createTile(book)).toList(),

          ),
        )
      ],
    );

    return Scaffold(

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: appBar,
      body: grid,
    );
  }
}