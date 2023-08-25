// import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import '../../../models/Product.dart';
// import '../../details/details_screen.dart';
// import 'categorries.dart';
// import 'item_card.dart';

// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: Text(
//             "Women",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleLarge!
//                 .copyWith(fontWeight: FontWeight.bold),
//           ),
//         ),
//         const Categories(),
//         // slide image fro model
//         FanCarouselImageSlider(
//           imagesLink: sampleImages,
//           isAssets: false,
//           autoPlay: true,

//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//             child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: kDefaultPaddin,
//                   crossAxisSpacing: kDefaultPaddin,
//                   childAspectRatio: 0.75,
//                 ),
//                 itemBuilder: (context, index) => ItemCard(
//                       product: products[index],
//                       press: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => DetailsScreen(
//                               product: products[index],
//                             ),
//                           )),
//                     )),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
// import 'package:flutter/material.dart';

// import '../../../constants.dart';
// import '../../../models/Product.dart';
// import '../../details/details_screen.dart';
// import 'categorries.dart';
// import 'item_card.dart';

// class Body extends StatelessWidget {
//   const Body({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // Use ListView instead of Column
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: Text(
//             "Women",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleLarge!
//                 .copyWith(fontWeight: FontWeight.bold),
//           ),
//         ),
//         const Categories(),
//         // slide image from model
//         FanCarouselImageSlider(
//           imagesLink: sampleImages,
//           isAssets: false,
//           autoPlay: true,
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
//           child: GridView.builder(
//             shrinkWrap:
//                 true, // Use shrinkWrap to make the GridView scrollable inside ListView
//             itemCount: products.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: kDefaultPaddin,
//               crossAxisSpacing: kDefaultPaddin,
//               childAspectRatio: 0.75,
//             ),
//             itemBuilder: (context, index) => ItemCard(
//               product: products[index],
//               press: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailsScreen(
//                     product: products[index],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../details/details_screen.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        FanCarouselImageSlider(
          imagesLink: sampleImages,
          isAssets: false,
          autoPlay: true,
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
