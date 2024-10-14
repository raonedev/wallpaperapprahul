import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:unsplasnapi/imagescreen.dart';
import 'imagescreen.dart';
import 'model/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<Content> getdataApi() async {
    final response = await http.get(
      Uri.parse(
          "https://unsplash.com/ngetty/v3/search/images/creative?fields=display_set%2Creferral_destinations%2Ctitle&page_size=75&phrase=portrait%20wallpaper&sort_order=best_match&graphical_styles=photography&exclude_nudity=true&exclude_editorial_use_only=true"),
    );
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Content.fromJson(data);
    } else {
      return Content.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: const Text(
          "K-Wallpaper",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      //body section start here
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Content>(
              future: getdataApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return MasonryGridView.builder(
                      itemCount: snapshot.data!.images!.length,
                      gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ImageScreen(
                                url: snapshot
                                    .data!.images![index].displaySizes![1].uri
                                    .toString(),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl: snapshot
                                    .data!.images![index].displaySizes![6].uri
                                    .toString(),
                                placeholder: (context, url) => const SizedBox(
                                  width: 200,
                                  height: 100,
                                  child: Center(
                                      child: CupertinoActivityIndicator()),
                                ),
                                errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                }
              },
            ),
          ),
          const Text(""),
        ],
      ),
    );
  }
}