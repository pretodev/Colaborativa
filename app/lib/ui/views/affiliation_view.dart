import 'package:colaborativa_app/ui/widgets/profile_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/affiliation_service.dart';
import '../../core/entities/user.dart';
import '../widgets/page_body.dart';
import '../widgets/selectable_list_tile_widget.dart';

class AffiliationView extends StatefulWidget {
  const AffiliationView({Key? key}) : super(key: key);

  @override
  State<AffiliationView> createState() => _AffiliationViewState();
}

class _AffiliationViewState extends State<AffiliationView> {
  late final AffiliationService affiliation;
  late final NavigatorState navigate;

  String? mentoIdState;
  setMentorId(String? mentorId) => setState(() => mentoIdState = mentorId);

  bool selectingState = false;
  setSelecting(bool selecting) => setState(() => selectingState = selecting);

  bool get validate => mentoIdState != null && !selectingState;

  List<User> mentorsState = [];
  set mentors(List<User> value) => setState(() => mentorsState = value);

  bool loadingState = true;
  set loading(bool value) => setState(() => loadingState = value);

  void selectMentor() async {
    setSelecting(true);
    await affiliation.affiliate(mentoIdState!);
    navigate.pop(true);
  }

  void loadMentors() async {
    loading = true;
    mentors = await affiliation.freeMentors;
    loading = false;
  }

  @override
  void initState() {
    super.initState();
    navigate = Navigator.of(context);
    affiliation = context.read<AffiliationService>();
    loadMentors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha um mentor'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          if (loadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (mentorsState.isEmpty) {
            return const Center(
              child: Text('Nenhum mentor disponível'),
            );
          }
          return PageBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: mentorsState.length,
                    itemBuilder: (context, index) {
                      final mentor = mentorsState[index];
                      return SelectableListTileWidget(
                        selected: mentor.id == mentoIdState,
                        title: Text(mentor.name),
                        onClicked: () => mentoIdState == null
                            ? setMentorId(mentor.id)
                            : setMentorId(null),
                        leading: const ProfileAvatarWidget(size: 32.0),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: validate ? selectMentor : null,
                  child: const Text('Selecionar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
