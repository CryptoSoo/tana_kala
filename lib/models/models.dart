import 'package:flutter/material.dart';

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
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5),

      child: Padding(
        padding: const EdgeInsets.all(4),
        child: AspectRatio(
          aspectRatio: 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    if (size != null)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Text(size!),
                      ),
                  
                    Positioned.fill(child: Image.asset(image,fit: BoxFit.contain,),)
                  ],
                ),
              ),
              const Spacer(),
              Text(productName,maxLines: 2,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.bodySmall,textDirection: TextDirection.rtl,),
           
              Row(
                children: [Image.asset('assets/toman.png'), Expanded(child: Text(price,overflow: TextOverflow.ellipsis,))],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/Star.png'),
                  const Text('۴.۸ '),
                  const Text('(۲ نظر)'),
                ],
              ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
              if (store != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Flexible(child: Text(store!,maxLines: 1,textDirection: TextDirection.rtl,)), const Text(':فروشنده')],
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

class SellerDetails extends StatelessWidget {

  
  final String text;
  final String image;
  const SellerDetails({
    super.key, required this.text, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text(text),
      SizedBox(width: 10,),
      Image.asset(image)
    ],),);
  }
}
