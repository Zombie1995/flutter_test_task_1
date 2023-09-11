import 'package:flutter/material.dart';
part 'indicators.dart';

class HotelCardPictures extends StatefulWidget {
  const HotelCardPictures({super.key});

  @override
  State<HotelCardPictures> createState() => _HotelCardPicturesState();
}

class _HotelCardPicturesState extends State<HotelCardPictures> {
  late PageController _pageController;

  List<String> pictures = [
    'https://avatars.mds.yandex.net/get-travel-rooms/3586827/2a0000017338fbfde396677e1c23437dcd6c/optimize',
    'http://static.tildacdn.com/tild6630-3665-4737-b930-336230306261/3-13.jpg',
    'https://e7da267a-b67b-4f13-925b-81f4cc6ae450.selcdn.net/origin/cb414b0e-5173-4795-8525-3a3786544b40.jpeg',
    'https://romani-hotel.ru/wp-content/uploads/2020/01/ihks7gw2vgyv-nazvany-5-samykh-griaznykh-predmetov-v-nomerakh-ot.jpg',
    'https://azimuthotels.com/cache/images/upload/1f5b2781ca81602834faef5c01ce379f.jpg/_.jpg',
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: activePage,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: AspectRatio(
            aspectRatio:
                (width < (343 * 1.5) ? (343 * 1.5) : width) / (257 * 1.5),
            child: PageView.builder(
                itemCount: pictures.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOutCubic,
                    child: Image.network(
                      pictures[pagePosition],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Indicators(
                picturesLength: pictures.length,
                currentIndex: activePage,
              )
            ],
          ),
        )
      ],
    );
  }
}
