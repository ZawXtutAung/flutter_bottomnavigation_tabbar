import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Myhome(),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({
    Key? key,
  }) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: TabBarView(controller: _tabController, children: <Widget>[
            TopTabbars(),
            Text('Fav'),
            Text('Star'),
          ]),
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        indicatorColor: Colors.red,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.amber,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.home), text: 'Heme'),
          Tab(icon: Icon(Icons.favorite), text: 'Heme'),
          Tab(icon: Icon(Icons.star), text: 'Heme'),
        ],
      ),
    );
  }
}

class TopTabbars extends StatefulWidget {
  TopTabbars({Key? key}) : super(key: key);

  @override
  State<TopTabbars> createState() => _TopTabbarsState();
}

class _TopTabbarsState extends State<TopTabbars>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllerss;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabControllerss = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabControllerss.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.amber,
            controller: _tabControllerss,
            tabs: <Widget>[
              Tab(
                text: 'First',
              ),
              Tab(
                text: 'Second',
              ),
              Tab(
                text: 'Thard',
              )
            ]),
      ),
      body: TabBarView(
          controller: _tabControllerss,
          children: <Widget>[Text('data'), Text('data'), Text('data')]),
    );
  }
}
