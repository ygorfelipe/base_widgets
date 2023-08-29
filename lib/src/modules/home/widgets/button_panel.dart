// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonCounterPanel extends StatefulWidget {
  final ValueChanged<String> onButtonPressed;
  const ButtonCounterPanel({
    Key? key,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  State<ButtonCounterPanel> createState() => _ButtonCounterPanelState();
}

class _ButtonCounterPanelState extends State<ButtonCounterPanel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'O que deseja fazer?',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              ButtonModalidade(
                label: 'Vender',
                onButtonPressed: widget.onButtonPressed,
              ),
              ButtonModalidade(
                label: 'Alugar',
                onButtonPressed: widget.onButtonPressed,
              ),
              ButtonModalidade(
                label: 'Ambos',
                onButtonPressed: widget.onButtonPressed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonModalidade extends StatefulWidget {
  final String label;
  final ValueChanged<String> onButtonPressed;
  const ButtonModalidade(
      {super.key, required this.label, required this.onButtonPressed});

  @override
  State<ButtonModalidade> createState() => _ButtonModalidadeState();
}

class _ButtonModalidadeState extends State<ButtonModalidade> {
  var selected = false;
  @override
  Widget build(BuildContext context) {
    final textColor = selected ? Colors.white : Colors.blueAccent;
    final buttonColor = selected ? Colors.blueAccent : Colors.white;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          widget.onButtonPressed(widget.label);
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}

// class ButtonModalidade extends StatefulWidget {
//   final String label;
//   final ValueChanged<String> onButtonPressed;
//   const ButtonModalidade(
//       {super.key, required this.label, required this.onButtonPressed});

//   @override
//   State<ButtonModalidade> createState() => _ButtonModalidadeState();
// }

// class _ButtonModalidadeState extends State<ButtonModalidade> {
//   var selected = false;
//   @override
//   Widget build(BuildContext context) {
//     final textColor = selected ? Colors.white : Colors.blueAccent;
//     final buttonColor = selected ? Colors.blueAccent : Colors.white;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           widget.onButtonPressed(widget.label);
//           setState(() {
//             selected = !selected;
//           });
//         },
//         child: Container(
//           height: 100,
//           width: 100,
//           decoration: BoxDecoration(
//             color: buttonColor,
//             border: Border.all(color: Colors.blueAccent),
//             borderRadius: BorderRadius.circular(4),
//           ),
//           child: Center(
//             child: Text(
//               widget.label,
//               style: TextStyle(color: textColor),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
