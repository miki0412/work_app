import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workapp/model/state/work_list_state.dart';

class WorkListModel extends StateNotifier<WorkListState>{
  WorkListModel():super(_initstate);

  static final _initstate = WorkListState(
    blocks:[
      Block(
          name: 'A',
          task: '営業回り',
          time: 30,
          actions: true,
      ),
    ]
  );
}