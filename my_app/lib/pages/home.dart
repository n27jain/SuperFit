import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    int pageIndex = 0;
    late PageController controller = PageController();
    static const List<Widget> _widgetOptions = <Widget>[
        Text(
          'Index 0: Workout'
        ),
        Text(
          'Index 1: Business',
        
        ),
        Text(
          'Index 2: School',
        ),
      ];


    @override
    void initState(){
      super.initState();
      controller = PageController();
      
    }
    @override
    void dispose() { 
      controller.dispose();
      super.dispose();
    }
    
    onPageChanged(int index){
      setState(() {
        pageIndex = index;
      });
    }


    changeIndex(int pageIndex){
      controller.animateToPage(
        pageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    
  

    

    Scaffold buildUnAuthScreen(context) {
        return Scaffold(
            body: 
                Container(
                    decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColorLight],
                    ),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Text(
                        'FameGame',
                        style: TextStyle(
                            fontFamily: "Signatra",
                            fontSize: 50.0,
                            color: Theme.of(context).accentColor,
                        ),
                        ),
                        const Image(image: AssetImage('assets/images/splash_image.png'), fit: BoxFit.cover,
                        ),
                        GestureDetector(
                        onTap: null,
                        child: Container(
                            width: 260.0,
                            height: 60.0,
                            decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                'assets/images/google_signin_button.png',
                                ),
                                fit: BoxFit.cover,
                            ),
                            ),
                        ),
                        )
                    ],
                    ),
                ),
                
        );
  }
    Scaffold buildMainPage(context){
      return Scaffold(
        body: PageView(
          children: _widgetOptions,
          controller: controller,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(),

          ),
          bottomNavigationBar: CupertinoTabBar(
              currentIndex: pageIndex,
              onTap: changeIndex,
              activeColor: Theme.of(context).primaryColor,
              items: [
              const BottomNavigationBarItem(icon: Icon(Icons.whatshot)),
              const BottomNavigationBarItem(icon: Icon(Icons.notifications)),
              const BottomNavigationBarItem(icon: Icon(Icons.photo_camera, size: 35.0,)),
              const BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
              ],
          ),
      );

  }
    @override
    Widget build(BuildContext context) {
        return buildMainPage(context);

    }
}