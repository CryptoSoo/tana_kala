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
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: AppColors.bgStroke,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          Image.asset(image),
        ],
      ),
    );
  }
}

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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
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
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Container(
                              padding: EdgeInsets.all(5),
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
                children: [
                  Image.asset('assets/toman.png'),
                  Expanded(
                      child: Text(
                    price,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/Star.png'),
                    const Text('۴.۸ '),
                    const Text('(۲ نظر)'),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                        child: Text(
                      store!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textDirection: TextDirection.rtl,
                    )),
                    const Text(
                      ':فروشنده',
                      style: TextStyle(color: AppColors.secondaryTextColor2),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}

class FavBrands extends StatelessWidget {
  final String image;
  final String brandName;

  const FavBrands({
    super.key,
    required this.image,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset(image), const Spacer(), Text(brandName)],
    );
  }
}

class ProductsTitle extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String viewAll;
  const ProductsTitle(
      {super.key, required this.title, required this.viewAll, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.arrow_back_sharp,
            color: AppColors.secondaryTextColor2,
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 22),
                ),
                if (subTitle != null)
                  Text(subTitle!,
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.secondaryTextColor2))
              ],
            ),
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
    return Row(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(storeImage),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Frame33540.png'),
                  Row(
                    children: [
                      Text(storeName),
                      Image.asset(storeLogo),
                    ],
                  ),
                ],
              ),
              Text(storeCategory,
                  style: const TextStyle(
                      color: AppColors.secondaryTextColor2, fontSize: 12),
                  textDirection: TextDirection.rtl),
            ],
          ),
        ),
      ],
    );
  }
}

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
