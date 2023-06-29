List<Category> getCategoryList() {
  List<Category> list = [];
  list.add(Category('9B5366', 'assets/images/img_category_1.png', 'Piyoz yetishtirish'));
  list.add(Category('F8766B', 'assets/images/img_category_2.png', 'Qlupnay yetishtirish'));
  list.add(Category('FF8978', 'assets/images/img_category_3.png', 'Tarvuz yetishtirish'));
  list.add(Category('C7D458', 'assets/images/img_category_4.png', 'Karam yetishtirish'));
  list.add(Category('F6795B', 'assets/images/img_category_5.png', 'Pamidor yetishtirish'));
  list.add(Category('ECA340', 'assets/images/img_category_6.png', 'Kartoshka yetishtirish'));
  list.add(Category('FFD574', 'assets/images/img_category_7.png', 'Qovoq yetishtirish'));
  list.add(Category('FFD574', 'assets/images/img_category_8.png', 'Baqlajon yetishtirish'));
  return list;
}

class Category {
  String colorCode;
  String imageUrl;
  String title;

  Category(this.colorCode, this.imageUrl, this.title);
}
