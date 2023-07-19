import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CustomExpandableCard extends StatefulWidget {
  final bool initialExpand;
  final ExpandedBorder border;
  final bool isDottedBorder;
  final Widget header;
  final Widget? customSuffix;
  final Widget? customSuffixExpanded;
  final List<Widget> children;

  /// Default #DEDEDE
  final Color borderColor;
  const CustomExpandableCard({
    Key? key,
    this.border = ExpandedBorder.vertical,
    required this.isDottedBorder,
    required this.header,
    required this.children,
    this.initialExpand = true,
    this.borderColor = AppColors.grayBorder,
    this.customSuffix,
    this.customSuffixExpanded,
  }) : super(key: key);

  @override
  State<CustomExpandableCard> createState() => _CustomExpandableCardState();
}

class _CustomExpandableCardState extends State<CustomExpandableCard> {
  bool isExpanded = false;

  @override
  void initState() {
    isExpanded = widget.initialExpand;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Decoration? top() {
      if (widget.border == ExpandedBorder.top ||
          widget.border == ExpandedBorder.vertical) {
        if (widget.isDottedBorder) {
          return DottedDecoration(
            linePosition: LinePosition.top,
            shape: Shape.line,
            strokeWidth: 1,
            dash: const [8, 6],
            color: widget.borderColor,
          );
        } else {
          return BoxDecoration(
            border: Border(
              top: BorderSide(
                color: widget.borderColor,
              ),
            ),
          );
        }
      }

      if (widget.border == ExpandedBorder.none) return null;
      return null;
    }

    Decoration? bottom() {
      if (widget.border == ExpandedBorder.bottom ||
          widget.border == ExpandedBorder.vertical) {
        if (widget.isDottedBorder) {
          return DottedDecoration(
            linePosition: LinePosition.bottom,
            shape: Shape.line,
            strokeWidth: 1,
            dash: const [8, 6],
            color: widget.borderColor,
          );
        } else {
          return BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: widget.borderColor,
              ),
            ),
          );
        }
      }
      if (widget.border == ExpandedBorder.none) return null;
      return null;
    }

    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Container(
        decoration: top(),
        child: Container(
          decoration: bottom(),
          child: ExpansionTile(
            iconColor: AppColors.greenSecondary,
            initiallyExpanded: widget.initialExpand,
            trailing: (widget.customSuffixExpanded != null &&
                    widget.customSuffix != null)
                ? isExpanded
                    ? widget.customSuffixExpanded
                    : widget.customSuffix
                : Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down_outlined
                        : Icons.keyboard_arrow_right_outlined,
                  ),
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            expandedAlignment: Alignment.centerLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            onExpansionChanged: (value) {
              setState(() {
                isExpanded = value;
              });
            },
            title: widget.header,
            children: widget.children,
          ),
        ),
      ),
    );
  }
}

enum ExpandedBorder { top, bottom, vertical, none }
