import 'package:flutter/material.dart';

class Sudoku extends StatelessWidget {
  const Sudoku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Sudoku for kids'),
        ),
        body: const Center(
          child: Column(
            children: [
              Spacer(),
              Board(),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(child: Text('Option 1')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 2')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 3')),
                      ),
                      Expanded(
                        child: Center(child: Text('Option 4')),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 320,
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            _buildBlockRow(),
            _buildBlockRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildBlockRow() {
    return Row(
      children: [
        _buildBlock(),
        _buildBlock(),
      ],
    );
  }

  Widget _buildBlock() {
    return Expanded(
      child: Container(
        height: 152,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD3BBFF), width: 2),
        ),
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            _buildCellRow(['1', '2']),
            const SizedBox(height: 2),
            _buildCellRow(['1', '2']),
          ],
        ),
      ),
    );
  }

  Widget _buildCellRow(List<String> values) {
    return Row(
      children: values.map((value) => _buildCell(value)).toList(),
    );
  }

  Widget _buildCell(String text) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(1.0),
        height: 68,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xFFD3BBFF), width: 2),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
