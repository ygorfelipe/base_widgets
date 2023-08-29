import 'package:flutter/material.dart';



class ImovelPanel extends StatelessWidget {
  final ValueChanged<String> onImovelPressed;
  const ImovelPanel({
    Key? key,
    required this.onImovelPressed,
  }) : super(key: key);

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
              ButtonImovelPanel(
                  label: 'Comercial', onImovelPressed: onImovelPressed),
              ButtonImovelPanel(
                  label: 'Residencial', onImovelPressed: onImovelPressed),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonImovelPanel extends StatefulWidget {
  final String label;
  final ValueChanged<String> onImovelPressed;

  const ButtonImovelPanel(
      {super.key, required this.label, required this.onImovelPressed});

  @override
  State<ButtonImovelPanel> createState() => _ButtonImovelPanelState();
}

class _ButtonImovelPanelState extends State<ButtonImovelPanel> {
  var selected = false;

  @override
  Widget build(BuildContext context) {
    final textColor = selected ? Colors.white : Colors.blueAccent;
    final buttonColor =
        selected ? Colors.blueAccent : Colors.white;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          widget.onImovelPressed(widget.label);
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
