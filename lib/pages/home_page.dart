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
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(),
        title: Text('جستجو در تاناکالا', textDirection: TextDirection.rtl),
        onSearch: (value) => setState(() => searchValue = value),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: 210,
                    color: Color.fromRGBO(55, 166, 216, 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    height: 159,
                                    width: 159,
                                    child: ClipRRect(
                                      child: Image.asset('assets/image_15.png'),
                                    )),
                                Column(
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
                        )
                      ],
                    ),
                  ),
                ),
                Row(
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
                  height: 103,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/image_15.png'),
                          Text('لباس زنانه')
                        ],
                      ),
                      Row(),
                      Row(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
