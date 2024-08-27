import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

class ColorPickerPage extends StatefulWidget {
  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  Color _currentColor = Colors.orange;

  void _pickColor() async {
    final Color? pickedColor = await showColorPickerDialog(
      context,
      _currentColor,
      title: Text('Pick color', style: Theme.of(context).textTheme.titleLarge),
      width: 40,
      height: 40,
      borderRadius: 4,
      spacing: 10,
      runSpacing: 10,
      wheelDiameter: 165,
      enableOpacity: true,
      showColorName: true,
      colorNameTextStyle: Theme.of(context).textTheme.titleMedium,
      showColorCode: true,
      colorCodeTextStyle: Theme.of(context).textTheme.bodyMedium,
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.both: true,
        ColorPickerType.primary: false,
        ColorPickerType.accent: false,
      },
      copyPasteBehavior: const ColorPickerCopyPasteBehavior(
        longPressMenu: true,
      ),
      actionButtons: const ColorPickerActionButtons(
        okButton: true,
        closeButton: true,
        dialogActionButtons: false,
      ),
    );

    if (pickedColor != null && pickedColor != _currentColor) {
      setState(() {
        _currentColor = pickedColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Color Picker'),
        backgroundColor: _currentColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Color:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              color: _currentColor,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickColor,
              child: Text('Pick Color'),
            ),
          ],
        ),
      ),
    );
  }
}
