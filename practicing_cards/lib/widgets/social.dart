import 'package:flutter/material.dart';
import 'package:practicing_cards/icons/icons.dart';

enum SocialType { google, facebook, twitter }

class SocialButton extends StatelessWidget {
  final SocialType social;
  final VoidCallback onPressed;

  const SocialButton({Key? key, required this.social, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    switch (social) {
      case SocialType.google:
        socialIcon = AppIcons.googleIcon;
        break;
      case SocialType.facebook:
        socialIcon = AppIcons.facebookIcon;
        break;
      case SocialType.twitter:
        socialIcon = AppIcons.twitterIcon;
        break;
      default:
        socialIcon = AppIcons.googleIcon;
        break;
    }

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.2)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
        child: Image(
          image: socialIcon,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
