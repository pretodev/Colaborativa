import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/affiliation_service.dart';
import '../../core/entities/user.dart';
import '../navigation/routes.dart';
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

  void selectMentor() async {
    setSelecting(true);
    await affiliation.affiliate(mentoIdState!);
    navigate.popAndPushNamed(Routes.home);
  }

  @override
  void initState() {
    super.initState();
    navigate = Navigator.of(context);
    affiliation = context.read<AffiliationService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha um mentor'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>>(
        future: affiliation.freeMentors,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Erro ao carregar os mentores'),
            );
          }
          return PageBody(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final mentor = snapshot.data![index];
                      return SelectableListTileWidget(
                        selected: mentor.id == mentoIdState,
                        title: Text(mentor.name),
                        onClicked: () => mentoIdState == null
                            ? setMentorId(mentor.id)
                            : setMentorId(null),
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
