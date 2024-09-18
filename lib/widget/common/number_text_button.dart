import 'package:flutter/material.dart';

import '../../style/style.dart';

class NumericStepButton extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final bool isLargeSize;
  final int initValue;

  final ValueChanged<int> onChanged;

  const NumericStepButton({
    Key? key,
    this.minValue = 1,
    this.maxValue = 100,
    this.isLargeSize = true,
    this.initValue = 0,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<NumericStepButton> createState() {
    return _NumericStepButtonState();
  }
}

class _NumericStepButtonState extends State<NumericStepButton> {
  int _counter = 1;

  @override
  void initState() {
    super.initState();
    if (widget.initValue > 0) {
      _counter = widget.initValue;
    }
  }

  @override
  void didUpdateWidget(covariant NumericStepButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initValue != oldWidget.initValue) {
      _counter = widget.initValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          color: MyColors.whiteColor,
          borderRadius: BorderRadius.circular(Dimens.size8),
          border: Border.all(color: MyColors.darkBackgroundColor)),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (_counter > widget.minValue) {
                    _counter--;
                  }
                  widget.onChanged(_counter);
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: widget.isLargeSize ? Dimens.size16 : Dimens.size4,
                  horizontal: widget.isLargeSize ? Dimens.size10 : Dimens.size8,
                ),
                child: Icon(
                  Icons.remove,
                  color: theme.primaryColorDark,
                  size: Dimens.size14,
                ),
              ),
            ),
            const VerticalDivider(
              color: MyColors.darkBackgroundColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: widget.isLargeSize ? Dimens.size10 : Dimens.size8,
              ),
              child: Text(
                '$_counter',
                textAlign: TextAlign.center,
                style: theme.primaryTextTheme.displaySmall,
              ),
            ),
            const VerticalDivider(
              color: MyColors.darkBackgroundColor,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (_counter < widget.maxValue) {
                    _counter++;
                  }
                  widget.onChanged(_counter);
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: widget.isLargeSize ? Dimens.size16 : Dimens.size4,
                  horizontal: widget.isLargeSize ? Dimens.size10 : Dimens.size8,
                ),
                child: Icon(
                  Icons.add,
                  color: theme.primaryColorDark,
                  size: Dimens.size14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
