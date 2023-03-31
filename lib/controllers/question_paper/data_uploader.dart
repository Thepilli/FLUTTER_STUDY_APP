import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_study_app/firebase_ref/loading_status.dart';
import 'package:flutter_study_app/models/question_paper_model.dart';
import 'package:get/get.dart';
import 'dart:convert';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }

  final loadingStatus = LoadingStatus.loading.obs; //loadingStatus is observable

  Future<void> uploadData() async {
    loadingStatus.value = LoadingStatus.loading; //0

    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // load json files from assets/DB/paper and print paths
    final papersInAssets = manifestMap.keys
        .where((path) =>
            path.startsWith('assets/DB/paper') && path.contains('.json'))
        .toList();
    List<Question_Paper_Model> questionPapers = [];
    //print(papersInAssets);
    for (var paper in papersInAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      questionPapers
          .add(Question_Paper_Model.fromJson(json.decode(stringPaperContent)));
    }
    // print('Items number: ${questionPapers[0].id}');

    var batch = fireStore.batch();

    for (var paper in questionPapers) {
      var ref = fireStore.collection('question_paper').doc(paper.id);
      batch.set(ref, paper.toJson());
      for (var question in paper.questions!) {
        var questionRef = ref.collection('questions').doc(question.id);
        batch.set(questionRef, question.toJson());
        for (var answer in question.answers) {
          var answerRef =
              questionRef.collection('answers').doc(answer.identifier);
          batch.set(answerRef, answer.toJson());
        }
      }
    }
    await batch.commit();
    loadingStatus.value = LoadingStatus.completed; //1
    // GITHUB COPILOT SUGGESTION:
    // for (var paper in papersInAssets) {
    //   final paperContent = await DefaultAssetBundle.of(Get.context!)
    //       .loadString(paper);
    //   final Map<String, dynamic> paperMap = json.decode(paperContent);
    //   print(paperMap);
  }
}
