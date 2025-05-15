import 'package:ad_english_dictionary/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../core/common_widgets/icon_buttons.dart';
import '../../../core/common_widgets/logo_widget.dart';
import '../../../core/constant/constant.dart';
import '../../../core/routes/routes_name.dart';
import '../../../gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        title: LogoWidget(title: 'Home screen',),
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
                MenuCard(
                  icon: CardIcon(icon: Assets.dictionary.path),
                  label: "AI Dictionary",
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.aiDictionaryPage);
                  },
                ),
                SizedBox(height: 16),
                MenuCard(
                  icon: CardIcon(icon: Assets.ai.path),
                  label: "AI Center",
                  onTap: () {},
                ),
                SizedBox(height: 16),
                MenuCard(
                  icon: CardIcon(icon: Assets.bookSale.path),
                  label: "AI Translator",
                  onTap: () {},
                ),
                SizedBox(height: 16),
                MenuCard(
                  icon: CardIcon(icon: Assets.dictionary2.path),
                  label: "Fun & Learn",
                  onTap: () {},
                ),
                SizedBox(height: 16),
                MenuCard(
                  icon: CardIcon(icon: Assets.magicBook.path),
                  label: "Quotes",
                  onTap: () {},
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onTap;
  const MenuCard({
    required this.icon,
    required this.label,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width:18),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

