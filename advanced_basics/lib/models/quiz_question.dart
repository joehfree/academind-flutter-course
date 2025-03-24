class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //we'll copy the answers to a new list
    final shuffledList = List.of(answers);
    //then we'll shuffle the copy
    shuffledList.shuffle();
    //return the shuffled copy
    return shuffledList;
  }
}
