import 'package:flutter/material.dart';
import 'package:tana_kala/widgets/widgets.dart';
import 'package:tana_kala/pages/store_page.dart';
import 'package:tana_kala/theme/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late PageController _pageController;
  List<String> images = [
    'assets/Frame33786.png',
    'assets/Frame33786.png',
    'assets/Frame33786.png',
    'assets/Frame33786.png',
    'assets/Frame33786.png',
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'پیراهن پسرانه پیانو مدل 7109-93',
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StorePage(),
                ));
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      activePage = page;
                    });
                  },
                  physics: const BouncingScrollPhysics(),
                  itemCount: images.length,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return Container(child: Image.asset(images[pagePosition]));
                  }),
            ),
            // SmoothPageIndicator(
            //     controller: _pageController,
            //     count: 5,
            //     effect: const JumpingDotEffect(verticalOffset: 10)),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Image.asset('assets/Frame33773.png'),
                  const Spacer(),
                  const Text('۴.۵'),
                  Image.asset('assets/Group34623.png'),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Text('لباس مردانه / پیراهن پسرانه',
                    style: TextStyle(color: AppColors.secondaryTextColor2))),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Text('پیراهن پسرانه پیانو مدل 7109-93')),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                      '۷۷% (۳۰) نفر از خریداران این کالا را پیشنهاد کرده اند',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                  Image.asset('assets/Like.png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text('.'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    '۶ دیدگاه',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [Image.asset('assets/2.263.000.png')],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset('assets/toman.png'),
                  const Text('2.263.000'),
                  Image.asset('assets/Group33499.png')
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                      label: Text('سفید'),
                      selected: false,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      disabledColor: AppColors.primaryColor,
                      autofocus: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                        label: Text('سبز'),
                        selected: false,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        disabledColor: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                        label: Text('آبی'),
                        selected: false,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        disabledColor: Colors.white),
                  ),
                  Text(':رنگ'),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('سایز'),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                        label: Text('36'),
                        selected: false,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        disabledColor: AppColors.primaryColor),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                        label: Text('35'),
                        selected: false,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        disabledColor: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: ChoiceChip(
                        label: Text('36'),
                        selected: false,
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                        disabledColor: Colors.white),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            const SellerDetails(
                image: 'assets/Store.png', text: 'فروشنده: فروشگاه  پنو'),
            const SellerDetails(
                text: 'گارانتی اصالت کالا', image: 'assets/Shield_Check.png'),
            const SellerDetails(
                text: 'موجودی در  انبار فروشگاه',
                image: 'assets/Box_Perspective.png'),
            const SellerDetails(
                text: 'کد کالا : ۴۳۹۳۳۹۹۹ ', image: 'assets/Box.png'),
            const Divider(
              thickness: 10,
            ),
            const SellerDetails(
                text: 'درباره محصول', image: 'assets/Notebook.png'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: AspectRatio(
                  aspectRatio: 16 / 9, child: Image.asset('assets/vid.png')),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                  'سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: AppColors.secondaryTextColor2)),
            ),
            const Divider(
              thickness: 10,
            ),
            const SellerDetails(
                text: 'ویژگی های محصول', image: 'assets/bigbox.png'),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text('جین'),
                  Spacer(
                    flex: 1,
                  ),
                  Text('جنس',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text('ساده'),
                  Spacer(
                    flex: 1,
                  ),
                  Text('طرح',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text('مام استایل'),
                  Spacer(
                    flex: 1,
                  ),
                  Text('استایل لباس',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text('متوسط'),
                  Spacer(
                    flex: 1,
                  ),
                  Text('نوع فاق',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Text('دکمه'),
                  Spacer(
                    flex: 1,
                  ),
                  Text('نحوه بسته شدن',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            const SellerDetails(
                text: 'دیدگاه کاربران', image: 'assets/check.png'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    UserFeedBack(
                      color: Colors.red,
                      feedBack: 'خرید این محصول را پیشنهاد نمیکنم',
                      likeOrDisLike: 'assets/Dislike.png',
                      rate: 'assets/red_one.png',
                      title: 'راضی نبودم',
                    ),
                    UserFeedBack(
                        title: 'فوق الاده خوش فرم و راحت',
                        rate: 'assets/green_five.png',
                        feedBack: 'خرید این محصول را پیشنهاد نمیکنم',
                        likeOrDisLike: 'assets/Like.png',
                        color: Colors.green),
                  ],
                ),
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.chevron_left),
                  SellerDetails(
                      text: 'ثبت دیدگاه', image: 'assets/Chat_Circle_Add.png'),
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 16, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.chevron_left),
                  SellerDetails(
                      text: 'پرسش و پاسخ', image: 'assets/Chat_Chats.png'),
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 24, 8),
              child: Text('محصولات مشابه'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 8, 16),
              child: AspectRatio(
                aspectRatio: 16 / 9,
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
            BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [Image.asset('assets/2.263.000.png')],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Image.asset('assets/toman.png'),
                              const Text('2.263.000'),
                              Image.asset('assets/Group33499.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                AppColors.primaryColor)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text('افزودن به سبد خرید'),
                            Image.asset('assets/Shopping_Cart_Add.png')
                          ],
                        )),
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
