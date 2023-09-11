import 'package:flutter/cupertino.dart';

class Feature extends StatelessWidget {
  final String feature;

  const Feature({
    super.key,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFC),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Text(
          feature,
          style: const TextStyle(
            color: Color(0xFF828796),
          ),
        ),
      ),
    );
  }
}

class HotelFeatures extends StatelessWidget {
  final List<String> features;

  const HotelFeatures(
    this.features, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        runSpacing: 8.0,
        spacing: 8.0,
        children: features
            .map(
              (feature) => Feature(feature: feature),
            )
            .toList(),
      ),
    );
  }
}
