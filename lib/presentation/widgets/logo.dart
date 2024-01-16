import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animationapp/presentation/blocs/theme/theme_cubit.dart';
import 'package:animationapp/presentation/themes/theme_color.dart';

import '../../common/extensions/size_extensions.dart';

class Logo extends StatelessWidget {
  final double height;

  const Logo({
    super.key,
    required this.height,
  })   : assert(height > 0, 'height should be greater than 0');

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pngs/logo.png',
      key: const ValueKey('logo_image_key'),
      color: context.read<ThemeCubit>().state == Themes.dark
          ? Colors.white
          : AppColor.vulcan,
      height: height.h,
    );
  }
}
