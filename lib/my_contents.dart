import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyContents extends HookWidget {
  const MyContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sliderValue = useState<double>(0.5);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sliderValue.value.toStringAsFixed(2),
          style: const TextStyle(fontSize: 100),
        ),
        Slider(
          value: sliderValue.value,
          onChanged: (value) => sliderValue.value = value,
        ),
      ],
    );
  }
}
