import 'package:flutter/material.dart';

class TabBarDars extends StatefulWidget {

  @override
  _TabBarDarsState createState() => _TabBarDarsState();
}

class _TabBarDarsState extends State<TabBarDars> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabbars"),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 20.0),
            labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 16.0),
            physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            isScrollable: true,
            labelColor: Colors.black,
            indicatorColor: Colors.deepOrangeAccent,
            tabs: [
              Tab(
                child: Text("Home"),
              ),
              Tab(
                child: Text("Contacts"),
              ),
              Tab(
                child: Text("Bots"),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  child: Text("Home"),
                ),
                Container(
                  child: Text("Contacts"),
                ),
                Container(
                  child: Text("Bots"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
