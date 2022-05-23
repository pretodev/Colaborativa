import '../../domain/feeling/editing_feeling_diary.dart';

class EditingFeelingDiaryMapper {
  static Map<String, dynamic> toMap(EditingFeelingDiary feelingDiary) {
    return {
      'feeling': feelingDiary.feeling.name,
      'timestamp': DateTime.now().toIso8601String(),
      'content': feelingDiary.text,
    };
  }
}
