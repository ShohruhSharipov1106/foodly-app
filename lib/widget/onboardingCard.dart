import 'package:foodly_app/constants/imports.dart';

Column onBoardCard(
  BuildContext context,
  double imagePaddingRight,
  double imagePaddingLeft,
  double imagePaddingTop,
  double imagePaddingBottom,
  String image,
  double imageHeight,
  double imageWidth,
  double cardTitlePadding,
  String cardTitle,
  double cardSubtitlePaddingRight,
  double cardSubtitlePaddingLeft,
  double cardSubtitlePaddingTop,
  double cardSubtitlePaddingBottom,
  String cardSubtitle,
) {
  return Column(
    children: [
      _illustrations(
        imagePaddingRight,
        imagePaddingLeft,
        imagePaddingTop,
        imagePaddingBottom,
        image,
        imageWidth,
        imageHeight,
      ),
      _boldText(
        context,
        cardTitlePadding,
        cardTitle,
      ),
      _subtitle(
        context,
        cardSubtitlePaddingRight,
        cardSubtitlePaddingLeft,
        cardSubtitlePaddingTop,
        cardSubtitlePaddingBottom,
        cardSubtitle,
      ),
      _indicator(context),
    ],
  );
}

Padding _subtitle(
  BuildContext context,
  double cardSubtitlePaddingRight,
  double cardSubtitlePaddingLeft,
  double cardSubtitlePaddingTop,
  double cardSubtitlePaddingBottom,
  String cardSubtitle,
) {
  return Padding(
    padding: EdgeInsets.only(
      right: cardSubtitlePaddingRight,
      left: cardSubtitlePaddingLeft,
      top: cardSubtitlePaddingTop,
      bottom: cardSubtitlePaddingBottom,
    ),
    child: Text(
      cardSubtitle,
      style: Theme.of(context).textTheme.subtitle1,
    ),
  );
}

Padding _boldText(
  BuildContext context,
  double cardTitlePadding,
  String cardTitle,
) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: cardTitlePadding,
    ),
    child: Text(
      cardTitle,
      style: Theme.of(context).textTheme.headline1,
    ),
  );
}

Padding _illustrations(
  double imagePaddingRight,
  double imagePaddingLeft,
  double imagePaddingTop,
  double imagePaddingBottom,
  String image,
  double imageWidth,
  double imageHeight,
) {
  return Padding(
    padding: EdgeInsets.only(
      right: imagePaddingRight,
      left: imagePaddingLeft,
      top: imagePaddingTop,
      bottom: imagePaddingBottom,
    ),
    child: SvgPicture.asset(
      image,
      width: imageWidth,
      height: imageHeight,
      fit: BoxFit.cover,
    ),
  );
}

Padding _indicator(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: getWidth(167.0),
    ),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: context.watch<OnBoardingProvider>().kActiveIndex == 1
                ? kActiveColor
                : kBodyTextColor.withOpacity(0.2),
          ),
          height: getHeight(5.0),
          width: getWidth(8.0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: context.watch<OnBoardingProvider>().kActiveIndex == 2
                ? kActiveColor
                : kBodyTextColor.withOpacity(0.2),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: getWidth(8.0),
          ),
          height: getHeight(5.0),
          width: getWidth(8.0),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: context.watch<OnBoardingProvider>().kActiveIndex == 3
                ? kActiveColor
                : kBodyTextColor.withOpacity(0.2),
          ),
          height: getHeight(5.0),
          width: getWidth(8.0),
        ),
      ],
    ),
  );
}
