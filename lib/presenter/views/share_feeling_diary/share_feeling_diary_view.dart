import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../widgets/emoji.dart';
import '../../widgets/page_body.dart';
import 'share_feeling_diary_controller.dart';
import 'share_feeling_diary_store.dart';

class ShareFeelingDiaryView
    extends ModxView<ShareFeelingDiaryController, ShareFeelingDiaryStore> {
  const ShareFeelingDiaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: PageBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Emoji(store.feeling),
            const SizedBox(height: 16.0),
            const Text(
              'Que bom que você está se sentido ótimo, compartilhe com a gente o que está te deixando tão feliz.',
            ),
            const SizedBox(height: 12),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                expands: true,
                controller: controller.text,
                decoration: const InputDecoration(
                  hintText: 'Escreva aqui...',
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
            Obx(
              () => ElevatedButton(
                child: const Text('Publicar'),
                onPressed:
                    store.canSendDiary ? controller.registerDayFeeling : null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
