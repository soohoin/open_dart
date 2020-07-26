enum CorpClass {
  Y,
  K,
  N,
  E,
}

extension CorpClassToString on CorpClass {
  String get enumToString {
    switch (this) {
      case CorpClass.Y:
        return 'Y 유가';
      case CorpClass.K:
        return 'K 코스닥';
      case CorpClass.N:
        return 'N 코넥스';
      case CorpClass.E:
        return 'E 기타';
      default:
        throw Exception('CorpClass is not defined');
    }
  }
}
