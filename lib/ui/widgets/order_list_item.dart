part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  final Transaction transaction;
  final double itemWidth;

  const OrderListItem({
    required this.transaction,
    this.itemWidth = double.infinity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(
                transaction.food.picturePath,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${transaction.food.name} ',
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${transaction.quantity} items ' +
                    NumberFormat.currency(
                      symbol: 'IDR ',
                      decimalDigits: 0,
                      locale: 'id-ID',
                    ).format(transaction.total),
                style: greyFontStyle.copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              convertDateTime(transaction.dateTime),
              style: greyFontStyle.copyWith(
                fontSize: 12,
              ),
            ),
            (transaction.status == TransactionStatus.cancelled)
                ? Text(
                    'Cancelled',
                    style: greyFontStyle.copyWith(
                      fontSize: 10,
                    ),
                  )
                : (transaction.status == TransactionStatus.pending)
                    ? Text(
                        'Pending',
                        style: greyFontStyle.copyWith(
                          fontSize: 10,
                        ),
                      )
                    : (transaction.status == TransactionStatus.on_delivery)
                        ? Text(
                            'On Delivery',
                            style: greyFontStyle.copyWith(
                              fontSize: 10,
                              color: Color(0xff1ABC9C),
                            ),
                          )
                        : SizedBox(),
          ],
        ),
      ],
    );
  }

  String convertDateTime(DateTime dateTime) {
    String month;
    switch (dateTime.month) {
      case 1:
        month = 'Jan';
        break;
      case 2:
        month = 'Feb';
        break;
      case 3:
        month = 'Mar';
        break;
      case 4:
        month = 'Apr';
        break;
      case 5:
        month = 'Mei';
        break;
      case 6:
        month = 'Jun';
        break;
      case 7:
        month = 'Jul';
        break;
      case 8:
        month = 'Agu';
        break;
      case 9:
        month = 'Sep';
        break;
      case 10:
        month = 'Okt';
        break;
      case 11:
        month = 'Nov';
        break;
      default:
        month = 'Des';
    }
    return month + ' ${dateTime.day}, ${dateTime.hour}:${dateTime.minute}';
  }
}
