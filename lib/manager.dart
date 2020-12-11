import 'convert.dart';
import 'nato.dart';

class NatoManager {
  ConvertText convert = ConvertText();
  Nato nato = Nato();

  String encode(String text) {
    return nato.sentenceFromLetters(convert.textToChars(text));
  }

  String decode(String text) {
    return nato.wordsFromNato(convert.textToWords(text));
  }
}
