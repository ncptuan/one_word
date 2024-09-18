// import 'package:basic_utils/basic_utils.dart';
// import 'package:easy_debounce/easy_debounce.dart';
// import '../extensions/extension.dart';
// import 'package:flutter/material.dart';

// import '../../constants.dart';
// import '../../style/style.dart';
// import 'common.dart';

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
//     return BorderTextFieldInput(
//       textPadding: widget.textPadding ??
//           const EdgeInsets.symmetric(
//             horizontal: Dimens.size10,
//             vertical: Dimens.size18,
//           ),
//       initText: _value ?? '',
//       labelText: widget.labelText,
//       hintText: widget.hintText ?? 'Tìm kiếm',
//       onChanged: (value) {
//         setState(() {
//           _value = value;
//         });
//         EasyDebounce.debounce(
//             Constants.debounceTagSearch,
//             const Duration(milliseconds: Constants.searchDebounceDuration),
//             () => widget.onSearch?.call(value));
//       },
//       suffixIcon: InkWell(
//         onTap: _value.isNotNullOrEmpty
//             ? () {
//                 setState(() {
//                   _onSearch = false;
//                   if (StringUtils.isNotNullOrEmpty(_value)) {
//                     EasyDebounce.debounce(
//                         Constants.debounceTagSearch,
//                         const Duration(
//                             milliseconds: Constants.searchDebounceDuration),
//                         () => widget.onSearch?.call(null));
//                   }
//                   _value = null;
//                 });
//               }
//             : null,
//         child: Padding(
//           padding: const EdgeInsets.only(right: Dimens.size10),
//           child: Icon(
//             _value.isNullOrEmpty ? Icons.search : Icons.close,
//             size: Dimens.size24,
//             color: theme.colorScheme.secondary,
//           ),
//         ),
//       ),
//     );
//   }
// }
