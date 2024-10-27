class QuizQuestion {
  const QuizQuestion(this.question, this.options);
  final String question;
  final List<String> options;

  List<String> getShuffledOptions() {
    final List<String> shuffledString = List.of(options);
    shuffledString.shuffle();
    return shuffledString;
  }
}
