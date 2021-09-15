part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  const PaymentPage({
    required this.transaction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPress: true,
      backColor: Color(0xffFAFAFC),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 16,
            ),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      margin: EdgeInsets.only(
                        right: 12,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(transaction.food.picturePath),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.food.name,
                            style: blackFontStyle2.copyWith(fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            NumberFormat.currency(
                              symbol: 'IDR ',
                              decimalDigits: 0,
                              locale: 'id-Id',
                            ).format(transaction.food.price),
                            style: greyFontStyle,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${transaction.quantity} Items',
                      style: greyFontStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 8,
                  ),
                  child: Text(
                    'Details Transaction',
                    style: blackFontStyle3,
                  ),
                ),
                PaymentListItem(
                  title: transaction.food.name,
                  value: transaction.total.toString(),
                  valueStyle: blackFontStyle3,
                  number: true,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Driver',
                  value: '50000',
                  valueStyle: blackFontStyle3,
                  number: true,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Tax 10%',
                  value: ((transaction.total * 0.1).toInt()).toString(),
                  valueStyle: blackFontStyle3,
                  number: true,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Total Price',
                  value: (50000 + (transaction.total * 1.1).toInt()).toString(),
                  valueStyle: blackFontStyle3.copyWith(
                    color: Color(0xff1abc9c),
                    fontWeight: medium,
                  ),
                  number: true,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: defaultMargin,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 16,
            ),
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivered to:',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                PaymentListItem(
                  title: 'Name',
                  value: 'Julian Reza',
                  valueStyle: blackFontStyle3,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Name',
                  value: 'Chou Tzuyu',
                  valueStyle: blackFontStyle3,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Phone No.',
                  value: '0899917881',
                  valueStyle: blackFontStyle3,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'Address',
                  value: 'Sodong City',
                  valueStyle: blackFontStyle3,
                ),
                SizedBox(height: 6),
                PaymentListItem(
                  title: 'City',
                  value: 'Bandung',
                  valueStyle: blackFontStyle3,
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            margin: EdgeInsets.only(
              bottom: defaultMargin,
            ),
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Checkout Now',
                style: blackFontStyle3.copyWith(
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
