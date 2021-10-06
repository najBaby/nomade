import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282B4A),
      appBar: _HomeAppBar(),
      body: _HomeBody(),
    );
  }
}

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontWeight: FontWeight.w700,
      letterSpacing: -0.5,
      color: Colors.white,
      fontSize: 25.0,
    );
    final subtitleStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white54,
      letterSpacing: -0.5,
    );
    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: ListTile(
          subtitle: Text(
            "Your recent expenses",
            style: subtitleStyle,
          ),
          title: Text(
            "Expenses",
            style: titleStyle,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(CupertinoIcons.list_dash),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text("Last Month Expense"),
              trailing: Text("Sep, 2019"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.greenAccent[400],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelPadding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.white,
                tabs: List.filled(
                    7,
                    Tab(
                      icon: Text("Mon"),
                      child: Text("5"),
                    )),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: List.filled(7, _HomeTabbarView()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HomeTabbarView extends StatelessWidget {
  const _HomeTabbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontWeight: FontWeight.w600,
      letterSpacing: -0.5,
    );
    final subtitleStyle = TextStyle(
      letterSpacing: -0.5,
    );
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Tab(
                      icon: Text(
                        "20",
                        style: titleStyle.copyWith(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      child: Text(
                        "internet",
                        style: subtitleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Tab(
                      icon: Text(
                        "1K",
                        style: titleStyle.copyWith(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      child: Text(
                        "Minutes",
                        style: subtitleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Tab(
                      icon: Text(
                        "150",
                        style: titleStyle.copyWith(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                      child: Text(
                        "Messages",
                        style: subtitleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Your Expenses",
              style: titleStyle.copyWith(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                CupertinoIcons.phone_fill,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.greenAccent[400],
              ),
              width: 60.0,
            ),
            title: Text("Incoming Calls", style: titleStyle),
            subtitle: Text("6 Calls"),
            trailing: Text(
              r"-$1.5",
              style: titleStyle.copyWith(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                CupertinoIcons.waveform,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.orange[400],
              ),
              width: 60.0,
            ),
            title: Text("Internet", style: titleStyle),
            subtitle: Text("Spent 63MB"),
            trailing: Text(
              r"-$2.3",
              style: titleStyle.copyWith(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
              ),
              width: 60.0,
            ),
            title: Text("Messages", style: titleStyle),
            subtitle: Text("Sent 1 message"),
            trailing: Text(
              r"-$0.25",
              style: titleStyle.copyWith(
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Container(
              child: Icon(
                Icons.network_cell,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black,
              ),
              width: 60.0,
            ),
            title: Text("Roaming Calls", style: titleStyle),
            subtitle: Text("2 Calls"),
            trailing: Text(
              r"-$3.0",
              style: titleStyle.copyWith(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
