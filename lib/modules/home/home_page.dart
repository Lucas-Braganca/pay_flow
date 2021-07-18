import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';
import 'package:pay_flow/shared/widgets/barcode_scanner/barcode_scanner_button.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    Container(color: Colors.red),
    Container(
      color: Colors.blue,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                  text: 'Olá, ',
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: 'Lucas', style: TextStyles.titleBoldBackground)
                  ])),
              subtitle: Text('Mantenha suas contas em dia',
                  style: TextStyles.captionShape),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
      body: pages[homeController.currentPage],
      bottomNavigationBar: Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    print('clicou home');
                    homeController.setPage(0);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.home,
                    color: AppColors.primary,
                  )),
              BarcodeScannerButton(onTap: (){
                Navigator.pushNamed(context, '/barcode_scanner');
              },),
              IconButton(
                  onPressed: () {
                    homeController.setPage(1);
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.description_outlined,
                    color: AppColors.body,
                  )),
            ],
          )),
    );
  }
}
