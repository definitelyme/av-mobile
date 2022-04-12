import 'package:auctionvillage/manager/theme/theme.dart';
import 'package:auctionvillage/utils/utils.dart';
import 'package:auctionvillage/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Normal = Cupertino Form with Cupertino Form Row & prefix
// Flat = Cupertino Form without Cupertnio Form Row
enum CupertinoFormType { textfield, row, flat }

class AdaptiveTextFormInput extends StatefulWidget {
  final void Function(String)? onChanged;
  final TextInputAction? action;
  final bool autoCorrect;
  final Iterable<String>? autoFillHints;
  final bool autoFocus;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? disabledBorder;
  final BorderRadius? borderRadius;
  final TextCapitalization capitalization;
  final TextEditingController? controller;
  final double cupertinoInputMargin;
  final Color? cursorColor;
  final InputDecoration? decoration;
  final bool disabled;
  final bool enableSuggestions;
  final bool enableInteractiveSelection;
  final String? errorText;
  final bool expands;
  //
  final bool cupertinoUseValidator;
  final bool? filled;
  final bool? dense;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool? alignLabelWithHint;

  final FocusNode? focus;
  final InputBorder? focusBorder;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? initial;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final String? label;
  final TextStyle? labelStyle;
  final bool showMaxLength;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLines;
  final int? minLines;
  final FocusNode? next;
  final bool obscureText;
  final EdgeInsetsGeometry? cupertinoPadding;
  final EdgeInsets? materialPadding;
  final Widget? prefix;
  final Widget? prefixIcon;
  //
  final Color? fillColor;
  final bool? readOnly;
  final bool showCursor;
  final TextStyle? style;
  final Widget? suffix;
  final OverlayVisibilityMode _prefixMode;
  final OverlayVisibilityMode _suffixMode;
  final OverlayVisibilityMode _clearButtonMode;
  final ToolbarOptions? toolbarOptions;
  final bool validate;
  final CupertinoFormType? _formType;
  final VoidCallback? onTap;
  final VoidCallback? onEditingComplete;
  final Color cupertinoBorderColorLight;
  final Color cupertinoBorderColorDark;

  final TextAlign textAlign;
  final TextSelectionControls? selectionControls;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool autoDisposeController;
  final Brightness? keyboardAppearance;
  final VoidCallback? onFieldSubmitted;

  AdaptiveTextFormInput({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.errorBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    BorderRadius? borderRadius,
    this.decoration,
    this.readOnly,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.dense,
    this.floatingLabelBehavior,
    this.alignLabelWithHint,
    this.controller,
    this.showMaxLength = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    OverlayVisibilityMode? prefixMode,
    OverlayVisibilityMode? suffixMode,
    OverlayVisibilityMode? clearButtonMode,
    this.filled,
    this.cupertinoUseValidator = true,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    EdgeInsets? cupertinoPadding,
    this.materialPadding,
    this.cupertinoInputMargin = 8.0,
    this.fillColor,
    CupertinoFormType? cupertinoFormType,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.selectionControls,
    this.textAlignVertical,
    this.textDirection,
    this.onEditingComplete,
    this.autoDisposeController = true,
    this.onFieldSubmitted,
    Color? cupertinoBorderColorLight,
    Color? cupertinoBorderColorDark,
    Brightness? keyboardAppearance,
  })  : cupertinoPadding = cupertinoPadding ??
            (prefixIcon != null && (prefixMode == OverlayVisibilityMode.always || prefixMode == OverlayVisibilityMode.editing)
                    ? const EdgeInsets.symmetric(horizontal: 0)
                    : Utils.inputPadding)
                .copyWith(top: 10.0, bottom: 10.0)
                .merge(materialPadding),
        borderRadius = borderRadius ?? const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        _formType = cupertinoFormType ?? CupertinoFormType.textfield,
        _prefixMode = prefixMode ?? OverlayVisibilityMode.editing,
        _suffixMode = suffixMode ?? OverlayVisibilityMode.editing,
        _clearButtonMode = clearButtonMode ?? OverlayVisibilityMode.never,
        cupertinoBorderColorLight = cupertinoBorderColorLight ?? Palette.inputLightBorderColor,
        cupertinoBorderColorDark = cupertinoBorderColorDark ?? Palette.inputDarkBorderColor,
        keyboardAppearance = keyboardAppearance ?? Utils.foldTheme(light: () => Brightness.light, dark: () => Brightness.dark),
        super(key: key);

