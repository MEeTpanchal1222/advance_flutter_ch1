import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../modal/gallary_hidden_modal.dart';
import '../provider/gallary_provider.dart';
import 'hidden.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,

        centerTitle: true,
        // LEADING
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu_rounded,
            size: 30,
          ),
        ),

        //TITLE
        title: const Text(
          'Gallery',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.lightBlue.withOpacity(0.15),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Albums',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.blueAccent,
                              letterSpacing: 0.8),
                        ),
                        Icon(
                          Icons.arrow_drop_down_sharp,
                          color: Colors.blueAccent,
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  surfaceTintColor: Colors.white,
                  elevation: 20,
                  onSelected: (value) async {
                    if (value == "Hidden images") {
                      await Provider.of<GalleryProvider>(context, listen: false)
                          .authentication();
                      if (Provider.of<GalleryProvider>(context, listen: false)
                          .isVerified) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HiddenScreen(),));
                      }
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  itemBuilder: (context) => [
                    const PopupMenuItem<String>(
                      value: 'Recently Deleted',
                      child: ListTile(
                        leading: Icon(Icons.delete),
                        title: Text('Recently Deleted'),
                      ),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Hidden images',
                      child: ListTile(
                        leading: Icon(Icons.visibility_off_outlined),
                        title: Text('View Hidden'),
                      ),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Select All',
                      child: ListTile(
                        leading: Icon(Icons.select_all),
                        title: Text('Select All'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85),
              itemCount: galleryData.length,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 170,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CupertinoContextMenu(
                      actions: [
                        CupertinoContextMenuAction(
                          child: const Text("Copy"),
                          onPressed: () => Navigator.pop(context),
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                        ),
                        CupertinoContextMenuAction(
                          child: const Text("Share"),
                          onPressed: () => Navigator.pop(context),
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.share,
                        ),
                        CupertinoContextMenuAction(
                          child: const Text("Favourite"),
                          onPressed: () => Navigator.pop(context),
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.heart,
                        ),
                        CupertinoContextMenuAction(
                          child: const Text("Show in all Photos"),
                          onPressed: () => Navigator.pop(context),
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.device_phone_landscape,
                        ),
                        CupertinoContextMenuAction(
                          child: const Text(
                            "Remove",
                            style: TextStyle(
                                color: CupertinoColors.destructiveRed),
                          ),
                          onPressed: () => Navigator.pop(context),
                          isDefaultAction: true,
                          trailingIcon: CupertinoIcons.delete_simple,
                        ),
                      ],
                      child: Container(
                        height: 500,
                        width: 500,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  galleryData[index].image!,
                                ))),
                      ),
                    ),
                  ),
                  Text(
                    galleryData[index].name!,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15)),
                  ),
                  Text(
                    galleryData[index].quantity.toString(),
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.grey)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}