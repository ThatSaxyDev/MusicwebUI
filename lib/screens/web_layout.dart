import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:prac/utils/colors.dart';
import 'package:prac/widgets/music_player.dart';
import 'package:prac/widgets/search_bar.dart';
//import 'package:prac/widgets/top_album_card.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class CardItem {
  final String albumArt;
  final String name;
  final String artist;
  final String time;

  const CardItem(
      {required this.albumArt,
      required this.name,
      required this.artist,
      required this.time});
}

class _WebLayoutState extends State<WebLayout> {
  List<CardItem> items = const [
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/03/Kwaku-artwork-.webp',
      name: 'Kwaku the Traveller',
      artist: 'Black Sherif',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://www.naijaloaded.com.ng/wp-content/uploads/2022/03/sungba-remix-artwork-1.webp',
      name: 'Sungba (ft Burna Boy)',
      artist: 'Asake',
      time: '3:14',
    ),
    CardItem(
      albumArt:
          'https://www.naijaloaded.com.ng/wp-content/uploads/2022/03/FOcnNBbXwAEuxg9.jpeg',
      name: 'Playboy',
      artist: 'Fireboy DML',
      time: '3:10',
    ),
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/03/finesse-artwork.webp',
      name: 'Finesse',
      artist: 'Pheelz, BNXN',
      time: '3:00',
    ),
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/04/Always-art.webp',
      name: 'Always (ft Black Sherif)',
      artist: 'Darkoo',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://trendybeatz.com/images/Asake-Ft-Olamide-Omo-Ope-Artwork.jpg',
      name: 'Omo Ope',
      artist: 'Asake',
      time: '3:12',
    ),
    CardItem(
      albumArt: 'https://tunezjam.com/images/Rema-Calm-Down-artwork.jpg',
      name: 'Calm Down',
      artist: 'Rema',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://www.naijaloaded.com.ng/wp-content/uploads/2022/03/BNXN-img.jpeg',
      name: 'For Days',
      artist: 'BNXN',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://t2.genius.com/unsafe/222x222/https%3A%2F%2Fimages.genius.com%2F9655502ae4cc52d5f53410cb3872211b.500x500x1.jpg',
      name: 'Come & Go',
      artist: 'Ardee',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://trendybeatz.com/images/Asake-Ololade-Asake-EP-Artwork.jpg',
      name: 'Sungba',
      artist: 'Asake',
      time: '3:12',
    ),
    CardItem(
      albumArt: 'https://trendybeatz.com/images/Skiibii-Trenches-art.jpg',
      name: 'Trenches',
      artist: 'Skiibii',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2021/12/Italyy-1024x1024.webp',
      name: 'Italy (ft Blaq Diamond',
      artist: 'BNXN',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/02/Sometimes-Remix-artwork-1024x1024.webp',
      name: 'Sometimes - Remix',
      artist: 'T.I. Blaze, Olamide',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://trendybeatz.com/images/Burna-Boy-Second-Sermon-Remix-Art.jpg',
      name: 'Second Sermon - Remix',
      artist: 'Black Sherif, Burna Boy',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://txpush-9575.kxcdn.com/wp-content/uploads/2022/01/BB-Remix-art-1024x1024.webp',
      name: 'Baddest Boy - Remix',
      artist: 'Skiibii, Davido',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          'https://www.naijaloaded.com.ng/wp-content/uploads/2022/02/Zinoleesky-Rocking.jpeg',
      name: 'Rocking',
      artist: 'Zinoleesky',
      time: '3:12',
    ),
    CardItem(
      albumArt:
          "https://trendybeatz.com/images/Magixx-Ft-Ayra-Starr-Love-Don't-Cost-A-Dime-Re-Up-Artwork.jpg",
      name: 'Love Don\'t Cost A Dime (Re-Up)',
      artist: 'Magixx, Ayra Starr',
      time: '3:12',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.16,
            padding: const EdgeInsets.fromLTRB(20, 50, 30, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.content_copy_outlined,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Browse',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.album_outlined,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Album',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Artists',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.video_library_outlined,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Videos',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45),
                  const Text(
                    'MY MUSIC',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.alarm,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Recently Played',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.music_note_outlined,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Local Files',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45),
                  const Text(
                    'PLAYLIST',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Summer vibes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Drill and cruise',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.list,
                          color: Colors.blueGrey,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Barzzzz',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width * 0.84,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 163, 185, 1),
                      Color.fromRGBO(230, 230, 185, 1),
                      Color.fromRGBO(101, 178, 185, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: textColorr,
                              ),
                            ),
                            SearchBar(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
                              ),
                              radius: 20,
                            ),
                            const SizedBox(width: 5),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Username',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: textColorr),
                                  ),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.notifications_active_outlined,
                                    color: textColorr,
                                  ),
                                  SizedBox(width: 7),
                                  Icon(
                                    Icons.settings,
                                    color: textColorr,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: DottedLine(
                        dashColor: Colors.grey,
                        dashLength: 5,
                        lineThickness: 5,
                        dashGapLength: 10,
                        dashRadius: 80,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.album_rounded,
                          size: 30,
                          color: textColorr,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Top Songs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: textColorr),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 250,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        separatorBuilder: (context, _) =>
                            const SizedBox(width: 12),
                        itemBuilder: (context, index) =>
                            topAlbumCard(item: items[index]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.graphic_eq_rounded,
                                        size: 30,
                                        color: textColorr,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Now Playing',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: textColorr,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const MusicPlayer(),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.play_circle,
                                      size: 30,
                                      color: textColorr,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Favourites',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: textColorr,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                SizedBox(
                                  height: 380,
                                  width: 900,
                                  // decoration: BoxDecoration(
                                  //   gradient: const LinearGradient(
                                  //     begin: Alignment.topLeft,
                                  //     end: Alignment.bottomRight,
                                  //     colors: [
                                  //       Colors.pinkAccent,
                                  //       bgColor,
                                  //       bgColor,
                                  //       Color.fromARGB(255, 85, 53, 53),
                                  //     ],
                                  //   ),
                                  //   borderRadius: BorderRadius.circular(20),
                                  // ),
                                  child: ListView.separated(
                                    padding: const EdgeInsets.all(18),
                                    itemCount: items.length,
                                    separatorBuilder: (context, _) {
                                      return const SizedBox(height: 18);
                                    },
                                    itemBuilder: (context, index) {
                                      return favouriteCard(item: items[index]);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget topAlbumCard({
    required CardItem item,
  }) =>
      SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(
                        item.albumArt,
                      ),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: textColorr,
              ),
            ),
            Text(
              item.artist,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  Widget favouriteCard({
    required CardItem item,
  }) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pinkAccent,
              bgColor,
              bgColor,
              //Color.fromARGB(255, 85, 53, 53),
              Colors.pink,
            ],
          ),
        ),
        width: double.infinity,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10,left: 10, right: 15),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(item.albumArt),
                    ),
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(
                      color: textColorr,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.artist,
                    style: const TextStyle(
                      color: textColorr,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Text(
                    item.time,
                    style: const TextStyle(
                      color: textColorr,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
