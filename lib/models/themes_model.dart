class Themes {
  String? img;
  String? title;

  Themes(this.img, this.title);

  static List<Themes> themeData() {
    return [
      Themes('assets/themes/Alexandra-Falls.jpg', 'Theme One'),
      Themes('assets/themes/Autumn-Japan-theme.jpg', 'Theme Two'),
      Themes('assets/themes/Ban-Gioc-Detian-Falls.jpg', 'Theme Three'),
      Themes('assets/themes/cave-boat.jpg', 'Theme Four'),
      Themes('assets/themes/cherry-blossoms.jpg', 'Theme Five'),
      Themes('assets/themes/forest-fog-trees.jpg', 'Theme Six'),
      Themes('assets/themes/forest-for-the-trees.jpg', 'Theme Seven'),
      Themes('assets/themes/Gásadalur-Falls.jpg', 'Theme Eight'),
      Themes('assets/themes/Gullfoss-Falls.jpg', 'Theme Nine'),
      Themes('assets/themes/Lamborghini-Gallardo.jpg', 'Theme Ten'),
      Themes('assets/themes/loneliness.jpg', 'Theme Eleven'),
      Themes('assets/themes/Porsche.jpg', 'Theme Twelve'),
    ];
  }
}
