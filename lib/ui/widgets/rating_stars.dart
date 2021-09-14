part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;

  const RatingStars({this.rate = 0, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();
    return Row(
      children: List<Widget>.generate(
            5,
            (index) => Icon(
              (index < numberOfStars) ? Icons.star : Icons.star_outline,
              size: 16,
              color: mainColor,
            ),
          ) +
          [
            SizedBox(width: 4),
            Text(
              rate.toString(),
              style: greyFontStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
    );
  }
}
