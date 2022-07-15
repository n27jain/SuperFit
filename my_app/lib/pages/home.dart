class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



    Widget buildAuthScreen() {
        return Scaffold(
        key: _globalKey,
        body: PageView(
            children: Null
            //  <Widget>[
            //   Timeline(currentUser : currentUser),
            //   ActivityFeed(),
            //   Upload(currentUser : currentUser),
            //   Search(),
            //   Profile(profileId: currentUser?.id),
            ,
            // controller: pageController ,
            // onPageChanged: onPageChanged,
            // physics: NeverScrollableScrollPhysics(),
        ),
        //   bottomNavigationBar: CupertinoTabBar(
        //     currentIndex: pageIndex,
        //     onTap: onTap ,
        //     activeColor: Theme.of(context).primaryColor,
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.whatshot)),
        //       BottomNavigationBarItem(icon: Icon(Icons.notifications)),
        //       BottomNavigationBarItem(icon: Icon(Icons.photo_camera, size: 35.0,)),
        //       BottomNavigationBarItem(icon: Icon(Icons.search)),
        //       BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
        //     ],
        //   )
        );
        }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return buildAuthScreen();
  }
     

}