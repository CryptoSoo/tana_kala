import 'package:flutter/material.dart';
import 'package:tana_kala/models/models.dart';
import 'package:tana_kala/theme/colors.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Stack(children: [
                    Positioned(child: Image.asset('assets/store_image.png')),
                    Positioned(
                        bottom: 0,
                        right: 15,
                        child: Image.asset('assets/circleavatar.png')),
                  ])),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border),
                    Text(
                      'فروشگاه پنو',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('مشهد بلوار سرافرازان، سرافرازان 14'),
                      Text(
                        'آدرس',
                        style: TextStyle(color: AppColors.secondaryTextColor2),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.secondaryTextColor2,
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16,0),
                child: AspectRatio(
                  aspectRatio: 2 / 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('روش ارسال',
                              style: TextStyle(
                                  color: AppColors.secondaryTextColor2)),
                          Text('پست ، تیپاکس'),
                        ],
                      ),
                      const VerticalDivider(
                        endIndent: 30,
                        indent: 30,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('هزینه ارسال',
                              style: TextStyle(
                                  color: AppColors.secondaryTextColor2)),
                          Text('۲۵،۰۰۰ تومان'),
                        ],
                      ),
                      const VerticalDivider(
                        endIndent: 30,
                        indent: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/greenrate.png'),
                          const Text('بر اساس 25 خرید ',
                              style: TextStyle(
                                  color: AppColors.secondaryTextColor2))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                endIndent: 30,
                indent: 30,
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: SearchBar(
                  hintText: 'جستجو در میان لیست محصولات',
                  leading: Icon(Icons.search_sharp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Row(
                              children: [
                                Text('مرتب سازی بر اساس',
                                    style: TextStyle(
                                        color: AppColors.secondaryTextColor2)),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/arrow.png'),
                                const Text('جدیدترین')
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Image.asset('assets/menu.png')],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('فیلتر'),
                        const SizedBox(width: 10),
                        Image.asset('assets/filter.png'),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(16),
                child: AspectRatio(
                  aspectRatio: 0.9,
                  child: GridView(
                    
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    scrollDirection: Axis.vertical,
                    children: const [
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                        
                      ),
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                      ),
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                      ),
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                      ),
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                      ),
                      ClothCategory(
                        image: 'assets/image_16.png',
                        price: '۲,۲۶۳,۰۰۰',
                        productName: 'پیراهن پسرانه پیانو مدل 7109-93',
                        size: 'تک سایز',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
