import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workapp/model/state/work_list_model.dart';
import 'package:workapp/model/state/work_list_state.dart';

final worklistProvider = StateNotifierProvider<WorkListModel/*StateNotifier*/,WorkListState/*状態の型*/>(
        (ref)=> WorkListModel(),
);