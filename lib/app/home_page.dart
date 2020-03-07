import 'package:flutter/material.dart';
import 'package:loginsystem/inside/pages/daily_notice.dart';
import 'package:loginsystem/inside/pages/message.dart';
import 'package:loginsystem/services/auth.dart';
import 'package:carousel_slider/carousel_slider.dart';



final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  'https://www.bpcitkrishnagar.org/wp-content/uploads/2018/08/ee.jpg',
  




];



// class HomePage extends StatelessWidget {
//   HomePage({@required this.auth});

//   final AuthBase auth;

//   Future<void> _signOut() async {
//     try {
//       await auth.signOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Home Page'),
//           actions: <Widget>[
//             FlatButton(
//               child: Text(
//                 'Logout',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.white,
//                 ),
//               ),
//               onPressed: _signOut,
//             ),
//           ],
//         ),
//         drawer: Drawer(
//           child: new ListView(
//             children: <Widget>[
//               new ListTile(
//                   title: new Text("Announcement"),
//                   trailing: Icon(Icons.announcement),
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Message()),
//                     );
//                   }),
//               new ListTile(
//                   title: new Text("Daily Notices "),
//                   trailing: Icon(Icons.notification_important),
//                   onTap: () {
//                     Navigator.pop(context);
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Dnotice()),
//                     );
//                   }),
//               Divider(),
//               FlatButton(onPressed: _signOut, child: Text("sign out"))
//             ],
//           ),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Center(
//               child: CarouselSlider(
//                 viewportFraction: 0.9,
//                 aspectRatio: 2.0,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 items: imgList.map(
//                   (url) {
//                     return Container(
//                       margin: EdgeInsets.all(5.0),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                         child: Image.network(
//                           url,
//                           fit: BoxFit.cover,
//                           width: 800.0,

//                         ),
//                       ),
//                     );
//                   },
//                 ).toList(),
//               ),
//             ),
//             Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[

//                   Center(child: Text("vjvhgchc")),

//                 ],
//               ),
//             ),
//           ],
//         )


//       );
//   }
// }

class HomePage extends StatelessWidget {
  HomePage({@required this.auth});

  final AuthBase auth;

  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
      drawer: Drw(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: new ListView(
        children: <Widget>[
          CSlider(),
          Container(
            child: Text("cndjbjd"),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}


class UserCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Address:',
            ),
            SizedBox(height: 12),
            Placeholder()
          ],
        )
      ],
    );
  }
}

class CSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: 800.0,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

class Drw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new ListTile(
              title: new Text("Announcement"),
              trailing: Icon(Icons.announcement),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              }),
          new ListTile(
              title: new Text("Daily Notices "),
              trailing: Icon(Icons.notification_important),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dnotice()),
                );
              }),
          Divider(),
        ],
      ),
    );
  }
}
