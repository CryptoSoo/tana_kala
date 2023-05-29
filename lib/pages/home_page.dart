import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        backgroundColor: Colors.white38,
        searchTextKeyboardType: TextInputType.text,
        searchTextDirection: TextDirection.rtl,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(),
        title:
            const Text('جستجو در تاناکالا', textDirection: TextDirection.rtl),
        onSearch: (value) => setState(() => searchValue = value),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: 210,
                    color: const Color.fromRGBO(55, 166, 216, 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                height: 159,
                                width: 159,
                                child: ClipRRect(
                                  child: Image.asset('assets/image_15.png'),
                                )),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('زمستون تو راهه...'),
                                Text(
                                  'تمامی لباس های که برای زمستان نیاز دارید  را از تانا کالا بیابید',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_sharp),
                    Text('مشاهده همه'),
                    Spacer(),
                    Text('دسته بندی های منتخب'),
                  ],
                ),
                Container(
                  color: const Color(0xF7FAFC),
                  height: 103,
                  width: double.infinity,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      FavList(
                        image: 'assets/image_1380.png',
                        text: 'لباس زنانه',
                      ),
                      FavList(
                          text: 'لباس مردانه', image: 'assets/image_1381.png'),
                      FavList(
                          text: 'لباس بچه گانه',
                          image: 'assets/image_1382.png'),
                      FavList(
                          text: 'لباس بچه گانه',
                          image: 'assets/image_1383.png'),
                      FavList(
                          text: 'لباس بچه گانه',
                          image: 'assets/image_1383.png'),
                      FavList(
                          text: 'لباس بچه گانه',
                          image: 'assets/image_1383.png'),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_sharp),
                    Text('مشاهده همه'),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'پیراهن مردانه',
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          'بر اساس بازدید های اخیر شما',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class FavList extends StatelessWidget {
  String text;
  String image;

  FavList({
    required this.text,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
        ),
        Image.asset(image),
      ],
    );
  }
}
