class Nato {
  var encode = {
    "a": "alpha",
    "b": "bravo",
    "c": "charlie",
    "d": "delta",
    "e": "echo",
    "f": "foxtrot",
    "g": "golf",
    "h": "hotel",
    "i": "india",
    "j": "juliet",
    "k": "kilo",
    "l": "lima",
    "m": "mike",
    "n": "november",
    "o": "oscar",
    "p": "papa",
    "q": "quebec",
    "r": "romeo",
    "s": "sierra",
    "t": "tango",
    "u": "uniform",
    "v": "victor",
    "w": "whiskey",
    "x": "x-ray",
    "y": "yankee",
    "z": "zulu",
    "0": "zero",
    "1": "one",
    "2": "two",
    "3": "three",
    "4": "four",
    "5": "five",
    "6": "six",
    "7": "seven",
    "8": "eight",
    "9": "niner",
    " ": "-",
    ".": "stop"
  };
  var decode = {
    "alpha": "a",
    "bravo": "b",
    "charlie": "c",
    "delta": "d",
    "echo": "e",
    "foxtrot": "f",
    "golf": "g",
    "hotel": "h",
    "india": "i",
    "juliet": "j",
    "kilo": "k",
    "lima": "l",
    "mike": "m",
    "november": "n",
    "oscar": "o",
    "papa": "p",
    "quebec": "q",
    "romeo": "r",
    "sierra": "s",
    "tango": "t",
    "uniform": "u",
    "victor": "v",
    "whiskey": "w",
    "whisky": "w",
    "x-ray": "x",
    "yankee": "y",
    "zulu": "z",
    "zero": "0",
    "one": "1",
    "two": "2",
    "three": "3",
    "four": "4",
    "five": "5",
    "six": "6",
    "seven": "7",
    "eight": "8",
    "niner": "9",
    "-": " ",
    "stop": "."
  };
  var preserved = ['!', '?'];

  String sentenceFromLetters(List<String> letters) {
    return lettersToNato(letters).join(' ');
  }

  List<String> lettersToNato(List<String> letters) {
    List<String> bogies = List();
    for (String letter in letters) {
      var word = encode[letter];
      if (word != null) {
        bogies.add(word);
      } else {
        for (String pre in preserved) {
          if (letter == pre) {
            bogies.add(letter);
            break;
          }
        }
      }
    }
    return bogies;
  }

  String wordsFromNato(List<String> nato) {
    return wordsToLetters(nato).join('');
  }

  List<String> wordsToLetters(List<String> nato) {
    List<String> res = List();
    for (String word in nato) {
      var char = decode[word];
      if (char != null) {
        res.add(char);
      }
    }
    return res;
  }
}
