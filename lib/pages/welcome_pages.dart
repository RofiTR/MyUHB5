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
              onPressed: () {
               //NOTE: TAMPILKAN MODAL REGISTER
               showModalBottomSheet(
                isScrollControlled: true,
                context: context, builder: (context){
                  return StatefulBuilder(
                    builder: 
                    (BuildContext context, StateSetter setState) {
                    return Wrap(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Container( 
                            // margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                            decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(46),
                            topLeft: Radius.circular(46))),
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: defaultMargin),
                              child: Column (
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //JARAK
                              SizedBox(height: 25,),
                                Row(

                                  children: [
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("helo...", style: whiteTextStyle.copyWith(fontSize: 20, color: blackColor),
                                      ),
                                      Text("register", style: whiteTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 30, color: blackColor),
                                      ),
                            
                                    ],
                                  ),
                                  Spacer(),
                                  Center(
                                    child: InkWell
                                    (onTap: (){
                                      //KETIKA ICON DI TEKAN 
                                      Navigator.pop(context);
                                    },
                                      child: Image.asset('assets/images/close.png', 
                                      height : 30, 
                                      width: 30, 
                                      ),
                                    ),
                                  )
                                  
                                ],
                                ),
                              SizedBox()
                              ],
                              ),
                            )
                          ),
                        )
                      ],
                    );
                  },
                  );
                }
               );
              },
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