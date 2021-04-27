class Question {
  String category;
  String question;
  String difficulty;
  String correctAnswer;
  List<dynamic> incorrectAnswers;

  Question(this.category, this.question, this.difficulty, this.correctAnswer,
      this.incorrectAnswers);
}
