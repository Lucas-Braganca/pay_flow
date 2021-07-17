import 'package:flutter/material.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                 text: 'Olá, ', style: TextStyles.titleRegular,
                 children: [
                   TextSpan(text: 'Lucas', style: TextStyles.titleBoldBackground)
                 ] 
                )
              ),
              subtitle: Text('Mantenha suas contas em dia', style: TextStyles.captionShape),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
    );
  }
}
