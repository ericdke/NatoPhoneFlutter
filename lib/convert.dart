class ConvertText {
  List<String> textToChars(String text) {
    return wordsToChars(textToWords(text));
  }

  List<String> textToWords(String text) {
    return text.toLowerCase().split(' ');
  }

  List<String> wordsToChars(List<String> words) {
    List<String> letters = List();
    for (String word in words) {
      List<String> split = word.split('');
      for (String char in split) {
        letters.add(char);
      }
      letters.add(' ');
    }
    if (letters.length > 0) {
      letters.removeLast();
    }
    return letters;
  }
}
