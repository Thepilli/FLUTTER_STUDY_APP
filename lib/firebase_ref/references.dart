import 'package:cloud_firestore/cloud_firestore.dart';

final fireStore = FirebaseFirestore.instance;
final questionPaperRef = fireStore.collection('question_paper');
DocumentReference questionRef({
  required String paperId,
  required String questionId,
}) =>
    questionPaperRef.doc(paperId).collection('questions').doc(questionId);
