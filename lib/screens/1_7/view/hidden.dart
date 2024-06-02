import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../modal/gallary_hidden_modal.dart';

class HiddenScreen extends StatelessWidget {
  const HiddenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 79,

        centerTitle: true,
        // LEADING
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            size: 25,
          ),
        ),

        //TITLE
        title: Text('Hidden',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                Text('Select',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent),
                    )),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.2),
              itemCount: 27,
              itemBuilder: (context, index) => Container(
                height: 70,
                width: 90,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          hiddenData[index].image!,
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}