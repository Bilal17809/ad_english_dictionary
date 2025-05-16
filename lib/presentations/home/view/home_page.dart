import 'package:ad_english_dictionary/core/theme/app_styles.dart';
import 'package:ad_english_dictionary/extension/extension.dart';
import 'package:ad_english_dictionary/presentations/ai_translator/view/ai_translator_page.dart';
import 'package:flutter/material.dart';
import '../../../core/common_widgets/icon_buttons.dart';
import '../../../core/common_widgets/logo_widget.dart';
import '../../../core/common_widgets/round_image.dart';
import '../../../core/common_widgets/textform_field.dart';
import '../../../core/common_widgets/vertical_line.dart';
import '../../../core/constant/constant.dart';
import '../../../core/routes/routes_name.dart';
import '../../../core/theme/app_colors.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp,vertical:kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchWord(),
                  SizedBox(height: 16),
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
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>AiTranslatorPage()));
                    },
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

class SearchWord extends StatelessWidget {
  const SearchWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedDecoration,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  hintText: "Search Word Here...",
                )
              ),
              AnimatedRoundedButton(
                backgroundColor: dividerColor,
                child: Icon(Icons.keyboard_voice, color: kBlue),
                onTap: () {
                  print("Search mic tapped");
                },
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset( Assets.magicBook.path,
                    height: 35,),
                    const SizedBox(height: 8),
                    Text(
                      "Dictionary",
                      textAlign: TextAlign.center,
                        style:context.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ],
                ),
              ),
              const VerticalDividerWidget(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset( Assets.magicBook.path,
                      height: 35,),
                  const SizedBox(height: 8),
                    Text(
                      "Translator",
                      textAlign: TextAlign.center,
                        style:context.textTheme.labelSmall?.
                        copyWith(
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ],
                ),
              ),
              const VerticalDividerWidget(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset( Assets.magicBook.path,
                      height: 35,),
                  const SizedBox(height: 8),
                    Text(
                      "Conversations",
                      textAlign: TextAlign.center,
                      style:context.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w600
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
