import 'package:ad_english_dictionary/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../core/common_widgets/icon_buttons.dart';
import '../../../core/common_widgets/logo_widget.dart';
import '../../../core/constant/constant.dart';

class AiDictionaryPage extends StatelessWidget {
  const AiDictionaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        title: LogoWidget(title: 'AI Dictionary',),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ],
            ),
          ),
        ),
      ),
    );
  }
}


