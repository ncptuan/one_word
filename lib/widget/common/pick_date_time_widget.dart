// import '../style/style.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class DateTimePicker extends StatefulWidget {
//   const DateTimePicker({super.key, required this.selectedDate, this.onChanged});
//   final ValueNotifier<DateTime> selectedDate;
//   final ValueChanged<DateTime>? onChanged;

//   @override
//   _DateTimePickerState createState() => _DateTimePickerState();
// }

// class _DateTimePickerState extends State<DateTimePicker> {
//   DateTime? _selectedDate;

//   Future<DateTime?> _selectDate(BuildContext context) async {
//     final DateTime? selected = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2015, 8),
//       lastDate: DateTime(2101),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.dark(),
//           child: child ?? const SizedBox.shrink(),
//         );
//       },
//       // configure the text style for the date picker
//       initialDatePickerMode: DatePickerMode.day,
//       helpText: 'Select date',
//       cancelText: 'Cancel',
//       confirmText: 'OK',
//       errorFormatText: 'Invalid format',
//       errorInvalidText: 'Invalid date',
//       fieldLabelText: 'Enter Date',
//       fieldHintText: 'Date/Month/Year',
//     );
//     if (selected != null && selected != widget.selectedDate.value) {
//       widget.selectedDate.value = selected;
//       if (widget.onChanged != null) {
//         widget.onChanged!(selected);
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         GestureDetector(
//           onTap: () => _selectDate(context),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(Dimens.size12),
//               border: Border.all(
//                 color: MyColors.greyColor,
//                 width: 2.0,
//               ),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.only(left: Dimens.size10),
//                   child: Text(DateFormat('dd/MM/yyy')
//                       .format(widget.selectedDate.value)),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.calendar_today),
//                   onPressed: () => _selectDate(context),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
