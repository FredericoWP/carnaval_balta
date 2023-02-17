int countWords(String? text) {
  if (text == null || text.trim().isEmpty) return 0;

  int words = 0;
  var caracteres = text.split(" ");

  for (var w in caracteres) {
    if (w.trim().isNotEmpty) words++;
  }

  return words;
}

int countChar(String? text) {
  if (text == null || text.trim().isEmpty) return 0;
  var caracteres = text.replaceAll(" ", "").split("");
  var nCaract = caracteres.length;
  return nCaract;
}
