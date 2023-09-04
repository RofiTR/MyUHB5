part of 'pages.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key:key);

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea (
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/uhb.png', height: 333,fit: BoxFit.fill),
          SizedBox(
              height: 15,
            ),
            Text(
              "Welcome", 
              style: dangerTextStyle, 
              textAlign: TextAlign.center,
              ),
          SizedBox(
              height: 15,
            ),
            Text(
              "Labore aliquip ex ullamco dolore \n id nostrud duis elit non \n voluptate amet culpa.", 
              style: whiteTextStyle.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
              ),
          SizedBox(
            height: 51,
          ),
          Container(
            height : 60,
            width: MediaQuery.of(context).size.width -2 * defaultMargin,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Create Account',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: primaryColor),
                ), style: ElevatedButton.styleFrom(primary: secondaryColor, shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))))),
          SizedBox(
            height: 15,
          ),
          Container(
            height : 60,
            width: MediaQuery.of(context).size.width -2 * defaultMargin,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'login',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: secondaryColor),
                ), style: ElevatedButton.styleFrom(primary: primaryColor, shape:  RoundedRectangleBorder(
                  side: BorderSide(color: secondaryColor, width: 3),
                  borderRadius: BorderRadius.circular(15))))),
              Text('All Right Reserved @2021',
              textAlign: TextAlign.center,
              style: 
              whiteTextStyle.copyWith(color: secondaryColor, fontSize: 11),
              ),
              SizedBox(
                height: defaultMargin,
              )
          ],
        ),
      ),
    );
  }
}