part of 'pages.dart';

class FoodPage extends StatefulWidget {
  FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              color: Colors.white,
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        'Let\'s get some foods',
                        style: greyFontStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://pbs.twimg.com/profile_images/748899967037677568/FwpUSOhe.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //// LIST OF FOOD
            Container(
              height: 255,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                left:
                                    (mockFoods.first == e) ? defaultMargin : 0,
                                right: defaultMargin,
                              ),
                              child: FoodCard(food: e),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            //// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Tatse', 'Popular', 'Recommanded'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    List<Food> foods = (selectedIndex == 0)
                        ? mockFoods
                        : (selectedIndex == 1)
                            ? []
                            : [];
                    return Column(
                      children: foods.map((e) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(
                            defaultMargin,
                            0,
                            defaultMargin,
                            16,
                          ),
                          child: FoodListItem(
                            food: e,
                            itemWidth: listItemWidth,
                          ),
                        );
                      }).toList(),
                    );
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
