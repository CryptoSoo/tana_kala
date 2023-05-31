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
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
        ),
        Image.asset(image),
      ],
    );
  }
}

class ClothCategory extends StatelessWidget {
  final String? size;
  final String image;
  final String productName;
  final String price;
  final String store;

  const ClothCategory({
    this.size,
    required this.image,
    required this.productName,
    required this.price,
    required this.store,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            if (size != null)
              Positioned(
                right: 0,
                child: Container(
                  color: const Color(0x00586488),
                  height: 23,
                  width: 46,
                  child: Text(size!),
                ),
              ),
            Container(
              color: AppColors.bgStroke,
              height: 162,
              width: 166,
            ),
            Image.asset(image),
          ],
        ),
        Row(
          children: [
            Text(productName),
          ],
        ),
        Row(
          
          children: [Image.asset('assets/toman.png'), Text(price)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/Star.png'),
            
            const Text('۴.۸ '),
            const Text('(۲ نظر)'),
            
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text(store), const Text(':فروشنده')],
        )
      ],
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.arrow_back_sharp),
          Row(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(viewAll),
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
                  style: const TextStyle(fontSize: 24),
                ),
                if (subTitle != null)
                  Text(subTitle!, style: const TextStyle(fontSize: 12))
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(storeImage),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Text(storeCategory),
            ],
          ),
        ),
      ],
    );
  }
}
