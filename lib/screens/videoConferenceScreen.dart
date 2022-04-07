import 'package:flutter/material.dart';
import 'package:laxo/screens/variables.dart';
import 'package:laxo/videoconference/createmeeting.dart';
import 'package:laxo/videoconference/joinmeeting.dart';

class VideoConferenceScreen extends StatefulWidget {
  @override
  _VideoConferenceScreenState createState() => _VideoConferenceScreenState();
}

class _VideoConferenceScreenState extends State<VideoConferenceScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  buildtab(String name) {
    return Container(
      width: 150,
      height: 50,
      child: Card(
        child: Center(
          child: Text(
            name,
            style: mystyle(15, Colors.black, FontWeight.w700),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Laxo',
          style: mystyle(
            20,
            Colors.white,
            FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          tabs: [buildtab('Join Meeting'), buildtab('Create Meeting')],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [CreateMeeting(), JoinMeeting()],
      ),
    );
  }
}
