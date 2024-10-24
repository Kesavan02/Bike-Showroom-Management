class BrandItem{
  final String name;
  final String imgPath;

  BrandItem(
  {
    required this.name,required this.imgPath
});

}

BrandList allBrands = BrandList(brands: [
  BrandItem(
      name: 'TVS',
      imgPath: 'assets/logos/tvs.png'
  ),
  BrandItem(
      name: 'BAJAJ',
      imgPath: 'assets/logos/bajaj.png'
  ),
  BrandItem(
      name: 'HONDA',
      imgPath: 'assets/logos/honda.jpeg'
  ),
  BrandItem(
      name: 'KTM',
      imgPath: 'assets/logos/ktm.png'
  ),
  BrandItem(
      name: 'ROYAL ENFIELD',
      imgPath: 'assets/logos/Royal-Enfield-Logo.png'
  ),
  BrandItem(
      name: 'YAMAHA',
      imgPath: 'assets/logos/yamaha.jpeg'
  ),
]);

class BrandList{
  List<BrandItem> brands;

  BrandList({required this.brands});
}