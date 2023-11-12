import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: const Color(0xFF171821),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: ListView.builder(
            itemCount: _articles.length,
            itemBuilder: (BuildContext context, int index) {
              final item = _articles[index];
              return Container(
                height: 136,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    borderRadius: BorderRadius.circular(8.0)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "${item.author} · ${item.postedOn}",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall, //.caption
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icons.bookmark_border_rounded,
                              Icons.share,
                              Icons.more_vert
                            ].map((e) {
                              return InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(e, size: 16),
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(item.imageUrl),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Article {
  final String title;
  final String imageUrl;
  final String author;
  final String postedOn;

  Article({
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.postedOn,
  });
}

final List<Article> _articles = [
  Article(
    title: "Cabbage Need Waters ‘daily time limit’ option",
    author: "Garduino App",
    imageUrl:
        "https://www.asiafarming.com/wp-content/uploads/2018/03/Cabbage-Plantation..jpg",
    postedOn: "Today: 10:29am",
  ),
  Article(
    title: "Soil Moisture Level Dropdown",
    imageUrl:
        "https://www.thespruce.com/thmb/pgG0d_CaZm9-aXo9lAN_F0eS_js=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/healthy-soil-and-how-to-make-it-2539853-hero-fdf9b0280dca41cb8ae9614e6fc4a0b0.jpg",
    author: "Garduino App",
    postedOn: "4 hours ago",
  ),
  Article(
    title: "WARNING: Water Level in Low Level",
    author: "Garduino App",
    imageUrl:
        "https://assets-global.website-files.com/5d162672099ac31ecbb72092/5d684ef596d109f2e6fb0cf4_2019-05-27_-_social_media_warning_labels.jpeg",
    postedOn: "2 days ago",
  ),
  Article(
    title: "BULB status: OFF",
    author: "Garduino App",
    imageUrl: "https://static.dezeen.com/uploads/2016/01/light-bulb-dezeen.jpg",
    postedOn: "22 hours ago",
  ),
  Article(
    title: "Greenhouse Ventilation Status: ON",
    author: "Garduino App",
    imageUrl: "https://clipground.com/images/a-greenhouse-clipart-6.jpg",
    postedOn: "4 hours ago",
  ),
  Article(
    title: "Garduino Roof Status: OFF",
    author: "Garduino App",
    imageUrl:
        "https://cdn2.vectorstock.com/i/1000x1000/51/51/greenhouse-single-icon-in-cartoon-style-vector-17095151.jpg",
    postedOn: "10 days ago",
  ),
  Article(
    title: "Garduino Roof Status: ON",
    author: "Garduino App",
    imageUrl:
        "https://cdn2.vectorstock.com/i/1000x1000/51/51/greenhouse-single-icon-in-cartoon-style-vector-17095151.jpg",
    postedOn: "10 days ago",
  ),
];
