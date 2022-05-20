import 'package:auctionvillage/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

mixin AppAssets {
  static const ASSETS_DIR = 'assets';
  static const SVG_DIR = '$ASSETS_DIR/svgs';
  static const IMAGES_DIR = '$ASSETS_DIR/images';
  static const VIDEOS_DIR = '$ASSETS_DIR/videos';
  static const RAW_DIR = '$ASSETS_DIR/raw';
  // Sub-folders
  //////////////  IMAGES  ////////////
  static const String ONBOARDING_IMAGES_DIR = '$IMAGES_DIR/onboarding';
  static const String DASHBOARD_IMAGES_DIR = '$IMAGES_DIR/dashboard';
  static const String AVATAR_IMAGES_DIR = '$DASHBOARD_IMAGES_DIR/avatars';

  /////////////  SVGS /////////////
  static const String AUTH_SVG_DIR = '$SVG_DIR/auth';
  static const String DASHBOARD_SVG_DIR = '$SVG_DIR/dashboard';
  static const String DASHBOARD_LOGO_DIR = '$DASHBOARD_SVG_DIR/logos';
  static const String QUICK_ACTIONS_DIR = '$DASHBOARD_IMAGES_DIR/quick_actions';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  /// LOGO
  static const String logo = '$IMAGES_DIR/logo/logo.png';
  static const String launchIcon = '$IMAGES_DIR/logo/launch_icon.png';
  static const String _logoSVG = '$SVG_DIR/logo/logo.svg';

  // Lottie Json
  static const String checkAnimation = '$RAW_DIR/check_anim.json';
  static const String hoorayAnimation = '$RAW_DIR/hooray_lottie_anim.json';
  static const String bidHammer = '$RAW_DIR/bid-hammer.json';
  static const String hammerCoins = '$RAW_DIR/hammer-coins.json';
  static const String hammerPurple = '$RAW_DIR/hammer-purple.json';
  static const String hammerWhite = '$RAW_DIR/hammer-white.json';
  static const String countries = '$RAW_DIR/countries.json';

  /// USER
  static const String user = '$IMAGES_DIR/user.png';
  static const String unnamed = '$IMAGES_DIR/unnamed.png';
  static const String female = '$IMAGES_DIR/female.png';
  static const String avatarImg = '$IMAGES_DIR/avatar_png.png';

  /// DASHBOARD SVGS
  static const String hammerSVG = '$DASHBOARD_SVG_DIR/hammer.svg';
  static const String _hammerBig = '$DASHBOARD_SVG_DIR/hammer-big.svg';
  static const String categoryArtefact = '$DASHBOARD_SVG_DIR/category-artefact.svg';
  static const String categoryAutoMobile = '$DASHBOARD_SVG_DIR/category-automobile.svg';
  static const String categoryGeneral = '$DASHBOARD_SVG_DIR/category-general.svg';
  static const String categoryLuxury = '$DASHBOARD_SVG_DIR/category-luxury.svg';
  static const String categoryProperty = '$DASHBOARD_SVG_DIR/category-property.svg';
  static const String _creditCard = '$DASHBOARD_SVG_DIR/credit-card.svg';
  static const String _search = '$DASHBOARD_SVG_DIR/search.svg';
  static const String _sendMessage = '$DASHBOARD_SVG_DIR/send-message.svg';
  static const String shoppingBagSVG = '$DASHBOARD_SVG_DIR/shopping-bag.svg';
  static const String thumbsSVG = '$DASHBOARD_SVG_DIR/thumbs-up.svg';
  static const String bookmarkSVG = '$DASHBOARD_SVG_DIR/bookmark.svg';
  static const String _filter = '$DASHBOARD_SVG_DIR/filter.svg';
  static const String _featherSearch = '$DASHBOARD_SVG_DIR/feather_search.svg';
  static const String _comingSoon = '$DASHBOARD_SVG_DIR/coming_soon_chat.svg';

  /// DASHBOARD IMAGES
  static const String homeCarousel = '$DASHBOARD_IMAGES_DIR/home-carousel-bitmap.png';
  static const String cardAmericanExpress = '$DASHBOARD_IMAGES_DIR/card_logos/american_express.png';
  static const String cardMasterCard = '$DASHBOARD_IMAGES_DIR/card_logos/mastercard.png';
  static const String cardVisa = '$DASHBOARD_IMAGES_DIR/card_logos/visa.png';
  static const String cardVerve = '$DASHBOARD_IMAGES_DIR/card_logos/verve.png';
  static const String cardDiscover = '$DASHBOARD_IMAGES_DIR/card_logos/discover.png';
  static const String cardJCB = '$DASHBOARD_IMAGES_DIR/card_logos/jcb.png';
  static const String cardDinersClub = '$DASHBOARD_IMAGES_DIR/card_logos/diners_club.png';

  /////////////////////////////////////////////////////
  /////////////////////////////////////////////////////
  ///
  static const List<String> images = [
    logo,
    user,
    unnamed,
    female,
    avatarImg,
    homeCarousel,
  ];

  static const List<String> svgs = [
    _logoSVG,
    thumbsSVG,
    bookmarkSVG,
    hammerSVG,
    _hammerBig,
    categoryArtefact,
    categoryAutoMobile,
    categoryGeneral,
    categoryLuxury,
    categoryProperty,
    _creditCard,
    _search,
    _sendMessage,
    shoppingBagSVG,
    thumbsSVG,
    _filter,
    _featherSearch,
    _comingSoon,
  ];

  static SvgPicture logoSVG = SvgPicture.asset(
    _logoSVG,
    fit: BoxFit.contain,
  );

  static SvgPicture google = SvgPicture.asset(
    '$AUTH_SVG_DIR/google.svg',
    height: 23,
    width: 23,
    fit: BoxFit.contain,
  );

  static SvgPicture facebook([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/facebook.svg',
        height: 23,
        width: 23,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture emailRegular([Color? color]) => SvgPicture.asset(
        '$AUTH_SVG_DIR/mail_to.svg',
        height: 22,
        width: 22,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture cameraOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture cameraColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/camera_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryOutlined = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_outlined.svg',
    height: 25,
    width: 25,
    color: Colors.white,
    fit: BoxFit.contain,
  );

  static SvgPicture galleryColored = SvgPicture.asset(
    '$DASHBOARD_SVG_DIR/gallery_colored.svg',
    height: 25,
    width: 25,
    fit: BoxFit.contain,
  );

  static SvgPicture featherSearch([Size size = const Size(40, 40)]) => SvgPicture.asset(
        _featherSearch,
        height: size.height,
        width: size.width,
        color: App.resolveColor(
          Palette.neutralC7,
          dark: Colors.white70,
        ),
        fit: BoxFit.contain,
      );

  static SvgPicture hammerBig = SvgPicture.asset(
    _hammerBig,
    color: Colors.white24,
    fit: BoxFit.contain,
  );

  static SvgPicture hammer([Color? color, Size? size]) => SvgPicture.asset(
        hammerSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture creditCard = SvgPicture.asset(
    _creditCard,
    fit: BoxFit.contain,
  );

  static SvgPicture search = SvgPicture.asset(
    _search,
    fit: BoxFit.contain,
  );

  static SvgPicture sendMessage = SvgPicture.asset(
    _sendMessage,
    fit: BoxFit.contain,
  );

  static SvgPicture comingSoon = SvgPicture.asset(
    _comingSoon,
    fit: BoxFit.contain,
  );

  static SvgPicture shoppingBag([Color? color, Size? size]) => SvgPicture.asset(
        shoppingBagSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture bookmark([Color? color, Size? size]) => SvgPicture.asset(
        bookmarkSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );
  static SvgPicture thumbs([Color? color, Size? size]) => SvgPicture.asset(
        thumbsSVG,
        height: size?.height,
        width: size?.width,
        color: color,
        fit: BoxFit.contain,
      );

  static SvgPicture filter = SvgPicture.asset(
    _filter,
    color: Palette.accentColor,
    fit: BoxFit.contain,
  );
}
