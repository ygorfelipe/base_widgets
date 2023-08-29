// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


class ModalidadePanel extends StatelessWidget {
  final ValueChanged<String> onModalidadePressed;
  const ModalidadePanel({super.key, required this.onModalidadePressed});

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
                onModalidadePressed: onModalidadePressed,
              ),
              ButtonModalidade(
                label: 'Alugar',
                onModalidadePressed: onModalidadePressed,
              ),
              ButtonModalidade(
                label: 'Ambos',
                onModalidadePressed: onModalidadePressed,
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
  final ValueChanged<String> onModalidadePressed;

  const ButtonModalidade({
    Key? key,
    required this.label,
    required this.onModalidadePressed,
  }) : super(key: key);

  @override
  State<ButtonModalidade> createState() => _ButtonModalidadeState();
}

class _ButtonModalidadeState extends State<ButtonModalidade> {
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
          widget.onModalidadePressed(widget.label);
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
