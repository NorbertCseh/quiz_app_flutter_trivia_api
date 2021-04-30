class Question {
  String category;
  String question;
  String difficulty;
  String correctAnswer;
  List<dynamic> incorrectAnswers;
  List<String> mixedAnswers = [];

  Question(this.category, this.question, this.difficulty, this.correctAnswer,
      this.incorrectAnswers);

  mixAnswers() {
    for (String q in incorrectAnswers) {
      this.mixedAnswers.add(q);
    }
    this.mixedAnswers.add(correctAnswer);
    this.mixedAnswers.sort();
  }
}
