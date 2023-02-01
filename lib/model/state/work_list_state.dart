import 'package:flutter/material.dart';

class WorkListState {
  WorkListState({
    required this.blocks,
  });

  final List<Block> blocks;

  WorkListState copyWith({
    List<Block>? blocks
  }){
    return WorkListState(
        blocks: blocks?? this.blocks,
    );
  }
}

class Block {
  Block({
    required this.name,
    required this.task,
    required this.time,
    required this.actions,
  });
  final String name;
  final String task;
  final int time;
  final bool actions;

  Block copyWith({
    String? name,
    String? task,
    int? time,
    bool? actions,
  }){
    return Block(
        name: name?? this.name,
        task: task?? this.task,
        time: time?? this.time,
        actions: actions?? this.actions,
    );
  }
}
