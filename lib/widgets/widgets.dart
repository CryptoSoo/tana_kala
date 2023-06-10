import 'package:flutter/material.dart';
import 'package:tana_kala/theme/colors.dart';

class FavList extends StatelessWidget {
  final String text;
  final String image;

  const FavList({
    required this.text,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.bgStroke, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        // mainAxisAlignment: MainAxihsAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8),
            child: Image.asset(image),
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}

List<FavList> favCloth = [
  const FavList(
    image: 'assets/image_1380.png',
    text: 'لباس زنانه',
  ),
  const FavList(text: 'لباس مردانه', image: 'assets/image_1381.png'),
  const FavList(text: 'لباس بچه گانه', image: 'assets/image_1382.png'),
  const FavList(text: 'لباس زنانه', image: 'assets/image_1380.png'),
  const FavList(text: 'لباس مردانه', image: 'assets/image_1381.png'),
  const FavList(text: 'لباس بچه گانه', image: 'assets/image_1383.png'),
];

class ClothCategory extends StatelessWidget {
  final String? size;
  final String image;
  final String productName;
  final String price;
  final String? store;

  const ClothCategory({
    this.size,
    required this.image,
    required this.productName,
    required this.price,
    this.store,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Positioned.fill(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: ColoredBox(color: Colors.grey.shade100))),
                  if (size != null)
                    Positioned(
                      right: 0,
                      top: 0,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Container(
                            padding: const EdgeInsets.all(5),
                            color: AppColors.bgDisabled,
                            child: Text(size!)),
                      ),
                    ),
                  Positioned.fill(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                productName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
                textDirection: TextDirection.rtl,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Image.asset('assets/toman.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('(۲ نظر)'),
                  const Text('۴.۸ '),
                  Image.asset('assets/Star.png'),
                ],
              ),
            ),
            if (store != null)
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
            if (store != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'فروشنده: ',
                    style: TextStyle(color: AppColors.secondaryTextColor2),
                  ),
                  Flexible(
                      child: Text(
                    store!,
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              )
          ],
        ),
      ),
    );
  }
}

List<ClothCategory> catList = [
  const ClothCategory(
    image: 'assets/image_16.png',
    price: '۲,۲۶۳,۰۰۰',
    productName: 'پیراهن پسرانه پیانو مدل 7109-93',
    size: 'تک سایز',
    store: 'فروشگاه اصلی ترناو',
  ),
  const ClothCategory(
    image: 'assets/image_18.png',
    price: '۲,۲۶۳,۰۰۰',
    productName: 'پیراهن پسرانه پیانو مدل 7109-93',
    size: 'تک سایز',
    store: 'فروشگاه اصلی ترناو',
  ),
  const ClothCategory(
    image: 'assets/image_16.png',
    price: '۲,۲۶۳,۰۰۰',
    productName: 'پیراهن پسرانه پیانو مدل 7109-93',
    size: 'تک سایز',
    store: 'فروشگاه اصلی ترناو',
  ),
  const ClothCategory(
    image: 'assets/image_18.png',
    price: '۲,۲۶۳,۰۰۰',
    productName: 'پیراهن پسرانه پیانو مدل 7109-93',
    size: 'تک سایز',
    store: 'فروشگاه اصلی ترناو',
  ),
  const ClothCategory(
    image: 'assets/image_16.png',
    price: '۲,۲۶۳,۰۰۰',
    productName: 'پیراهن پسرانه پیانو مدل 7109-93',
    size: 'تک سایز',
    store: 'فروشگاه اصلی ترناو',
  ),
];

class FavBrands extends StatelessWidget {
  final String image;

  const FavBrands({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const Spacer(),
      ],
    );
  }
}

List<FavBrands> favList = [
  const FavBrands(
    image: 'assets/hermes.png',
  ),
  const FavBrands(
    image: 'assets/chanel.png',
  ),
  const FavBrands(
    image: 'assets/lv.png',
  ),
  const FavBrands(
    image: 'assets/gucci.png',
  ),
  const FavBrands(
    image: 'assets/zara.png',
  ),
];

