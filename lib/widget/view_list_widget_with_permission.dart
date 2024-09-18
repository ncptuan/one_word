// import 'package:flutter/material.dart';

// import '../constants.dart';
// import '../models/models.dart';
// import '../page/auth/permission_page.dart';
// import 'widget.dart';

// class ViewListWidgetWithPermission extends StatelessWidget {
//   final Widget child;
//   final String title;
//   final bool isLeftIcon;
//   final bool isShowFloatingIcon;
//   final List<Widget>? listRightWidget;
//   final bool isShowSearchIcon;
//   final bool isShowFilterIcon;
//   final bool isShowHeader;
//   final bool isShowRightContent;
//   final bool filterApplied;
//   final void Function()? onPressLeftIcon;
//   final Function(String?)? onSearch;
//   final void Function()? onPressFloatingIcon;
//   final void Function(bool)? onPressFilterIcon;
//   final Widget? rightContent;
//   final Widget? filterContent;
//   final Widget? floatingActionButton;
//   final String? hintTextSearch;

//   const ViewListWidgetWithPermission(
//       {Key? key,
//       required this.child,
//       required this.title,
//       this.isLeftIcon = false,
//       this.listRightWidget,
//       this.isShowFloatingIcon = true,
//       this.isShowSearchIcon = true,
//       this.isShowFilterIcon = false,
//       this.isShowHeader = true,
//       this.isShowRightContent = false,
//       this.filterApplied = false,
//       this.onPressLeftIcon,
//       this.onSearch,
//       this.onPressFloatingIcon,
//       this.onPressFilterIcon,
//       this.rightContent,
//       this.floatingActionButton,
//       this.filterContent,
//       this.hintTextSearch})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PermissionPage(
//       action: ApiAction.create,
//       builder: (BuildContext context, PermissionData model) {
//         return CustomPageWidget(
//           child: child,
//           title: title,
//           isLeftIcon: isLeftIcon,
//           isShowFilterIcon: isShowFilterIcon,
//           isShowFloatingIcon: isShowFloatingIcon && model.hasPermission,
//           listRightWidget: listRightWidget,
//           isShowSearchIcon: isShowSearchIcon,
//           isShowHeader: isShowHeader,
//           isShowRightContent: isShowRightContent,
//           filterApplied: filterApplied,
//           onPressLeftIcon: onPressLeftIcon,
//           onSearch: onSearch,
//           onPressFloatingIcon: onPressFloatingIcon,
//           onPressFilterIcon: onPressFilterIcon,
//           rightContent: rightContent,
//           floatingActionButton: floatingActionButton,
//           filterContent: filterContent,
//           hintTextSearch: hintTextSearch,
//         );
//       },
//     );
//   }
// }
