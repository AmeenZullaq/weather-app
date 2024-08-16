import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/assets.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Image(
            height: MediaQuery.sizeOf(context).height * .35,
            width: double.infinity,
            fit: BoxFit.fill,
            image: const AssetImage(
              AssetsData.search1,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
