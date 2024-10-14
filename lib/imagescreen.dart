import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager_plus/wallpaper_manager_plus.dart';
// import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key, required this.url});
  final String url;

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  bool isShow = false;

  Future<void> setWallpaper(String imageUrl) async {
    setState(() {
      isShow = true;
    });
    try{
      int location = WallpaperManagerPlus.homeScreen;
      var cachedimage = await DefaultCacheManager().getSingleFile(imageUrl);
      WallpaperManagerPlus().setWallpaper(cachedimage, location);
      showSnackBar(context, "Wallpaper set");
        setState(() {
          isShow = false;
        });
    }on PlatformException catch (e) {{
        log(e.toString());
        setState(() {
          isShow = false;
        });
    }}
    // try {
    //   int location = WallpaperManager.HOME_SCREEN;
    //   var file = await DefaultCacheManager().getSingleFile(imageUrl);
    //   final bool result =
    //   await WallpaperManager.setWallpaperFromFile(file.path, location);
    //   setState(() {
    //     isShow = false;
    //   });
    //   if (result) {
    //     showSnackBar(context, "Wallpaper set");
    //   }
    // } on PlatformException catch (e) {
    //   log(e.toString());
    //   setState(() {
    //     isShow = false;
    //   });
    // }
  }

  void showSnackBar(BuildContext context, String msg) {
    SnackBar snackBar = SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'ok',
        onPressed: () {
          log('click');
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallpaper Image"),
      ),
      body: isShow
          ? const Center(
        child: CupertinoActivityIndicator(),
      )
          : Stack(
        children: [
          Center(
            child: CachedNetworkImage(
              imageUrl: widget.url,
              placeholder: (context, url) => const SizedBox(
                width: 200,
                height: 100,
                child: Center(
                  child: CupertinoActivityIndicator(),
                ),
              ),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff0a0a0a),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () => setWallpaper(widget.url),
                child: Text(
                  "Set Wallpaper",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ),
              // CustomButton(
                //   onPressed: () => setWallpaper(widget.url),
                //   text: "Set Wallpaper",
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}