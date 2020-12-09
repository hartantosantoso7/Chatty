import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';

class HompePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/profile.png',
                      height: 100, width: 100),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sabrina Carpenter',
                    style: TextStyle(fontSize: 20, color: whiteColor),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Travel Freelancer',
                    style: TextStyle(fontSize: 16, color: lightBlueColor),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    // height: 200,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friend4.png',
                          name: 'Joshues',
                          text: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/friend1.png',
                          name: 'Gabriella',
                          text: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          unread: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Group',
                          style: titleStyle,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/icon.png',
                          name: 'Jakarta Fair',
                          text: 'Why does everyone ca...',
                          time: '11:11',
                          unread: false,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/icon2.png',
                          name: 'Angga',
                          text: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                        ChatTile(
                          imageUrl: 'assets/images/icon3.png',
                          name: 'Bently',
                          text: 'Here here we can go...',
                          time: '7:11',
                          unread: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
