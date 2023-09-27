import 'package:adaptive_components/adaptive_components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelas_flutter/shared/extension.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(
              xsmall: true,
              small: true,
              medium: true,
              large: true,
              xlarge: true,
            ),
            color: Colors.red,
            child: Text(
              'This is Google Fonts',
              style: context.displayMedium?.copyWith(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.yellow),
            ),
          ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints.small(),
          //   color: Colors.orange,
          //   child: const Text('This is a small window'),
          // ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints.medium(),
          //   color: Colors.yellow,
          //   child: const Text('This is a medium window'),
          // ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints.large(),
          //   color: Colors.green,
          //   child: const Text('This is a large window'),
          // ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints.xlarge(),
          //   color: Colors.blue,
          //   child: const Text('This is an extra large window'),
          // ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints(
          // xsmall: true,
          // small: true,
          // medium: false,
          // large: false,
          // xlarge: false,
          //   ),
          //   color: Colors.indigo,
          //   child: const Text('This is a small or extra small window'),
          // ),
          // AdaptiveContainer(
          //   constraints: const AdaptiveConstraints(
          //     xsmall: false,
          //     small: false,
          //     medium: true,
          //     large: true,
          //     xlarge: true,
          //   ),
          //   color: Colors.pink,
          //   child: const Text('This is a medium, large, or extra large window'),
          // ),
        ],
      ),
    );
    ;
  }
}
