// import 'package:basic_utils/basic_utils.dart';
// import 'package:easy_debounce/easy_debounce.dart';
// import 'package:easy_localization/easy_localization.dart';

// import 'package:flutter/material.dart';

// import '../constants.dart';
// import '../extensions/extension.dart';
// import '../style/style.dart';
// import 'common/common.dart';

// class CustomPageWidget extends StatelessWidget {
//   final Widget child;
//   final String title;
//   final bool isLeftIcon;
//   final bool isShowFloatingIcon;
//   final List<Widget>? listRightWidget;
//   final Widget? floatingActionButton;
//   final bool isShowSearchIcon;
//   final bool isShowFilterIcon;
//   final bool isShowRightContent;
//   final bool filterApplied;
//   final void Function()? onPressLeftIcon;
//   final Function(String?)? onSearch;
//   final void Function()? onPressFloatingIcon;
//   final void Function(bool)? onPressFilterIcon;
//   final Widget? rightContent;
//   final bool isShowHeader;
//   final Widget? filterContent;
//   final String? hintTextSearch;
//   final List<Widget>? footerButtons;
//   final EdgeInsets? textPadding;

//   const CustomPageWidget({
//     Key? key,
//     required this.child,
//     required this.title,
//     this.isLeftIcon = false,
//     this.listRightWidget,
//     this.isShowFloatingIcon = true,
//     this.isShowSearchIcon = true,
//     this.isShowFilterIcon = false,
//     this.isShowRightContent = false,
//     this.filterApplied = false,
//     this.onPressLeftIcon,
//     this.onSearch,
//     this.onPressFloatingIcon,
//     this.onPressFilterIcon,
//     this.rightContent,
//     this.floatingActionButton,
//     this.isShowHeader = true,
//     this.filterContent,
//     this.hintTextSearch,
//     this.footerButtons,
//     this.textPadding,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final List<Widget> listNavBarWidget = [
//       Visibility(
//         visible: isLeftIcon,
//         child: GestureDetector(
//           onTap: onPressLeftIcon,
//           child: Icon(
//             Icons.arrow_left,
//             size: Dimens.size48,
//             color: theme.colorScheme.secondary,
//           ),
//         ),
//       ),
//       const SizedBox(width: Dimens.size4),
//       Expanded(
//         child: Row(
//           children: [
//             Expanded(
//               child: Text(
//                 title,
//                 style: theme.textTheme.headline3,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//             Visibility(
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     left: Dimens.size32, right: Dimens.size16),
//                 child: filterContent != null
//                     ? filterContent ?? const SizedBox()
//                     : Container(),
//               ),
//               visible: filterContent != null,
//             ),
//           ],
//         ),
//       ),
//       Visibility(
//         visible: isShowSearchIcon,
//         child: SearchWidget(
//           hintText: hintTextSearch,
//           onSearch: onSearch,
//           isExpanded: true,
//           textPadding: textPadding,
//         ),
//       ),
//       Visibility(
//         visible: isShowFilterIcon,
//         child: GestureDetector(
//           onTap: () {
//             onPressFilterIcon?.call(!isShowRightContent);
//           },
//           child: Padding(
//             padding: const EdgeInsets.all(Dimens.size10),
//             child: Icon(
//               Icons.filter,
//               size: Dimens.size24,
//               color: filterApplied
//                   ? theme.colorScheme.primary
//                   : theme.colorScheme.onSecondary,
//             ),
//           ),
//         ),
//       ),
//     ];
//     if (listRightWidget != null) {
//       for (var widget in listRightWidget!) {
//         listNavBarWidget.add(const SizedBox(
//           width: Dimens.size24,
//         ));
//         listNavBarWidget.add(widget);
//       }
//     }

//     return Scaffold(
//       backgroundColor: theme.colorScheme.background,
//       floatingActionButton: isShowFloatingIcon
//           ? floatingActionButton ??
//               FloatingActionButton(
//                 backgroundColor: theme.primaryColor,
//                 onPressed: onPressFloatingIcon,
//                 child: Icon(
//                   Icons.add_outlined,
//                   color: theme.backgroundColor,
//                 ),
//               )
//           : null,
//       persistentFooterButtons: footerButtons,
//       resizeToAvoidBottomInset: true,
//       body: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             flex: 2,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Visibility(
//                   visible: isShowHeader == true,
//                   child: Row(
//                     children: listNavBarWidget,
//                   ),
//                 ),
//                 Visibility(
//                   visible: isShowHeader == true,
//                   child: const SizedBox(
//                     height: Dimens.size32,
//                   ),
//                 ),
//                 child,
//               ],
//             ),
//           ),
//           Visibility(
//             child: const SizedBox(width: Dimens.size32),
//             visible: isShowRightContent,
//           ),
//           Visibility(
//             child: isShowRightContent
//                 ? Expanded(child: rightContent ?? const SizedBox())
//                 : Container(),
//             visible: isShowRightContent,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SearchWidget extends StatefulWidget {
//   final Function(String?)? onSearch;
//   final bool isExpanded;
//   final String? hintText;
//   final String? labelText;
//   final String? initText;
//   final EdgeInsets? textPadding;

//   const SearchWidget({
//     Key? key,
//     this.onSearch,
//     this.isExpanded = false,
//     this.hintText,
//     this.labelText,
//     this.initText,
//     this.textPadding,
//   }) : super(key: key);

//   @override
//   _SearchWidgetState createState() => _SearchWidgetState();
// }

// class _SearchWidgetState extends State<SearchWidget> {
//   bool _onSearch = false;
//   String? _value;

//   @override
//   void initState() {
//     super.initState();
//     _value = widget.initText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return _onSearch || widget.isExpanded
//         ? Expanded(
//             child: BorderTextFieldInput(
//               textPadding: widget.textPadding ??
//                   const EdgeInsets.symmetric(
//                     horizontal: Dimens.size10,
//                     vertical: Dimens.size18,
//                   ),
//               initText: _value ?? '',
//               labelText: widget.labelText,
//               hintText: widget.hintText ?? tr('search'),
//               onChanged: (value) {
//                 setState(() {
//                   _value = value;
//                 });
//                 EasyDebounce.debounce(
//                     Constants.debounceTagSearch,
//                     const Duration(
//                         milliseconds: Constants.searchDebounceDuration),
//                     () => widget.onSearch?.call(value));
//               },
//               suffixIcon: InkWell(
//                 onTap: _value.isNotNullOrEmpty
//                     ? () {
//                         setState(() {
//                           _onSearch = false;
//                           if (StringUtils.isNotNullOrEmpty(_value)) {
//                             EasyDebounce.debounce(
//                                 Constants.debounceTagSearch,
//                                 const Duration(
//                                     milliseconds:
//                                         Constants.searchDebounceDuration),
//                                 () => widget.onSearch?.call(null));
//                           }
//                           _value = null;
//                         });
//                       }
//                     : null,
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: Dimens.size10),
//                   child: Icon(
//                     _value.isNullOrEmpty ? Icons.search : Icons.close,
//                     size: Dimens.size24,
//                     color: theme.colorScheme.secondary,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         : InkWell(
//             onTap: () {
//               setState(() {
//                 _onSearch = true;
//               });
//             },
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: Dimens.size10,
//                 right: Dimens.size10,
//               ),
//               child: Icon(
//                 Icons.search,
//                 size: Dimens.size24,
//                 color: theme.colorScheme.secondary,
//               ),
//             ),
//           );
//   }
// }
