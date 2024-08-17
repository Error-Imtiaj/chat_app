// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:chat_app/components/drawer_item.dart';
import 'package:chat_app/screens/Login_page.dart';
import 'package:chat_app/screens/Profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DEMO VARIABLE FOR NULL USER IMAGE
  // PLEASE REMOVE WHEN YOU WORK WITH THIS UI
  bool userImage = true;

  //================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER OF THE NAVIGATION
            //=========================
            DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      //=========================== put your profile image
                      //backgroundColor: Theme.of(context).colorScheme.onError,
                      backgroundImage: NetworkImage(
                          'https://img.icons8.com/?size=100&id=23400&format=png&color=000000'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'John Doe',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).colorScheme.onError,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'johndoe@example.com',
                      style: GoogleFonts.poppins(
                        color: Theme.of(context).colorScheme.onError,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //==========================
            // END OF DRAWER HEADER
            Divider(
              color: Theme.of(context).colorScheme.onError,
            ),

            // DRAWER ITEMS
            //============

            DrawerItem(
              title: 'Home',
              icon: Icons.home,
              // TODO PLEASE ADD THE DESTINATION WIDGET WHEN CLICK THE ITEM
              ontap: () {
                Get.to(() => HomePage());
              },
            ),
            DrawerItem(
              title: 'Profile',
              icon: Icons.shopping_bag_outlined,
              // TODO PLEASE ADD THE DESTINATION WIDGET WHEN CLICK THE ITEM
              ontap: () {
                Get.to(() => ProfilePage());
              },
            ),
            DrawerItem(
              title: 'Setting',
              icon: Icons.settings,
              // TODO PLEASE ADD THE DESTINATION WIDGET WHEN CLICK THE ITEM
              ontap: () {
                Get.to(() => HomePage());
              },
            ),

            // LOGOUT CONTAINER
            Spacer(),
            Divider(color: Theme.of(context).colorScheme.onError),
            DrawerItem(
              title: 'Log Out',
              icon: Icons.logout_outlined,
              ontap: () async {
                await FirebaseAuth.instance.signOut();
                Get.off(() => MyLoginPage());
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text('My APP BAR'),
        titleTextStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onError,
            fontSize: 20),
        // DRAWER ICONS COLOR
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onError),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Your content goes here",
            style: GoogleFonts.poppins(
                fontSize: 26,
                color: Theme.of(context).colorScheme.onError,
                fontWeight: FontWeight.bold),
          ))
        ],
      ),
    );
  }
}
