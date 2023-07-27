import 'package:flutter/material.dart';

class ContainerMade extends StatefulWidget {
  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final String? subtitle;
  final Color? subtitleColor;

  final EdgeInsetsGeometry? padding;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  const ContainerMade(
      {Key? key,
      this.width,
      required this.height,
      this.color1,
      this.color2,
      required this.title,
      this.textColor,
      this.subtitle,
      this.subtitleColor,
      this.padding,
      this.titleStyle,
      this.subtitleStyle})
      : super(key: key);

  @override
  State<ContainerMade> createState() => _ContainerMadeState();
}

class _ContainerMadeState extends State<ContainerMade> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap ?? () {},
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? const Color(0xFFCB1841),
            widget.color2 ?? const Color(0xFF2604DE)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.title,
                style: widget.titleStyle ??
                    TextStyle(
                      color: widget.textColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            widget.subtitle != null
                ? Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      widget.subtitle ?? "",
                      style: widget.subtitleStyle ??
                          TextStyle(
                            color: widget.subtitleColor,
                            fontSize: 15.0,
                          ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
