import 'package:flutter/material.dart';
import 'package:tana_kala/theme/colors.dart';

import '../models/models.dart';

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
      appBar: AppBar(
        title: const SearchBar(
          elevation: MaterialStatePropertyAll(0),
          leading: Text(
            'جستجو در تاناکالا',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 210,
                  color: const Color.fromRGBO(55, 166, 216, 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'زمستون تو راهه ...',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '''تمامی لباس های که برای زمستان نیاز دارید را از
                              تانا کالا بیابید''',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                            maxLines: 2,
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/Group_4.png',
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Image.asset('assets/image_15.png')],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_sharp),
                  Text(
                    'مشاهده همه',
                  ),
                  Spacer(),
                  Text('دسته بندی های منتخب'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
              child: Container(
                color: const Color(0xF7FAFC),
                height: 103,
                width: double.infinity,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FavList(
                      image: 'assets/image_1380.png',
                      text: 'لباس زنانه',
                    ),
                    FavList(
                        text: 'لباس مردانه', image: 'assets/image_1381.png'),
                    FavList(
                        text: 'لباس بچه گانه', image: 'assets/image_1382.png'),
                    FavList(
                        text: 'لباس بچه گانه', image: 'assets/image_1383.png'),
                    FavList(
                        text: 'لباس بچه گانه', image: 'assets/image_1383.png'),
                    FavList(
                        text: 'لباس بچه گانه', image: 'assets/image_1383.png'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
              child: Container(
                  height: 286,
                  width: double.infinity,
                  child: ListView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: Container(
                                  color: const Color(0x586488),
                                  height: 23,
                                  width: 46,
                                  child: const Text('تک سایز'),
                                ),
                              ),
                              Container(
                                color: AppColors.bgStroke,
                                height: 162,
                                width: 166,
                              ),
                              Image.asset('assets/image_16.png'),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('پیراهن پسرانه پیانو مدل 7109-93'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/toman.png'),
                              const Text('۲,۲۶۳,۰۰۰')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('(۲ نظر)'),
                              const Text('۴.۸ '),
                              Image.asset('assets/Star.png')
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const Row(
                            children: [
                              Text('فروشگاه اصلی ترناو'),
                              Text('فروشنده : ')
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: Container(
                                  color: const Color(0x586488),
                                  height: 23,
                                  width: 46,
                                  child: const Text('تک سایز'),
                                ),
                              ),
                              Container(
                                color: AppColors.bgStroke,
                                height: 162,
                                width: 166,
                              ),
                              Image.asset('assets/image_18.png'),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('پیراهن پسرانه پیانو مدل 7109-93'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/toman.png'),
                              const Text('۲,۲۶۳,۰۰۰')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('(۲ نظر)'),
                              const Text('۴.۸ '),
                              Image.asset('assets/Star.png')
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const Row(
                            children: [
                              Text('فروشگاه اصلی ترناو'),
                              Text('فروشنده : ')
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: Container(
                                  color: const Color(0x586488),
                                  height: 23,
                                  width: 46,
                                  child: const Text('تک سایز'),
                                ),
                              ),
                              Container(
                                color: AppColors.bgStroke,
                                height: 162,
                                width: 166,
                              ),
                              Image.asset('assets/image_16.png'),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('پیراهن پسرانه پیانو مدل 7109-93'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/toman.png'),
                              const Text('۲,۲۶۳,۰۰۰')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('(۲ نظر)'),
                              const Text('۴.۸ '),
                              Image.asset('assets/Star.png')
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const Row(
                            children: [
                              Text('فروشگاه اصلی ترناو'),
                              Text('فروشنده : ')
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: Container(
                                  color: const Color(0x586488),
                                  height: 23,
                                  width: 46,
                                  child: const Text('تک سایز'),
                                ),
                              ),
                              Container(
                                color: AppColors.bgStroke,
                                height: 162,
                                width: 166,
                              ),
                              Image.asset('assets/image_18.png'),
                            ],
                          ),
                          const Row(
                            children: [
                              Text('پیراهن پسرانه پیانو مدل 7109-93'),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/toman.png'),
                              const Text('۲,۲۶۳,۰۰۰')
                            ],
                          ),
                          Row(
                            children: [
                              const Text('(۲ نظر)'),
                              const Text('۴.۸ '),
                              Image.asset('assets/Star.png')
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          const Row(
                            children: [
                              Text('فروشگاه اصلی ترناو'),
                              Text('فروشنده : ')
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset('assets/image1378.png'),
            ),
            const Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Text('مشاهده تمامی برند های محبوب'),
                  ],
                ),
                Row(
                  children: [Text('برند های محبوب تانا کالا')],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
