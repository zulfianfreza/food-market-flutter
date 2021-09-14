part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;
  const CustomTabBar({
    this.selectedIndex = 0,
    required this.titles,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            height: 1,
            margin: EdgeInsets.only(top: 48),
            color: Color(0xffF2F2F2),
          ),
          Row(
            children: titles.map((e) {
              return Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        onTap(titles.indexOf(e));
                      },
                      child: Text(
                        e,
                        style: (titles.indexOf(e) == selectedIndex)
                            ? blackFontStyle3.copyWith(fontWeight: medium)
                            : greyFontStyle,
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 3,
                      margin: EdgeInsets.only(top: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.5),
                        color: (titles.indexOf(e) == selectedIndex)
                            ? Color(0xff020202)
                            : Colors.transparent,
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
