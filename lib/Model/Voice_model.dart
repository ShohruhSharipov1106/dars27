class Voice {
  Voice({
    this.word,
    this.phonetic,
    this.phonetics,
    this.origin,
    this.meanings,
  });

  String? word;
  String? phonetic;
  List<Phonetic>? phonetics;
  String? origin;
  List<Meaning>? meanings;

  factory Voice.fromJson(Map<String, dynamic> json) => Voice(
        word: json["word"],
        phonetic: json["phonetic"],
        phonetics: List<Phonetic>.from(
            json["phonetics"].map((x) => Phonetic.fromJson(x))),
        origin: json["origin"],
        meanings: List<Meaning>.from(
            json["meanings"].map((x) => Meaning.fromJson(x))),
      );
}

class Meaning {
  Meaning({
    this.partOfSpeech,
    this.definitions,
  });

  String? partOfSpeech;
  List<Definition>? definitions;

  factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        partOfSpeech: json["partOfSpeech"],
        definitions: List<Definition>.from(
            json["definitions"].map((x) => Definition.fromJson(x))),
      );
}

class Definition {
  Definition({
    this.definition,
    this.example,
    this.synonyms,
    this.antonyms,
  });

  String? definition;
  String? example;
  List<String>? synonyms;
  List<dynamic>? antonyms;

  factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        definition: json["definition"],
        example: json["example"],
        synonyms: List<String>.from(json["synonyms"].map((x) => x)),
        antonyms: List<dynamic>.from(json["antonyms"].map((x) => x)),
      );
}

class Phonetic {
  Phonetic({
    this.text,
    this.audio,
  });

  String? text;
  String? audio;

  factory Phonetic.fromJson(Map<String, dynamic> json) => Phonetic(
        text: json["text"],
        audio: json["audio"],
      );
}
