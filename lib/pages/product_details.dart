import 'package:flutter/material.dart';
import 'package:tana_kala/models/models.dart';
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
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: const Icon(Icons.favorite_border, color: Colors.black),
        actions: const [Icon(Icons.arrow_forward_sharp, color: Colors.black)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
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
                      return Container(
                          child: Image.asset(images[pagePosition]));
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/Group34623.png'),
                  const Text('۴.۵'),
                  const Spacer(),
                  Image.asset('assets/Frame33773.png'),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Text('لباس مردانه / پیراهن پسرانه')),
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
                      '۷۷% (۳۰) نفر از خریداران این کالا را پیشنهاد کرده اند'),
                  Image.asset('assets/Like.png'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text('.'),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text('۶ دیدگاه')
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
              ),
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
                  Text('جنس'),
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
                  Text('طرح'),
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
                  Text('استایل لباس'),
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
                  Text('نوع فاق'),
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
                  Text('نحوه بسته شدن'),
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            const SellerDetails(
                text: 'دیدگاه کاربران', image: 'assets/check.png'),
            const UserFeedBack(
              color: Colors.red,
              feedBack: 'خرید این محصول را پیشنهاد نمیکنم',
              likeOrDisLike: 'assets/Dislike.png',
              rate: 'assets/red_one.png',
              title: 'راضی نبودم',
            ),
            const UserFeedBack(
                title: 'فوق الاده خوش فرم و راحت',
                rate: 'assets/green_five.png',
                feedBack: 'خرید این محصول را پیشنهاد نمیکنم',
                likeOrDisLike: 'assets/Like.png',
                color: Colors.green),
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
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.primaryColor)
                        ),
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

class UserFeedBack extends StatelessWidget {
  final String title;
  final String rate;
  final String feedBack;
  final String likeOrDisLike;
  final Color color;

  const UserFeedBack({
    super.key,
    required this.title,
    required this.rate,
    required this.feedBack,
    required this.likeOrDisLike,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
      child: AspectRatio(
          aspectRatio: 16 / 9,
          child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                AspectRatio(
                  aspectRatio: 1.5,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade200)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Row(
                            children: [
                              const Text('۲۲ تیر ۱۴۰۱'),
                              const Spacer(),
                              Text(title),
                              Image.asset(rate)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  color: Colors.grey.shade200,
                                  child: const Text('خریدار')),
                              const Text('علیرضا رودی')
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'چیزی تو عکس بود نبود واقعا کمر اندازه ولی مابقیش خعلی گشاد',
                                maxLines: 2,
                                textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          endIndent: 16,
                          indent: 16,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Spacer(
                                flex: 3,
                              ),
                              Text('سایز: ۳۴'),
                              Spacer(
                                flex: 1,
                              ),
                              Text('فروشنده: فروشگاه پنو'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                feedBack,
                                style: TextStyle(color: color),
                              ),
                              Image.asset(likeOrDisLike)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ])),
    );
  }
}
