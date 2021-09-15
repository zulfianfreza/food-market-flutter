part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function? buttonTap1;
  final Function? buttonTap2;

  const IllustrationPage({
    required this.title,
    required this.subtitle,
    required this.picturePath,
    required this.buttonTitle1,
    this.buttonTitle2,
    this.buttonTap1,
    this.buttonTap2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  picturePath,
                ),
              ),
            ),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle,
            style: greyFontStyle.copyWith(
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 45,
            margin: EdgeInsets.only(top: 30, bottom: 12),
            child: ElevatedButton(
              onPressed: () {
                buttonTap1!;
              },
              child: Text(
                buttonTitle1,
                style: blackFontStyle3.copyWith(
                  fontWeight: medium,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
            ),
          ),
          (buttonTap2 != null)
              ? Container(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      buttonTap2!;
                    },
                    child: Text(
                      '$buttonTitle2',
                      style: blackFontStyle3.copyWith(
                        fontWeight: medium,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff8D92A3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
