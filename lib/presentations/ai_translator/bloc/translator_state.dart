class LanguageState {
  final String selectedLanguage1;
  final String selectedLanguage2;

  LanguageState({
    required this.selectedLanguage1,
    required this.selectedLanguage2,
  });

  LanguageState copyWith({
    String? selectedLanguage1,
    String? selectedLanguage2,
  }) {
    return LanguageState(
      selectedLanguage1: selectedLanguage1 ?? this.selectedLanguage1,
      selectedLanguage2: selectedLanguage2 ?? this.selectedLanguage2,
    );
  }
}

