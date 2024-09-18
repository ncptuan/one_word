// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';


// import '../models/models.dart';
// import '../page/auth/permission_page.dart';
// import '../style/style.dart';
// import 'widget.dart';


// class ViewDetailWidgetWithPermission extends StatelessWidget {
//   final String action;
//   final Widget child;
//   final String title;
//   final bool isLeftIcon;
//   final bool isShowFloatingIcon;
//   final bool isShowSearchIcon;
//   final void Function()? onPressLeftIcon;
//   final void Function()? onCancel;
//   final void Function()? onSave;
//   final Function(String?)? onSearch;
//   final void Function()? onPressFloatingIcon;
//   final Widget? rightContent;
//   final Widget? floatingActionButton;
//   final List<Widget>? listRightWidget;
//   final bool isShowRightContent;
//   final List<Widget>? listAction;
//   final List<Widget>? footerButtons;

//   const ViewDetailWidgetWithPermission({
//     Key? key,
//     required this.action,
//     required this.child,
//     required this.title,
//     this.isLeftIcon = false,
//     this.isShowFloatingIcon = true,
//     this.isShowSearchIcon = true,
//     this.onPressLeftIcon,
//     this.onCancel,
//     this.onSave,
//     this.onSearch,
//     this.onPressFloatingIcon,
//     this.rightContent,
//     this.floatingActionButton,
//     this.listRightWidget,
//     this.isShowRightContent = false,
//     this.listAction,
//     this.footerButtons,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PermissionPage(
//       action: action,
//       builder: (BuildContext context, PermissionData model) {
//         return CustomPageWidget(
//           child: child,
//           title: title,
//           isLeftIcon: isLeftIcon,
//           isShowFloatingIcon: isShowFloatingIcon,
//           floatingActionButton: floatingActionButton,
//           footerButtons: model.hasPermission ? footerButtons : null,
//           listRightWidget: listRightWidget ??
//               [
//                 ...?listAction,
//                 BaseButton(
//                   action: onCancel,
//                   content: tr('close'),
//                   textStyle: Theme.of(context).textTheme.bodyText2,
//                   borderColor: MyColors.greyColor,
//                   bgColor: MyColors.whiteColor,
//                   borderRadius: Dimens.size10,
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: Dimens.size24,
//                     vertical: Dimens.size12,
//                   ),
//                 ),
//                 Visibility(
//                   visible: onSave != null,
//                   child: Tooltip(
//                     message: model.hasPermission ? '' : tr('permission_deny'),
//                     child: BaseButton(
//                       action: model.hasPermission ? onSave : null,
//                       disable: !model.hasPermission,
//                       content: tr('save'),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: Dimens.size24,
//                         vertical: Dimens.size12,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//           isShowSearchIcon: isShowSearchIcon,
//           onPressLeftIcon: onPressLeftIcon,
//           onSearch: onSearch,
//           onPressFloatingIcon: onPressFloatingIcon,
//           rightContent: rightContent,
//           isShowRightContent: isShowRightContent,
//         );
//       },
//     );
//   }
// }
