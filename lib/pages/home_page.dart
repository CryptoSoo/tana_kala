import 'package:flutter/material.dart';

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
        title: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: const SearchBar(
            elevation: MaterialStatePropertyAll(0),
            leading: Text(
              'جستجو در تاناکالا'
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
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
            const ProductsTitle(
                title: 'دسته بندی های منتخب', viewAll: 'مشاهده همه'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 16, 8),
              child: Container(
                color: const Color(0x00f7fafc),
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
            const ProductsTitle(
                title: 'پیراهن مردانه',
                viewAll: 'مشاهده همه',
                subTitle: 'بر اساس بازدید های اخیر شما'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 8, 16),
              child: AspectRatio(
                aspectRatio:16/9,
                child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ClothCategory(
                      image: 'assets/image_16.png',
                      price: '۲,۲۶۳,۰۰۰',
                      productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                      size: 'تک سایز',
                      store: 'فروشگاه اصلی ترناو',
                    ),
                    ClothCategory(
                      image: 'assets/image_18.png',
                      price: '۲,۲۶۳,۰۰۰',
                      productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                      size: 'تک سایز',
                      store: 'فروشگاه اصلی ترناو',
                    ),
                    ClothCategory(
                      image: 'assets/image_16.png',
                      price: '۲,۲۶۳,۰۰۰',
                      productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                      size: 'تک سایز',
                      store: 'فروشگاه اصلی ترناو',
                    ),
                    ClothCategory(
                      image: 'assets/image_18.png',
                      price: '۲,۲۶۳,۰۰۰',
                      productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                      size: 'تک سایز',
                      store: 'فروشگاه اصلی ترناو',
                    ),
                    ClothCategory(
                      image: 'assets/image_16.png',
                      price: '۲,۲۶۳,۰۰۰',
                      productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                      size: 'تک سایز',
                      store: 'فروشگاه اصلی ترناو',
                    ),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset('assets/image1378.png'),
            ),
            const ProductsTitle(
              title: 'برند های محبوب تانا کالا',
              viewAll: 'مشاهده تمامی برند های محبوب',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 8, 16),
              child: SizedBox(
                height: 119,
                width: double.infinity,
                child: ListView(
                  reverse: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FavBrands(
                      brandName: 'Hermès',
                      image: 'assets/hermes.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FavBrands(
                      brandName: 'Chanel',
                      image: 'assets/chanel.png',
                    ),
                    FavBrands(
                      brandName: 'Louis Vuitton',
                      image: 'assets/lv.png',
                    ),
                    FavBrands(
                      brandName: 'Gucci',
                      image: 'assets/gucci.png',
                    ),
                    FavBrands(
                      brandName: 'Zara',
                      image: 'assets/zara.png',
                    ),
                  ],
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
              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              child: AspectRatio(
                aspectRatio: 2,                child: ListView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    BestStores(
                      storeCategory:
                          'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری',
                      storeImage: 'assets/Rectangle9063.png',
                      storeLogo: 'assets/Ellipse7.png',
                      storeName: 'فروشگاه کارل',
                    ),
                    BestStores(
                        storeImage: 'assets/Rectangle9064.png',
                        storeLogo: 'assets/Ellipse8.png',
                        storeName: 'فروشگاه کارل',
                        storeCategory:
                            'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری'),
                    BestStores(
                        storeImage: 'assets/Rectangle9065.png',
                        storeLogo: 'assets/Ellipse9.png',
                        storeName: 'فروشگاه کارل',
                        storeCategory:
                            'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری')
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset('assets/image34.png'),
            ),
            const ProductsTitle(
              title: 'کیف های زنانه',
              viewAll: 'مشاهده همه',
              subTitle: 'بر اساس بازدید های اخیر شما',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  children: const [
                    ClothCategory(
                        image: 'assets/bag1.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/bag2.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/bag1.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    ClothCategory(
                        image: 'assets/bag2.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset('assets/image31.png'),
            ),
            const ProductsTitle(
              title: 'لباس های زنانه',
              viewAll: 'مشاهده همه',
              subTitle: 'بر اساس بازدید های اخیر شما',
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  reverse: true,
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
            const ProductsTitle(
                title: 'منتخب محصولات تانا کالا', viewAll: 'مشاهده همه'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              child: AspectRatio(
                  aspectRatio: 1.5,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
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
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 3, items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset('assets/User_Empty.png'), label: ''),
        BottomNavigationBarItem(
            icon: Image.asset('assets/Shopping_Bag.png'), label: ''),
        BottomNavigationBarItem(
            icon: Image.asset('assets/Search.png'), label: ''),
        BottomNavigationBarItem(
            icon: Image.asset('assets/Home_Empty.png'), label: 'صفحه اصلی'),
      ]),
    );
  }
}
