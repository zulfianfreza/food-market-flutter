part of 'widgets.dart';

class ProfileListItem extends StatelessWidget {
  final String title;
  const ProfileListItem({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: blackFontStyle2,
          ),
          Icon(
            Icons.chevron_right,
          ),
        ],
      ),
    );
  }
}