  AdaptiveTextFormInput.flat({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.errorBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    BorderRadius? borderRadius,
    this.decoration,
    this.readOnly,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.dense,
    this.floatingLabelBehavior,
    this.alignLabelWithHint,
    this.controller,
    this.showMaxLength = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    OverlayVisibilityMode? prefixMode,
    OverlayVisibilityMode? suffixMode,
    OverlayVisibilityMode? clearButtonMode,
    this.filled,
    this.cupertinoUseValidator = true,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    EdgeInsets? cupertinoPadding,
    this.materialPadding,
    this.cupertinoInputMargin = 8.0,
    this.fillColor,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.selectionControls,
    this.textAlignVertical,
    this.textDirection,
    this.onEditingComplete,
    this.autoDisposeController = true,
    this.onFieldSubmitted,
    Color? cupertinoBorderColorLight,
    Color? cupertinoBorderColorDark,
    Brightness? keyboardAppearance,
  })  : cupertinoPadding = cupertinoPadding ??
            (prefixIcon != null && (prefixMode == OverlayVisibilityMode.always || prefixMode == OverlayVisibilityMode.editing)
                    ? const EdgeInsets.symmetric(horizontal: 0)
                    : Utils.inputPadding)
                .copyWith(top: 10.0, bottom: 10.0)
                .merge(materialPadding),
        borderRadius = borderRadius ?? const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        _formType = CupertinoFormType.flat,
        _prefixMode = prefixMode ?? OverlayVisibilityMode.editing,
        _suffixMode = suffixMode ?? OverlayVisibilityMode.editing,
        _clearButtonMode = clearButtonMode ?? OverlayVisibilityMode.never,
        cupertinoBorderColorLight = cupertinoBorderColorLight ?? Palette.inputLightBorderColor,
        cupertinoBorderColorDark = cupertinoBorderColorDark ?? Palette.inputDarkBorderColor,
        keyboardAppearance = keyboardAppearance ?? Utils.foldTheme(light: () => Brightness.light, dark: () => Brightness.dark),
        super(key: key);

  AdaptiveTextFormInput.row({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.errorBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    BorderRadius? borderRadius,
    this.decoration,
    this.readOnly,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.dense,
    this.floatingLabelBehavior,
    this.alignLabelWithHint,
    this.controller,
    this.showMaxLength = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    OverlayVisibilityMode? prefixMode,
    OverlayVisibilityMode? suffixMode,
    OverlayVisibilityMode? clearButtonMode,
    this.filled,
    this.cupertinoUseValidator = true,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    EdgeInsets? cupertinoPadding,
    this.materialPadding,
    this.cupertinoInputMargin = 8.0,
    this.fillColor,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.selectionControls,
    this.textAlignVertical,
    this.textDirection,
    this.onEditingComplete,
    this.autoDisposeController = true,
    this.onFieldSubmitted,
    Color? cupertinoBorderColorLight,
    Color? cupertinoBorderColorDark,
    Brightness? keyboardAppearance,
  })  : cupertinoPadding = cupertinoPadding ??
            (prefixIcon != null && (prefixMode == OverlayVisibilityMode.always || prefixMode == OverlayVisibilityMode.editing)
                    ? const EdgeInsets.symmetric(horizontal: 0)
                    : Utils.inputPadding)
                .copyWith(top: 10.0, bottom: 10.0)
                .merge(materialPadding),
        borderRadius = borderRadius ?? const BorderRadius.all(Radius.circular(Utils.inputBorderRadius)),
        _formType = CupertinoFormType.row,
        _prefixMode = prefixMode ?? OverlayVisibilityMode.editing,
        _suffixMode = suffixMode ?? OverlayVisibilityMode.editing,
        _clearButtonMode = clearButtonMode ?? OverlayVisibilityMode.never,
        cupertinoBorderColorLight = cupertinoBorderColorLight ?? CupertinoColors.lightBackgroundGray,
        cupertinoBorderColorDark = cupertinoBorderColorDark ?? CupertinoColors.darkBackgroundGray.withOpacity(0.4),
        keyboardAppearance = keyboardAppearance ?? Utils.foldTheme(light: () => Brightness.light, dark: () => Brightness.dark),
        super(key: key);

