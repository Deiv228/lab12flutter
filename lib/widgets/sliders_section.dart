import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/container_config_provider.dart';

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.watch<ContainerConfigProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSliderItem(
          label: 'Width',
          value: config.width,
          min: 20.0,
          max: 250.0,
          onChanged: config.updateWidth,
        ),
        const SizedBox(height: 8),
        _buildSliderItem(
          label: 'Height',
          value: config.height,
          min: 20.0,
          max: 250.0,
          onChanged: config.updateHeight,
        ),
        const SizedBox(height: 8),
        _buildSliderItem(
          label: 'Radius',
          value: config.topRightRadius,
          min: 0.0,
          max: 150.0,
          onChanged: config.updateTopRightRadius,
        ),
      ],
    );
  }

  Widget _buildSliderItem({
    required String label,
    required double value,
    required double min,
    required double max,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('$label: '),
            Text(
              value.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}