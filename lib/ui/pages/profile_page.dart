part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 32),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/photo_border.png',
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://pbs.twimg.com/profile_images/748899967037677568/FwpUSOhe.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Chou Tzuyu',
                  style: blackFontStyle2.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'choutzuyu@blackpink.com',
                  style: greyFontStyle.copyWith(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultMargin,
        ),
        Container(
          padding: EdgeInsets.only(
            bottom: 16,
          ),
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                titles: ['Account', 'FoodMarket'],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                selectedIndex: selectedIndex,
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: (selectedIndex == 0)
                    ? Column(
                        children: [
                          ProfileListItem(title: 'Edit Profile'),
                          ProfileListItem(title: 'Home Address'),
                          ProfileListItem(title: 'Security'),
                          ProfileListItem(title: 'Payments'),
                        ],
                      )
                    : Column(
                        children: [
                          ProfileListItem(title: 'Rate App'),
                          ProfileListItem(title: 'Help Center'),
                          ProfileListItem(title: 'Privacy & Policy'),
                          ProfileListItem(title: 'Terms & Conditions'),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
