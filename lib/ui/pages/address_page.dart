part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String dropdownValue = 'Bandung';

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumberController = TextEditingController();
    TextEditingController cityController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: GeneralPage(
        title: 'Address',
        subtitle: 'Make sure it\' valid',
        onBackButtonPress: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                defaultMargin,
                26,
                defaultMargin,
                6,
              ),
              child: Text(
                'Phone Number',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your phone number',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                defaultMargin,
                26,
                defaultMargin,
                6,
              ),
              child: Text(
                'address',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your address',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                defaultMargin,
                16,
                defaultMargin,
                6,
              ),
              child: Text(
                'House Number',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: TextField(
                controller: houseNumberController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your house number',
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                defaultMargin,
                16,
                defaultMargin,
                6,
              ),
              child: Text(
                'City',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    print(dropdownValue);
                  });
                },
                items: <String>['Bandung', 'Jakarta', 'Surabaya']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: dropdownValue,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 24,
              ),
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(AddressPage());
                },
                child: Text(
                  'Continue',
                  style: blackFontStyle3.copyWith(
                    fontWeight: medium,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
