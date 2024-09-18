import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../constants.dart';
import '../../style/style.dart';

class BorderTextFieldInput extends StatefulWidget {
  final String initText;
  final String name;
  final String? labelText;
  final String? errorText;
  final String? hintText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String?>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final GestureTapCallback? onTap;
  final FormFieldSetter<String>? onSaved;
  final Color? backgroundColor;
  final double borderRadius;
  final bool isShowBorder;
  final bool isPassword;
  final bool readOnly;
  final int maxLines;
  final TextAlign? textAlign;
  final TextStyle? errorStyle;
  final TextStyle? textStyle;
  final int? maxLength;
  final bool enabled;
  final Widget? suffixIcon;
  final Widget? prefix;
  final FocusNode? focusNode;
  final bool isRequired;
  final AutovalidateMode autovalidateMode;
  final int errorMaxLines;
  final bool refreshAfterBuild;
  final bool? forceFocus;
  final TextEditingController? controller;
  final VoidCallback? onEditingComplete;
  final EdgeInsets? textPadding;
  final double? suffixIconMaxWidth;
  final TextStyle? labelTextStyle;

  const BorderTextFieldInput({
    Key? key,
    this.name = '',
    this.initText = '',
    this.labelText,
    this.errorText,
    this.hintText = '',
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.onTap,
    this.onSaved,
    this.textAlign,
    this.errorStyle,
    this.textStyle,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.inputFormatters,
    this.backgroundColor,
    this.borderRadius = Dimens.size12,
    this.isShowBorder = true,
    this.isPassword = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.suffixIcon,
    this.prefix,
    this.isRequired = false,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.errorMaxLines = 1,
    this.refreshAfterBuild = true,
    this.focusNode,
    this.forceFocus,
    this.controller,
    this.onEditingComplete,
    this.textPadding = const EdgeInsets.symmetric(
      horizontal: Dimens.size10,
      vertical: Dimens.size18,
    ),
    this.suffixIconMaxWidth,
    this.labelTextStyle,
  }) : super(key: key);

  @override
  _BorderTextFieldInputState createState() => _BorderTextFieldInputState();
}

class _BorderTextFieldInputState extends State<BorderTextFieldInput> {
  late TextEditingController controller;
  //late FocusNode focusNode;
  // late bool obscureText;
  bool _passwordVisible = false;

  ThemeData get _myTheme => Theme.of(context);

  TextTheme get _textTheme => Theme.of(context).textTheme;

  InputBorder _inputBorder(Color color) => OutlineInputBorder(
        borderSide: widget.isShowBorder
            ? BorderSide(color: color, width: Dimens.size2)
            : BorderSide.none,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadius),
            topRight: Radius.circular(widget.borderRadius),
            bottomLeft: Radius.circular(widget.borderRadius),
            bottomRight: Radius.circular(widget.borderRadius)),
      );

  @override
  void initState() {
    super.initState();

    controller =
        widget.controller ?? TextEditingController(text: widget.initText);

    // obscureText = widget.isPassword ? !_passwordVisible : false;
    //focusNode = widget.focusNode ?? FocusNode();

    // if (widget.forceFocus == true) {
    //   /// INFO: this is used for avoid some case field not focus even when turn on autofocus.
    //   WidgetsBinding.instance?.addPostFrameCallback((_) {
    //     FocusScope.of(context).requestFocus(focusNode);
    //   });
    // }
  }

  @override
  void didUpdateWidget(covariant BorderTextFieldInput oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if ((controller.text != widget.initText)) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        controller.text = widget.initText;
      });
    }
  }

  @override
  void dispose() {
    // if (widget.focusNode == null) {
    //   focusNode.unfocus();
    //   focusNode.dispose();
    // }

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: Dimens.size12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.isRequired)
                      Text(
                        Constants.redAsterisk,
                        style: _myTheme.primaryTextTheme.titleMedium,
                      ),
                    Text(
                      widget.labelText ?? '',
                      style:
                          widget.labelTextStyle ?? _myTheme.textTheme.bodySmall,
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink(),
        FormBuilderTextField(
          key: widget.key,
          name: widget.name,
          textAlign: widget.textAlign ?? TextAlign.start,
          autovalidateMode: widget.autovalidateMode,
          autofocus: widget.forceFocus ?? false,
          style: widget.textStyle ?? _myTheme.textTheme.bodyMedium,
          controller: controller,
          enabled: widget.enabled,
          focusNode: widget.focusNode,
          obscureText: widget.isPassword ? !_passwordVisible : false,
          readOnly: widget.readOnly,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          onSubmitted: widget.onFieldSubmitted,
          onEditingComplete: widget.onEditingComplete,
          //onFieldSubmitted: widget.onFieldSubmitted,
          onTap: widget.onTap,
          validator: widget.validator,
          onSaved: widget.onSaved,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          inputFormatters: widget.inputFormatters,
          //cursorColor: IRecruitColors.appColor,
          decoration: InputDecoration(
            contentPadding: widget.textPadding,

            isDense: true,
            errorText: widget.errorText,
            errorStyle:
                widget.errorStyle ?? theme.primaryTextTheme.headlineMedium,
            errorMaxLines: widget.errorMaxLines,
            filled: true,
            fillColor: !widget.enabled
                ? theme.colorScheme.onBackground
                : widget.backgroundColor ??
                    theme.colorScheme.onBackground.withOpacity(0.3),
            // suffixIcon: widget.suffixIcon != null
            //     ? Padding(
            //         padding:
            //             const EdgeInsetsDirectional.only(end: Dimens.size12),
            //         child: widget.suffixIcon,
            //       )
            //     : null,
            suffixIcon: widget.isPassword
                ? IconButton(
                    color: _passwordVisible
                        ? theme.primaryColor
                        : theme.colorScheme.onSecondary,
                    icon: const Icon(
                      Icons.remove_red_eye,
                    ),
                    onPressed: () =>
                        setState(() => _passwordVisible = !_passwordVisible),
                  )
                : widget.suffixIcon,
            suffixIconConstraints: widget.suffixIcon != null
                ? BoxConstraints(
                    minHeight: Dimens.size16,
                    maxHeight: Dimens.size32,
                    minWidth: Dimens.size20,
                    maxWidth: widget.suffixIconMaxWidth ?? Dimens.size40,
                  )
                : null,
            border: _inputBorder(Colors.transparent),
            enabledBorder: _inputBorder(Colors.transparent),
            focusedBorder: _inputBorder(theme.primaryColor),
            errorBorder: _inputBorder(theme.colorScheme.error),
            focusedErrorBorder: _inputBorder(Colors.transparent),
            disabledBorder: _inputBorder(Colors.transparent),
            counterText: '',
            hintText: widget.hintText,
            hintStyle: theme.textTheme.bodyLarge,
            prefixIcon: widget.prefix != null
                ? Padding(
                    padding: const EdgeInsets.all(Dimens.size16),
                    child: widget.prefix,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
