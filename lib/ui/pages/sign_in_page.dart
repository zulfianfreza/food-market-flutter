part of 'pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: GeneralPage(
        title: 'Sign In',
        subtitle: 'Find your best ever meal',
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
                'Email Address',
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
                controller: emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address',
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
                'Password',
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
                controller: passwordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your password',
                ),
                obscureText: true,
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
                onPressed: () {},
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        'Sign In',
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
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 16,
              ),
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SignUpPage());
                },
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    fontWeight: medium,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: greyColor,
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
