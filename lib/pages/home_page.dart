import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tana_kala/pages/product_details.dart';
import 'package:tana_kala/pages/store_page.dart';
import 'package:tana_kala/theme/colors.dart';

import '../widgets/widgets.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.bgStroke,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          label: RichText(
            text: const TextSpan(
              style: TextStyle(shadows: [
                Shadow(
                    color: Colors.black12, offset: Offset(0, 3), blurRadius: 1)
              ]),
              children: [
                TextSpan(
                    text: 'جستوجو در',
                    style: TextStyle(
                        fontSize: 12, color: AppColors.disabledTextColor)),
                TextSpan(
                    text: '  تـانـا',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w900)),
                TextSpan(
                    text: 'کالا',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0x99161A1F),
                        fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          prefixIcon: Image.asset('assets/Search.png',
              color: AppColors.disabledTextColor),
        ),
      )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            const Banners(image: 'assets/winter.png'),
            const ProductsTitle(
                title: 'دسته بندی های منتخب', viewAll: 'مشاهده همه'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 11,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 5,
                    );
                  },
                  itemCount: favCloth.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return favCloth[index];
                  },
                ),
              ),
            ),
            const ProductsTitle(
                title: 'پیراهن مردانه',
                viewAll: 'مشاهده همه',
                subTitle: 'بر اساس بازدید های اخیر شما'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  itemCount: catList.length,
                  itemBuilder: (context, index) {
                    return catList[index];
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ),
            const Banners(image: 'assets/image1378.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'برندهای محبوب',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black)),
                        TextSpan(
                            text: ' تـانـا',
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: ' کالا',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'مشاهده تمامی برند های محبوب',
                        style: TextStyle(
                            fontSize: 10, color: AppColors.secondaryTextColor2),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: AppColors.secondaryTextColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 5);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: favList.length,
                  itemBuilder: (context, index) {
                    return favList[index];
                  },
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/image33.png'),
                )),
                Expanded(
                    child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/image32.png'),
                ))
              ],
            ),
            const ProductsTitle(
                title: 'برترین فروشگاه ها', viewAll: 'مشاهده همه'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ListView.separated(
                  itemCount: bestStoresList.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, index) {
                    return bestStoresList[index];
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ),
            const Banners(image: 'assets/image34.png'),
            const ProductsTitle(
              title: 'کیف های زنانه',
              viewAll: 'مشاهده همه',
              subTitle: 'بر اساس بازدید های اخیر شما',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.separated(
                  itemCount: bagsList.length,
                  itemBuilder: (context, index) {
                    return bagsList[index];
                  },
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 5);
                  },
                ),
              ),
            ),
            const Banners(image: 'assets/image31.png'),
            const ProductsTitle(
              title: 'لباس های زنانه',
              viewAll: 'مشاهده همه',
              subTitle: 'بر اساس بازدید های اخیر شما',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ClothCategory(
                        image: 'assets/image24.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image28.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image24.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image28.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/image30.png'),
                )),
                Expanded(
                    child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('assets/image35.png'),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: ' منتخب محصولات ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.black)),
                        TextSpan(
                            text: 'تـانـا',
                            style: TextStyle(
                                fontSize: 17,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'کالا',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'مشاهده همه ',
                        style: TextStyle(
                            fontSize: 10, color: AppColors.secondaryTextColor2),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: AppColors.secondaryTextColor2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ClothCategory(
                        image: 'assets/image_16.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image_18.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image_16.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/image_18.png',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset('assets/Home_Empty.png'), label: 'صفحه اصلی'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/Search.png'), label: ''),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDetails(),
                        ));
                  },
                  icon: Image.asset('assets/Shopping_Bag.png'),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StorePage(),
                        ));
                  },
                  icon: Image.asset('assets/User_Empty.png'),
                ),
                label: ''),
          ]),
    );
  }
}
