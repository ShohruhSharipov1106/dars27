
import 'package:dars27/ui/HW10_31-dars(Fashion)/Fashion/InfoPage.dart';
import 'package:flutter/material.dart';

class MyFashionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: appBarMethod(),
      body: ListView(
        children: <Widget>[
          followContainerMethod(),
          Hero(
            tag: "1",
            child: postCardMethod(context),
          ),
          postCardMethod(context),
        ],
      ),
      bottomNavigationBar: bottomNavBarMethod(),
    );
  }

  AppBar appBarMethod() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "Discovery",
        style: TextStyle(
          color: Colors.black,
          fontSize: 26.0,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 28.0,
            ),
            color: Colors.grey,
          ),
        ),
      ],
      centerTitle: false,
    );
  }

  Container followContainerMethod() {
    return Container(
      height: 150.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5.0,
                ),
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          "https://source.unsplash.com/random/1$index"),
                      radius: 35.0,
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/2$index"),
                        radius: 10.0,
                      ),
                      bottom: 0,
                      right: 0,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(fontSize: 13.0),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Padding postCardMethod(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          height: 550.0,
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random/2323"),
                  radius: 30.0,
                ),
                title: Text(
                  "Daisy",
                  style: TextStyle(),
                ),
                subtitle: Text("34mins ago"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typestting industry.Lorem Ipsum has been the industry's standard dummy text ever",
                maxLines: 3,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: 250.0,
                          width: (MediaQuery.of(context).size.width) / 1.7,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://source.unsplash.com/random",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoPage(
                                img: "https://source.unsplash.com/random",
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/2"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 120.0,
                              width: (MediaQuery.of(context).size.width - 20),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/3"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              height: 120.0,
                              width: (MediaQuery.of(context).size.width - 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    label: Text(
                      "#Louis Vutton",
                      style: TextStyle(
                        color: Colors.brown,
                      ),
                    ),
                    backgroundColor: Colors.brown[100],
                  ),
                  SizedBox(width: 5.0),
                  Chip(
                    label: Text(
                      "#Chloe",
                      style: TextStyle(color: Colors.brown),
                    ),
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  )
                ],
              ),
              Divider(height: 50.0),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.replay_10_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          "1.7k",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.chat,
                          color: Colors.grey,
                        ),
                        Text(
                          "325",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text(
                          "3.3k",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavBarMethod() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.play_arrow,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.play_arrow,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.compass_calibration,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.compass_calibration,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
      ],
      currentIndex: 2,
    );
  }
}
