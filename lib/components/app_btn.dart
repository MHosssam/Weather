import 'package:weather/common.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final void Function(bool)? onHover;
  final String? title;
  final Widget? titleWidget;
  final Color? color, titleColor;
  final double? width, height, fontSize;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final AlignmentDirectional? alignment;

  const AppButton({
    Key? key,
    this.onTap,
    this.onHover,
    this.color,
    this.titleColor = Colors.white,
    this.title,
    this.height = 40,
    this.width,
    this.fontSize = 18.0,
    this.borderRadius,
    this.titleWidget,
    this.alignment,
    this.border,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      hoverColor: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: color ?? context.theme.colorScheme.secondary,
          border: border,
          borderRadius: borderRadius ?? BorderRadius.circular(8.0),
        ),
        child: Center(
          child: title == null
              ? titleWidget
              : AppText(
                  text: title!,
                  color: titleColor ?? context.theme.colorScheme.onSecondary,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
        ),
      ),
    );
  }
}
