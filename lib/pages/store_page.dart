import 'package:flutter/material.dart';
import 'package:tana_kala/widgets/widgets.dart';
import 'package:tana_kala/theme/colors.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(children: [
                  Positioned.fill(child: Image.asset('assets/store_image.png')),
                  Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.transparent],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.05, 0.9]))),
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
                  Text(
                    'فروشگاه پنو',
                    style: TextStyle(fontSize: 24),
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColors.secondaryTextColor2,
                    ),
                    Text(
                      'آدرس',
                      style: TextStyle(color: AppColors.secondaryTextColor2),
                    ),
                    Text('مشهد بلوار سرافرازان، سرافرازان 14'),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/greenrate.png'),
                        const Text('بر اساس 25 خرید ',
                            style:
                                TextStyle(color: AppColors.secondaryTextColor2))
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
                  ],
                ),
              ),
            ),
            const Divider(
              endIndent: 30,
              indent: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.bgDisabled,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    label: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: ' جستجو در میان لیست محصولات',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.secondaryTextColor)),
                        ],
                      ),
                    ),
                    prefixIcon: Image.asset('assets/Search.png',
                        color: AppColors.disabledTextColor),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/filter.png'),
                      const SizedBox(width: 10),
                      const Text('فیلتر'),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Image.asset('assets/menu.png')],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
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
                          const Text('جدیدترین'),
                          Image.asset('assets/arrow.png'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: GridView(
                  
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.618,
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
    );
  }
}
