import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLiked = false;
  int _commentCount = 213;
  int _likeCount = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //#mind
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/user1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(width: 2, color: Colors.grey),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Live",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Photo",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Check in",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //story
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            margin: const EdgeInsets.only(top: 5),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyItem(
                    image: 'assets/images/story1.jpg',
                    userImage: 'assets/images/user3.jpg',
                    userName: "Yunusbek "),
                storyItem(
                    image: 'assets/images/story2.jpg',
                    userImage: 'assets/images/user7.jpg',
                    userName: "Bekzod Ikramov"),
                storyItem(
                    image: 'assets/images/story4.jpg',
                    userImage: 'assets/images/user4.jpg',
                    userName: "Mashxurbek"),
                storyItem(
                    image: 'assets/images/story3.jpg',
                    userImage: 'assets/images/user6.jpg',
                    userName: "WonMirzo"),
                storyItem(
                    image: 'assets/images/story5.jpg',
                    userImage: 'assets/images/user5.jpg',
                    userName: "Designer A..."),
              ],
            ),
          ),
          //feed
          Column(
            children: [
              feedItem(
                userName: "Yunusbek Masharipov",
                userImage: "assets/images/user3.jpg",
                feedTime: "1 hr ago",
                feedText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                feedImages: ["assets/images/story3.jpg"],
              ),
              feedItem(
                userName: "Azizbek Raximov",
                userImage: "assets/images/user1.jpg",
                feedTime: "1 hr ago",
                feedText:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                feedImages: [
                  "assets/images/story1.jpg",
                  "assets/images/story2.jpg"
                ],
              ),
              feedItem(
                userName: "Bekzod Ikramov",
                userImage: "assets/images/user7.jpg",
                feedTime: "2 hr ago",
                feedText:
                    "Flutterni tanlashingiz uchun 3 ta sabab.\n1. Tez kompilyatsiya\n2.O'rganish va ishlatish juda oddiy\n3. Bitta dasturchi 2 ta platformaga bittada dastur tuza oladi.",
                feedImages: [
                  "assets/images/post1.jpg",
                  "assets/images/post2.jpg",
                  "assets/images/post3.jpg"
                ],
              ),
              feedItem(
                userName: "Bekzod Ikramov",
                userImage: "assets/images/user7.jpg",
                feedTime: "2 hr ago",
                feedText:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                feedImages: [
                  "assets/images/post5.jpg",
                  "assets/images/story2.jpg",
                  "assets/images/post3.jpg",
                  "assets/images/post4.jpg"
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget storyItem({
    required String image,
    required String userImage,
    required String userName,
  }) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.blue),
                  image: DecorationImage(
                      image: AssetImage(userImage), fit: BoxFit.fill),
                ),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget feedItem({
    required String userName,
    required String userImage,
    required String feedTime,
    required String feedText,
    feedImages,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const SizedBox(height: 3),
                      Text(
                        feedTime,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.grey.shade600,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Text(
              feedText,
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 15,
                letterSpacing: .7,
                height: 1.5,
              ),
            ),
          ),
          images(images: feedImages),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    like(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: love(),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "$_likeCount",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Text(
                  "$_commentCount comments",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              likeButton(),
              commentButton(),
              shareButton(),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget like() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 14,
        ),
      ),
    );
  }

  Widget love() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 14,
        ),
      ),
    );
  }

  Widget likeButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isLiked = !_isLiked;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.thumb_up,
                color: _isLiked ? Colors.blue : Colors.grey,
                size: 18,
              ),
              const SizedBox(width: 5),
              Text(
                "Like",
                style: TextStyle(color: _isLiked ? Colors.blue : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget commentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.comment,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget shareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget images({required List images}) {
    Widget img;
    if (images.length == 1) {
      img = Container(
        margin: const EdgeInsets.only(top: 10),
        height: 240,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(images[0]),
            fit: BoxFit.fill,
          ),
        ),
      );
    } else if (images.length == 2) {
      img = Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[0]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[1]),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      );
    } else if (images.length == 3) {
      img = Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[0]),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[1]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[2]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      img = Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 240,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[0]),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[1]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(images[2]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${images.length - 3}+",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
    return img;
  }
}
