import 'package:chatgpt/constant/colours.dart';
import 'package:chatgpt/theme/app_themes.dart';
import 'package:chatgpt/theme/theme_bloc.dart';
import 'package:chatgpt/widget/options_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

import 'constant/spacing.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: [
              InkWell(
                onTap: () {
                  if (state.themeType == AppTheme.darkTheme) {
                    context.read<ThemeBloc>().add(ToLight());
                  } else {
                    context.read<ThemeBloc>().add(ToDark());
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.light_mode,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logo.svg',
                  width: MediaQuery.of(context).size.width / 2,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(
                  height: kSpacingBig,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    OptionButton(
                      title: 'Image Generation',
                      icon: Typicons.th_large_outline,
                    ),
                    OptionButton(
                      title: 'Text Completion',
                      icon: Typicons.doc_text,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