  @override
  _AdaptiveTextFormInputState createState() => _AdaptiveTextFormInputState();
}

class _AdaptiveTextFormInputState extends State<AdaptiveTextFormInput> with AutomaticKeepAliveClientMixin<AdaptiveTextFormInput> {
  late TextEditingController _textEditingController;
  bool didUpdateController = false;

  @override
  void dispose() {
    if (widget.autoDisposeController) _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _textEditingController = widget.controller ??
        (widget.initial != null && widget.initial!.isNotEmpty ? TextEditingController(text: widget.initial) : TextEditingController());

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AdaptiveTextFormInput oldWidget) {
    // Only run if controller was initialized within this widget && initial is! null
    if (widget.controller == null && widget.initial != null) {
      // Ensure "initial" !- controller's text && controller hasn't been updated
      if (widget.initial != _textEditingController.text && !didUpdateController)
        setState(() {
          _textEditingController = _textEditingController..text = widget.initial!;
          didUpdateController = true;
        });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => true;

  Iterable<String>? get _autoFillHints {
    if (widget.disabled) return null;
    if (widget.readOnly != null && widget.readOnly!) return null;
    return widget.autoFillHints;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return PlatformBuilder(
      cupertino: (c) => widget._formType!.fold(
        flat: _cupertinoTextField(c),
        textfield: CupertinoFormRow(
          prefix: widget.prefix,
          error: widget.validate ? widget.errorText?.let((it) => Text(it, style: const TextStyle(color: Palette.errorRed))) : Utils.nothing,
          padding: EdgeInsets.zero,
          child: _cupertinoTextField(c),
        ),
        row: CupertinoFormRow(
          prefix: widget.prefix,
          error: widget.validate && !widget.cupertinoUseValidator
              ? widget.errorText?.let((it) => Text(it, style: const TextStyle(color: Palette.errorRed))) ?? Utils.nothing
              : Utils.nothing,
          padding: widget.prefix == null
              ? EdgeInsets.zero
              : widget.cupertinoPadding ?? const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
          child: _cupertinoTextFormField(c),
        ),
      ),
      material: (c) => _materialTextFormField(c),
    );
  }

  Widget _cupertinoTextFormField(BuildContext c) => CupertinoTextFormFieldRow(
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: widget.disabled ? CupertinoColors.lightBackgroundGray : (widget.fillColor ?? CupertinoColors.extraLightBackgroundGray),
          border: Border.all(color: CupertinoColors.lightBackgroundGray, width: 1.5),
        ),
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
        expands: widget.minLines == null && widget.maxLines == null ? widget.expands : false,
        maxLength: widget.showMaxLength ? widget.maxLength : null,
        enableSuggestions: widget.enableSuggestions,
        obscureText: widget.obscureText,
        autofocus: widget.autoFocus,
        autocorrect: widget.autoCorrect,
        autofillHints: _autoFillHints,
        showCursor: widget.showCursor,
        keyboardType: widget.keyboardType,
        textCapitalization: widget.capitalization,
        textInputAction: widget.next == null ? widget.action ?? TextInputAction.done : widget.action ?? TextInputAction.next,
        cursorColor: widget.cursorColor ?? CupertinoColors.systemGrey.resolveFrom(context),
        controller: _textEditingController,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        keyboardAppearance: widget.keyboardAppearance,
        focusNode: widget.focus,
        readOnly: widget.readOnly ?? widget.disabled,
        enabled: !widget.disabled,
        padding: widget.cupertinoPadding!,
        inputFormatters: [
          if (widget.maxLength != null) LengthLimitingTextInputFormatter(widget.maxLength),
          ...widget.inputFormatters,
        ],
        style: widget.style,
        placeholder: widget.hintText,
        onTap: widget.onTap,
        placeholderStyle: TextStyle(color: App.resolveColor(Palette.text40, dark: Colors.white30)).merge(widget.hintStyle),
        toolbarOptions: widget.toolbarOptions,
        textAlign: widget.textAlign,
        selectionControls: widget.selectionControls,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        onChanged: widget.onChanged,
        validator: (value) => widget.cupertinoUseValidator ? widget.errorText : null,
        autovalidateMode: widget.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
        onFieldSubmitted: (_) => widget.onFieldSubmitted != null
            ? widget.onFieldSubmitted!()
            : (widget.next == null ? FocusManager.instance.primaryFocus?.unfocus() : FocusScope.of(c).requestFocus(widget.next)),
        onEditingComplete: widget.onEditingComplete,
      );

  Widget _cupertinoTextField(BuildContext c) => AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: widget.disabled ? 0.7 : 1,
        curve: Curves.easeInOutCubic,
        alwaysIncludeSemantics: true,
        child: Theme(
          data: Theme.of(context).copyWith(
            cupertinoOverrideTheme: (() {
              final theme = c.read<ThemeCubit>().state.cupertinoThemeData(c);
              return theme.copyWith(
                brightness: Utils.foldTheme(
                  light: () => null,
                  dark: () => widget.disabled ? Brightness.light : null,
                ),
              );
            })(),
          ),
          child: CupertinoTextField.borderless(
            decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              color: widget.fillColor,
              border: Border.all(
                color: widget.enabledBorder?.borderSide.color ??
                    App.resolveColor(widget.cupertinoBorderColorLight, dark: widget.cupertinoBorderColorDark)!,
                width: widget.enabledBorder?.borderSide.width ?? 1.5,
              ),
            ),
            maxLines: widget.minLines == null ? widget.maxLines : null,
            minLines: widget.minLines,
            expands: widget.minLines == null && widget.maxLines == null ? widget.expands : false,
            maxLength: widget.showMaxLength ? widget.maxLength : null,
            maxLengthEnforcement: widget.showMaxLength ? widget.maxLengthEnforcement : null,
            enableSuggestions: widget.enableSuggestions,
            obscureText: widget.obscureText,
            autofocus: widget.autoFocus,
            autocorrect: widget.autoCorrect,
            autofillHints: _autoFillHints,
            showCursor: widget.showCursor,
            keyboardType: widget.keyboardType,
            textCapitalization: widget.capitalization,
            textInputAction: widget.next == null ? (widget.action ?? TextInputAction.done) : (widget.action ?? TextInputAction.next),
            cursorColor: widget.cursorColor ?? CupertinoColors.systemGrey.resolveFrom(context),
            controller: _textEditingController,
            enableInteractiveSelection: widget.enableInteractiveSelection,
            keyboardAppearance: widget.keyboardAppearance,
            focusNode: widget.focus,
            readOnly: widget.readOnly ?? widget.disabled,
            enabled: !widget.disabled,
            clearButtonMode: widget._clearButtonMode,
            prefix: widget.prefixIcon,
            prefixMode: widget._prefixMode,
            suffix: widget.suffix,
            suffixMode: widget._suffixMode,
            onTap: widget.onTap,
            padding: widget.cupertinoPadding!,
            inputFormatters: [
              if (widget.maxLength != null) LengthLimitingTextInputFormatter(widget.maxLength),
              ...widget.inputFormatters,
            ],
            // style: TextStyle(color: App.resolveColor(Palette.text100, dark: Palette.text100Dark)).merge(widget.style),
            style: TextStyle(
              color: widget.disabled
                  ? App.resolveColor(Palette.text60, dark: Colors.black.withOpacity(0.5))
                  : App.resolveColor(Palette.text100, dark: Palette.text100Dark),
            ).merge(widget.style),
            placeholder: widget.hintText,
            placeholderStyle: TextStyle(color: App.resolveColor(Palette.text60)).merge(widget.hintStyle),
            toolbarOptions: widget.toolbarOptions,
            textAlign: widget.textAlign,
            selectionControls: widget.selectionControls,
            textAlignVertical: widget.textAlignVertical,
            textDirection: widget.textDirection,
            onChanged: widget.onChanged,
            onSubmitted: (_) => widget.onFieldSubmitted != null
                ? widget.onFieldSubmitted!()
                : (widget.next == null ? FocusManager.instance.primaryFocus?.unfocus() : FocusScope.of(c).requestFocus(widget.next)),
            onEditingComplete: widget.onEditingComplete,
          ),
        ),
      );

  Widget _materialTextFormField(BuildContext c) => AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: widget.disabled ? 0.7 : 1,
        curve: Curves.easeInOutCubic,
        alwaysIncludeSemantics: true,
        child: Material(
          type: MaterialType.transparency,
          elevation: 0,
          child: Center(
            child: TextFormField(
              maxLines: widget.minLines == null ? widget.maxLines : null,
              minLines: widget.minLines,
              expands: widget.minLines == null && widget.maxLines == null ? widget.expands : false,
              maxLength: widget.showMaxLength ? widget.maxLength : null,
              maxLengthEnforcement: widget.showMaxLength ? widget.maxLengthEnforcement : null,
              enableSuggestions: widget.enableSuggestions,
              enableInteractiveSelection: widget.enableInteractiveSelection,
              obscureText: widget.obscureText,
              autocorrect: widget.autoCorrect,
              autofocus: widget.autoFocus,
              controller: _textEditingController,
              showCursor: widget.showCursor,
              cursorColor: widget.cursorColor ?? App.resolveColor(Palette.accentColor, dark: Colors.white70),
              keyboardType: widget.keyboardType,
              textCapitalization: widget.capitalization,
              keyboardAppearance: widget.keyboardAppearance,
              textInputAction: widget.next == null ? widget.action ?? TextInputAction.done : widget.action ?? TextInputAction.next,
              focusNode: widget.focus,
              readOnly: widget.readOnly ?? widget.disabled,
              enabled: !widget.disabled,
              onTap: widget.onTap,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                labelText: widget.label,
                labelStyle: widget.labelStyle,
                border: widget.border,
                enabledBorder: widget.enabledBorder,
                disabledBorder: widget.disabledBorder,
                focusedErrorBorder: widget.focusedErrorBorder,
                errorBorder: widget.errorBorder,
                filled: widget.filled,
                isDense: widget.dense,
                alignLabelWithHint: widget.alignLabelWithHint,
                floatingLabelBehavior: widget.floatingLabelBehavior,
                fillColor: widget.fillColor,
                contentPadding: widget.materialPadding,
                focusedBorder: widget.focusBorder ?? widget.border,
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffix,
                enabled: !widget.disabled,
              ).merge(widget.decoration),
              autofillHints: _autoFillHints,
              inputFormatters: [
                if (widget.maxLength != null) LengthLimitingTextInputFormatter(widget.maxLength),
                ...widget.inputFormatters,
              ],
              textAlign: widget.textAlign,
              selectionControls: widget.selectionControls,
              textAlignVertical: widget.textAlignVertical,
              textDirection: widget.textDirection,
              toolbarOptions: widget.toolbarOptions,
              style: TextStyle(
                color: widget.disabled ? App.resolveColor(Palette.text60, dark: Colors.black.withOpacity(0.5)) : null,
              ).merge(widget.style),
              autovalidateMode: widget.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
              onChanged: widget.onChanged,
              validator: (value) => widget.errorText,
              onFieldSubmitted: (_) => widget.onFieldSubmitted != null
                  ? widget.onFieldSubmitted!()
                  : (widget.next == null ? FocusManager.instance.primaryFocus?.unfocus() : FocusScope.of(c).requestFocus(widget.next)),
              onEditingComplete: widget.onEditingComplete,
            ),
          ),
        ),
      );
}

extension on CupertinoFormType {
  T fold<T>({
    required T textfield,
    required T row,
    required T flat,
  }) {
    switch (this) {
      case CupertinoFormType.textfield:
        return textfield;
      case CupertinoFormType.flat:
        return flat;
      case CupertinoFormType.row:
      default:
        return row;
    }
  }
}
