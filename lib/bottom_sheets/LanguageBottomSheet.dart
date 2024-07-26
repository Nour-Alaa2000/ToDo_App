import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/tabs/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/my_provider.dart';

// class LanguageBottomSheet extends StatelessWidget {
//   const LanguageBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("English",
//                   style: TextStyle(fontSize: 30, color: AppColors.primary)),
//               Icon(Icons.done,color: AppColors.primary)
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Arabic",
//                   style: TextStyle(fontSize: 30, color: AppColors.primary)),
//
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});
  static String langCode="en";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: TextStyle(
                      fontSize: 25,
                      color: provider.languageCode == "en"
                          ? AppColors.primary
                          : Colors.black),
                ),
                provider.languageCode == "en"
                    ? Icon(
                  Icons.done,
                  size: 30,
                  color:  AppColors.primary,
                )
                    : SizedBox()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: TextStyle(
                      fontSize: 25,
                      color: provider.languageCode != "en"
                          ? AppColors.primary
                          : Colors.black),
                ),
                provider.languageCode != "ar"
                    ? SizedBox()
                    : Icon(
                  Icons.done,
                  size: 30,
                  color:  AppColors.primary,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
