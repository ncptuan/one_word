
// import 'package:flutter/material.dart';

// import '../models/models.dart';
// import '../page/page.dart';
// import 'common/common.dart';



// class ViewDetailPopupWithPermission extends StatelessWidget {
//   final String action;
//   final String? title;
//   final String? labelCancel;
//   final String? labelSubmit;
//   final VoidCallback? onCancel;
//   final VoidCallback? onSubmit;
//   final Widget? child;
//   final double? width;
//   final List<Widget>? listAction;
//   final Widget? iconTitle;
//   final TextStyle? titleStyle;
//   final bool isDisplayCancelButton;

//   const ViewDetailPopupWithPermission({
//     Key? key,
//     required this.action,
//     this.title,
//     this.onCancel,
//     this.onSubmit,
//     this.child,
//     this.width,
//     this.labelCancel,
//     this.labelSubmit,
//     this.listAction,
//     this.iconTitle,
//     this.titleStyle,
//     this.isDisplayCancelButton = true,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PermissionPage(
//       action: action,
//       builder: (BuildContext context, PermissionData model) {
//         return BasePopupWidget(
//           title: title,
//           iconTitle: iconTitle,
//           titleStyle: titleStyle,
//           labelCancel: labelCancel,
//           labelSubmit: labelSubmit,
//           onCancel: onCancel,
//           onSubmit: onSubmit,
//           child: child,
//           width: width,
//           disable: !model.hasPermission,
//           listAction: listAction,
//           isDisplayCancelButton: isDisplayCancelButton,
//         );
//       },
//     );
//   }
// }
