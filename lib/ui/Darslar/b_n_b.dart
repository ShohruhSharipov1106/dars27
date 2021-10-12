import 'package:dars27/screens/contacts_page.dart';
import 'package:dars27/screens/home_page.dart';
import 'package:dars27/screens/search_page.dart';
import 'package:dars27/screens/settings_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndefOfBottomBar = 0;
  List<Widget> _listofPages = [];
  Widget? homePage, searchPage, contactsPage, settingsPage;

  var keyHomePage = PageStorageKey("home_page_key");
  var keySearchPage = PageStorageKey("search_page_key");

  var _bucket = PageStorageBucket();
  @override
  void initState() {
    super.initState();
    homePage = InstagramUI(key: keyHomePage);
    searchPage = SearchPage(key: keySearchPage);
    contactsPage = ContactsPage();
    settingsPage = SettingsPage();
    _listofPages = [homePage!, searchPage!, contactsPage!, settingsPage!];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listofPages[_currentIndefOfBottomBar],
      bottomNavigationBar: _bottomNavFunc(),
    );
  }

  Widget _bottomNavFunc() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.open_with_outlined),
          icon: Icon(Icons.home),
          label: "Home",
          tooltip: "Home",
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Search",
          tooltip: "Search",
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts_outlined),
          label: "Contacts",
          tooltip: "Contacts",
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: "Settings",
          tooltip: "Settings",
          backgroundColor: Colors.yellow,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _currentIndefOfBottomBar,
      onTap: (menuIndex) {
        setState(
          () {
            _currentIndefOfBottomBar = menuIndex;
          },
        );
      },
    );
  }
}
