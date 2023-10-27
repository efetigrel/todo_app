import 'package:flutter/material.dart';
import 'package:todo_app/model/task.dart';

class todoItem extends StatefulWidget {
  const todoItem({super.key, required this.task});
  final Task task;

  @override
  State<todoItem> createState() => _todoItemState();
}

class _todoItemState extends State<todoItem> {
  bool isChechked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.notes_outlined,
              size: 50,
            ),
            Text(
              widget.task.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Checkbox(
              value: isChechked,
              onChanged: (val) => {
                setState(
                  () {
                    isChechked = val!;
                  },
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
