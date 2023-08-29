import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AddPanel extends StatefulWidget {
  final VoidCallback increment;
  final VoidCallback decrement;
  final int amount;
  final ControllerCallback controller;

  const AddPanel({
    super.key,
    required this.increment,
    required this.decrement,
    required this.amount,
    required this.controller,
  });

  @override
  State<AddPanel> createState() => _AddPanelState();
}

class _AddPanelState extends State<AddPanel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Titulo',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
            Text(
              'SubTitulo',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: widget.decrement,
                icon: const Icon(Icons.remove),
                color: Colors.blueAccent,
              ),
            ),
            Observer(builder: (_) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget.amount.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              );
            }),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8),
              ),
              child: IconButton(
                onPressed: widget.increment,
                icon: const Icon(Icons.add),
                color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ],
    );
  }
}
