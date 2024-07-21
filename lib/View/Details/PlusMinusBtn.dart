import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class QuantityPicker extends StatefulWidget {
  final Function(int) onIncrease;
  final Function(int) onDecrease;
  final int currentQuantity;

  const QuantityPicker({
    Key? key,
    required this.onIncrease,
    required this.onDecrease,
    required this.currentQuantity,
  }) : super(key: key);

  @override
  State<QuantityPicker> createState() => _QuantityPickerState();
}

class _QuantityPickerState extends State<QuantityPicker> {
  int _quantity = 0;

  @override
  void initState() {
    super.initState();
    _quantity = widget.currentQuantity; // Initialize with initial quantity
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            if (_quantity > 0) {
              setState(() {
                _quantity--;
                widget.onDecrease(_quantity);
              });
            }
          },
        ),
        NumberPicker(
          minValue: 0,
          maxValue: 100, // Adjust max value as needed
          value: _quantity,
          onChanged: (value) {
            setState(() {
              _quantity = value;
              widget.onIncrease(value);
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _quantity++;
              widget.onIncrease(_quantity);
            });
          },
        ),
      ],
    );
  }
}
