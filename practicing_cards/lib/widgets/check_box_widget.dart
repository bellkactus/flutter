import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practicing_cards/icons/icons.dart';
import 'package:practicing_cards/style_guide/colors.dart';

enum CheckBoxState { checked, unchecked, minus }

class CheckBoxWidget extends StatefulWidget {
  final CheckBoxState state;
  final String text;
  final VoidCallback onPressed;
  bool enabled;

  CheckBoxWidget(
      {Key? key,
      required this.state,
      required this.text,
      required this.onPressed,
      this.enabled = true})
      : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  AssetImage stateIcon = AppIcons.checkBoxIcon;
  @override
  Widget build(BuildContext context) {
    switch (widget.state) {
      case CheckBoxState.checked:
        stateIcon = AppIcons.checkedIcon;
        break;
      case CheckBoxState.minus:
        stateIcon = AppIcons.minusIcon;
        break;
      default:
        stateIcon = AppIcons.checkBoxIcon;
    }
    return GestureDetector(
      onTap: widget.enabled ? widget.onPressed : null,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image(
                image: stateIcon,
                width: 20,
                height: 20,
                color: widget.enabled ? AppColors.green : Colors.grey),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: widget.enabled ? Colors.black : Colors.grey,
                  fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
