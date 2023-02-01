import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workapp/view/color_model.dart';
import 'package:workapp/view/text_model.dart';
import 'package:workapp/view/sizebox.dart';
import 'package:intl/intl.dart';

class TopPage extends ConsumerWidget{
  TopPage({super.key});

  var Date = DateFormat.yMMMMEEEEd('ja').format(DateTime.now());
  final Time = DateFormat('HH:mm:s').format(DateTime.now());

  @override
  Widget build(BuildContext context,WidgetRef ref){
    return Scaffold(
      appBar: AppBar(
        title:const Text("勤怠管理システム",style: titleStyle),
        backgroundColor: ColorModel.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  bottom:BorderSide(color: ColorModel.gray),
                )
              ),
              child:ListTile(
              title: TextButton(
                  onPressed: (){},
                  child: const Text('月報', style: menuStyle
              ),),
            ),),
            DecoratedBox(
              decoration: const BoxDecoration(
                  border: Border(
                    bottom:BorderSide(color: ColorModel.gray),
                  )
              ),
              child:ListTile(
                title: TextButton(
                  onPressed: (){},
                  child: const Text('各種申請書', style: menuStyle
                  ),),
              ),),
            DecoratedBox(
              decoration: const BoxDecoration(
                  border: Border(
                    bottom:BorderSide(color: ColorModel.gray),
                  )
              ),
              child:ListTile(
                title: TextButton(
                  onPressed: (){},
                  child: const Text('現場一覧', style: menuStyle
                  ),),
              ),),
            DecoratedBox(
              decoration: const BoxDecoration(
                  border: Border(
                    bottom:BorderSide(color: ColorModel.gray),
                  )
              ),
              child:ListTile(
                title: TextButton(
                  onPressed: (){},
                  child: const Text('現場コード', style: menuStyle
                  ),),
              ),),
          ],
        ),
      ),
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Date,style: topStyle),
          const SizeBox.height(20),
          Text(Time,style: topStyle),
          const SizeBox.height(50),
          Row(mainAxisAlignment:MainAxisAlignment.center, children:[
            SizedBox(
              width: 100,
              height: 50,
            child:ElevatedButton(
            onPressed: (){},
            child: const Text(
              "出勤",
              style: defaultStyle,
            ),
          ),),
            const SizeBox.width(30),
            SizedBox(
              width: 100,
              height: 50,
              child:ElevatedButton(
                onPressed: (){},
                child: const Text(
                  "退勤",
                  style: defaultStyle,
                )
            ),),],),],),),
    );
  }
}