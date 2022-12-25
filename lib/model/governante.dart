class Governante {
  String name;
  final String? image;

  Governante({required this.name, this.image});
}

final List<Governante> governanteList = [
  Governante(name: 'بغداد', image: 'assets/images/Baghdad.jpg'),
  Governante(name: 'الكوت', image: 'assets/images/Kut.jpg'),
  Governante(name: 'البصرة', image: 'assets/images/basra.jpg'),
  Governante(name: 'كركوك', image: 'assets/images/Kirkuk.jpg'),
  Governante(name: 'كربلاء', image: 'assets/images/karbalaa.jpg'),
  Governante(name: 'النجف', image: 'assets/images/najaf.jpg'),
];
