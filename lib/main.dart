import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevFestApp());
}

class DevFestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Google DevFest',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            elevation: 0.0,
          )),
      home: DevFestHomePage(),
    );
  }
}

class DevFestHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Google DevFest'),
      ),
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.network(
                'https://st3.depositphotos.com/2572561/16821/i/450/depositphotos_168214114-stock-photo-top-view-through-the-glass.jpg',
                fit: BoxFit.cover,
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'WELCOME TO OUR ANNUAL DEVFEST!\n '
                  'A place where we are united as one community, with one goal. a place where we learn and grow!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                ElevatedButton(
                  onPressed: () {
                    // navigate to the agenda screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AgendaScreen()),
                    );
                  },
                  child: Text('View Agenda'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // navigate to the speakers screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SpeakersScreen()),
                    );
                  },
                  child: Text('View Speakers'),
                ),
                socialActions(context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AgendaScreen extends StatelessWidget {
  List topics = ['DevByte:From Zero to ML on Google Cloud Platform','Data analysis in Tech','importance of learning programming','Networking and technology'];
  List names = [
    'John Jones','Mike Wheld','kevin ombui','Simon Kariuki',
  ];
  List roles = [
    'Developer Advocate','data analyst','Software Engineer','Networks Engineer',
  ];
  List images = [
    'https://imgs.search.brave.com/myMy4M7KWBvTP_1AFPYqHwGKUXK_5x5j7FZWnZHVBmk/rs:fit:756:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/azJVc2o4NGJJaF9T/aUkyUUo3Yi1RSGFF/cCZwaWQ9QXBp','https://imgs.search.brave.com/myMy4M7KWBvTP_1AFPYqHwGKUXK_5x5j7FZWnZHVBmk/rs:fit:756:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/azJVc2o4NGJJaF9T/aUkyUUo3Yi1RSGFF/cCZwaWQ9QXBp','https://imgs.search.brave.com/myMy4M7KWBvTP_1AFPYqHwGKUXK_5x5j7FZWnZHVBmk/rs:fit:756:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/azJVc2o4NGJJaF9T/aUkyUUo3Yi1RSGFF/cCZwaWQ9QXBp','https://imgs.search.brave.com/myMy4M7KWBvTP_1AFPYqHwGKUXK_5x5j7FZWnZHVBmk/rs:fit:756:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/azJVc2o4NGJJaF9T/aUkyUUo3Yi1RSGFF/cCZwaWQ9QXBp',

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Agenda'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.red,
            labelStyle: TextStyle(
              fontSize: 12,
            ),
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                child: Text("Cloud"),
                icon: Icon(
                  FontAwesomeIcons.cloud,
                  size: 12,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: topics.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(topics[index]),
                            Text(
                              names[index],
                              style: TextStyle(color: Colors.orange),
                            ),
                            Text(
                              roles[index],
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '30 Mins',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('9:00AM'),
                          ],
                        ),
                      );
                    })),
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}

class SpeakersScreen extends StatelessWidget {
  List topics = ['DevByte:From Zero to ML on Google Cloud Platform'];
  List names = [
    'John Jones',
  ];
  List roles = [
    'Developer Advocate',
  ];
  List images = [
    'https://imgs.search.brave.com/myMy4M7KWBvTP_1AFPYqHwGKUXK_5x5j7FZWnZHVBmk/rs:fit:756:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/azJVc2o4NGJJaF9T/aUkyUUo3Yi1RSGFF/cCZwaWQ9QXBp'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('speakers'),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.blue,
            labelStyle: TextStyle(
              fontSize: 12,
            ),
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                child: Text("speakers"),
                icon: Icon(
                  FontAwesomeIcons.cloud,
                  size: 12,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: topics.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.network(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(topics[index]),
                            Text(
                              names[index],
                              style: TextStyle(color: Colors.orange),
                            ),
                            Text(
                              roles[index],
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

Widget socialActions(context) => FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.linkedin,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.youtube,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
