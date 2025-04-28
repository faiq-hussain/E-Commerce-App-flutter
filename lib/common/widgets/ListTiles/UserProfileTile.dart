import 'package:ecommerce_app/common/widgets/Images/CustomCircularImage.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    this.onTap,
    super.key,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: CustomCircularImage(
          padding: 0,
          width: 50,
          height: 50,
          isNetworkImage: true,
          image:
              "https://media.licdn.com/dms/image/v2/D4D03AQGpraJvt5Dj7Q/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1704352070580?e=1730937600&v=beta&t=05N0m2-wK0NpBOT5gbo9ecpk_4tgn9tqUN9ys19iRXA",
        ),
        title: Text(
          "Faiq Hussain",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.white),
        ),
        subtitle: Text(
          "faiqhussain@gmail.com",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: AppColors.white),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.edit,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
