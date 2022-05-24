import 'package:flutter/material.dart';
import 'package:redf/constants/widgets.dart';
import 'package:redf/constants/app_colors.dart';
import 'dropdownlist.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.appBackground,
      body: Container(
        color: AppColors.appBackground,
        child: Stack(
          children: [
            buildFullWidthImage(context, 'assets/background2.png'),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/home/usersmall.png',
                            scale: 0.8),
                            Container(
                              margin: const EdgeInsets.only(left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child:const DefaultTextStyle(
                                        style: TextStyle(fontSize: 18),
                                        child: Text('Hello, UserData.name'),
                                      )   ),
                                  Container(
                                      child:const DefaultTextStyle(
                                        style: TextStyle(fontSize: 12),
                                        child: Text('Thu. 25 Sep, 2022'),
                                      )   ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                         // margin: EdgeInsets.only(right: 10),
                          //margin: EdgeInsets.only(left: 80),
                          child: Image.asset('assets/home/notifications.png'),
                        ),
                      ],
                    ),
                  ),
                  DropDownList(),
                  // Container(
                  //   color: AppColors.mainColorLight,
                  //   margin: EdgeInsets.only(top: 10, right: 10),
                  //   child: ElevatedButton(
                  //    // style: ButtonStyle(backgroundColor: ),
                  //       onPressed: (){},
                  //       child: Row(
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Text('Next installment: XXXXXX KSA')
                  //             ],
                  //           )
                  //         ],
                  //       )
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
