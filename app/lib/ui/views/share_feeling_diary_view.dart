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
        text: _textController.text.trim(),
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
    final feelingsDescriptions = {
      Feeling.angry:
          'O que aconteceu para você ficar irritado? Compartilhe com nós e alivie um pouco da sua raiva.',
      Feeling.confused:
          'Se sentir confuso pode ser muito frustrante às vezes. Compartilhe com a nossa comunidade para tentarmos te ajudar.',
      Feeling.sad:
          'Se você está triste, nós estamos tristes. Fale um pouco sobre este sentimento e nos deixe ajudar.',
      Feeling.sick:
          'Desejamos melhoras para você. Fale com a gente o que aconteceu e como está se sentindo agora.',
      Feeling.sleeping:
          'Os dias às vezes são duros, mas é sempre bom tirar um tempo para você. Agora você pode relaxar e compartilhar o que tá te deixando cansado.',
      Feeling.smiling:
          'Que bom que você está se sentido ótimo, compartilhe com a gente o que está te deixando tão feliz.',
    };

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
            Text('${feelingsDescriptions[widget.feeling]}'),
            const SizedBox(height: 8),
            const Text('Pelo menos 10 caracteres'),
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
