class QuizResult {
  const QuizResult({
    required this.questionIndex,
    required this.question,
    required this.correctOption,
    required this.selectedOption,
  });
  final int questionIndex;
  final String question;
  final String correctOption;
  final String selectedOption;
}