class ProductsTitle extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String viewAll;
  const ProductsTitle(
      {super.key, required this.title, required this.viewAll, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 17),
                ),
                if (subTitle != null)
                  Text(subTitle!,
                      style: const TextStyle(
                          fontSize: 6, color: AppColors.secondaryTextColor2))
              ],
            ),
          ),
          Row(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  viewAll,
                  style: const TextStyle(
                      fontSize: 10, color: AppColors.secondaryTextColor2),
                ),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_sharp,
            color: AppColors.secondaryTextColor2,
          ),
        ],
      ),
    );
  }
}

class BestStores extends StatelessWidget {
  final String storeImage;
  final String storeLogo;
  final String storeName;
  final String storeCategory;

  const BestStores({
    super.key,
    required this.storeImage,
    required this.storeLogo,
    required this.storeName,
    required this.storeCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(storeImage),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(storeLogo),
                const SizedBox(width: 5),
                Text(storeName),
              ],
            ),
            Image.asset('assets/Frame33540.png'),
          ],
        ),
        Text(
          storeCategory,
          style: const TextStyle(
              color: AppColors.secondaryTextColor2, fontSize: 8),
        ),
      ],
    );
  }
}

List<BestStores> bestStoresList = [
  const BestStores(
    storeCategory: 'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری',
    storeImage: 'assets/Rectangle9063.png',
    storeLogo: 'assets/Ellipse7.png',
    storeName: 'فروشگاه کارل',
  ),
  const BestStores(
      storeImage: 'assets/Rectangle9064.png',
      storeLogo: 'assets/Ellipse8.png',
      storeName: 'فروشگاه کارل',
      storeCategory: 'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری'),
  const BestStores(
      storeImage: 'assets/Rectangle9065.png',
      storeLogo: 'assets/Ellipse9.png',
      storeName: 'فروشگاه کارل',
      storeCategory: 'کیف و کفش، لباس زنانه، لباس بچگانه، شال و روسری')
];

class SellerDetails extends StatelessWidget {
  final String text;
  final String image;
  const SellerDetails({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text),
          const SizedBox(
            width: 10,
          ),
          Image.asset(image)
        ],
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
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey.shade200)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  const Text('۲۲ تیر ۱۴۰۱',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                  const Spacer(),
                  Text(title),
                  Image.asset(rate)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.grey.shade200,
                      child: const Text('خریدار',
                          style:
                              TextStyle(color: AppColors.secondaryTextColor2))),
                  const Text('علیرضا رودی',
                      style: TextStyle(color: AppColors.secondaryTextColor2))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      'چیزی تو عکس بود نبود واقعا کمر اندازه ولی مابقیش خعلی گشاد',
                      maxLines: 2,
                      textScaleFactor: 0.7,
                      style: TextStyle(color: AppColors.secondaryTextColor)),
                ],
              ),
            ),
            const Divider(
              endIndent: 16,
              indent: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text('سایز: ۳۴',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                  Spacer(
                    flex: 1,
                  ),
                  Text('فروشنده: فروشگاه پنو',
                      style: TextStyle(color: AppColors.secondaryTextColor2)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
    );
  }
}

class Banners extends StatelessWidget {
  final String image;
  const Banners({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image.asset(image),
      ),
    );
  }
}

List<ClothCategory> bagsList = [ const ClothCategory(
                        image: 'assets/bag1.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    const ClothCategory(
                        image: 'assets/bag2.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    const ClothCategory(
                        image: 'assets/bag1.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),
                    const ClothCategory(
                        image: 'assets/bag2.png',
                        productName: 'کیف زنانه مدل خاکستری',
                        price: '۲,۲۶۳,۰۰۰',
                        store: 'فروشگاه اصلی ترناو'),];