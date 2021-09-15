part of 'widgets.dart';

class PaymentListItem extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle valueStyle;
  final bool number;

  const PaymentListItem({
    required this.title,
    required this.value,
    required this.valueStyle,
    this.number = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: greyFontStyle,
        ),
        Text(
          number
              ? NumberFormat.currency(
                  symbol: 'IDR ',
                  decimalDigits: 0,
                  locale: 'id-ID',
                ).format(int.parse(value))
              : value,
          style: valueStyle,
        ),
      ],
    );
  }
}
