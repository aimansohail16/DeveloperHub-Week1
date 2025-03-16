import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final Uri pinterestUrl = Uri.parse("https://www.pinterest.com/");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birthday Picture Ideas"),
        backgroundColor: Colors.lightGreen
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              children: [
                Image.asset("assets/images/image1.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image2.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image3.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image4.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image5.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image6.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image7.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image8.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image9.jpg", fit: BoxFit.cover,),
                Image.asset("assets/images/image10.jpg", fit: BoxFit.cover,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("For more Ideas: ",
                ),
                TextButton(
                    onPressed: () async {
                      if (await canLaunchUrl(pinterestUrl)) {
                        await launchUrl(pinterestUrl, mode: LaunchMode.externalApplication);
                      }
                    },
                    child: Text("Click Here!")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
