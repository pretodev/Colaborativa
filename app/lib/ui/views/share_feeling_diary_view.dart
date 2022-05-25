import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:colaborativa_app/core/entities/feeling.dart';

import '../../core/entities/feeling_diary.dart';
import '../../core/feeling_service.dart';
import '../widgets/emoji.dart';
import '../widgets/page_body.dart';

class ShareFeelingDiaryView extends StatefulWidget {
  const ShareFeelingDiaryView({
    Key? key,
    required this.feeling,
  }) : super(key: key);

  final Feeling feeling;

  @override
  State<ShareFeelingDiaryView> createState() => _ShareFeelingDiaryViewState();
}

class _ShareFeelingDiaryViewState extends State<ShareFeelingDiaryView> {
  late final FeelingService _feelingRepository;
  late final NavigatorState _navigator;

  final _textController = TextEditingController();

  var _textValid = false;
  set textValid(bool value) => setState(() => _textValid = value);
  bool get isTextValid => _textValid;

  void shareFeeling() async {
    await _feelingRepository.save(
      FeelingDiary(
        feeling: widget.feeling,
        text: _textController.text,
      ),
    );
    _navigator.pop();
  }

  @override
  void initState() {
    super.initState();
    _feelingRepository = context.read();
    _navigator = Navigator.of(context);
    _textController.addListener(() {
      textValid = _textController.text.length >= 10;
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => _navigator.pop(),
        ),
      ),
      body: PageBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Emoji(widget.feeling),
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
                controller: _textController,
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
              onPressed: isTextValid ? shareFeeling : null,
              child: const Text('Publicar'),
            ),
          ],
        ),
      ),
    );
  }
}
