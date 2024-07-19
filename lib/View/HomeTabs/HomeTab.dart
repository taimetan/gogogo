import 'package:flutter/material.dart';

class MyTab extends StatefulWidget {
  @override
  _MyTabState createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.abc), text: 'Tùy chỉnh'),
            Tab(icon: Icon(Icons.settings), text: 'Cài đặt'),
          ],
        ),
        title: Text('Ứng dụng của tôi'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Nội dung của tab Home')),
          Center(child: Text('Nội dung của tab Tùy chỉnh')),
          Center(child: Text('Nội dung của tab Cài đặt')),
        ],
      ),
    );
  }
}