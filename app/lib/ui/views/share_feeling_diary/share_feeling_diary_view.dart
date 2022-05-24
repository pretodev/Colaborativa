import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/emoji.dart';
import '../../widgets/page_body.dart';
import 'share_feeling_diary_model.dart';

class ShareFeelingDiaryView extends StatefulWidget {
  const ShareFeelingDiaryView({Key? key}) : super(key: key);

  @override
  State<ShareFeelingDiaryView> createState() => _ShareFeelingDiaryViewState();
}

class _ShareFeelingDiaryViewState extends State<ShareFeelingDiaryView> {
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
        child: Consumer<ShareFeelingDiaryModel>(
          builder: (context, model, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Emoji(model.feeling),
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
                    controller: model.text,
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
                ElevatedButton(
                  onPressed: model.isTextValid ? model.shareFeeling : null,
                  child: const Text('Publicar'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
