class BikeItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  BikeItem(
  {required this.title,required this.price,required this.path,required this.gearbox,required this.fuel,required this.brand,required this.color}
      );
}

BikesList allBikes = BikesList(bikes: [
    BikeItem(
    title: 'Honda Civic 2018',
    price: 123,
    color: 'Dark Grey',
    gearbox: '4',
    fuel: '4L',
    brand: 'Honda',
    path: ''), // CarItem
    BikeItem(
    title: 'TVS Racer T20',
    price: 223,
    color: 'Grey',
    gearbox: '6',
    fuel: '19L',
    brand: 'Land Rover',
    path: ''), // CarItem
    BikeItem(
    title: 'Pept Black Scooty',
    price: 203,
    color: 'Ruby Red',
    gearbox: '5',
    fuel: '6L',
    brand: 'Mercedes',
    path: ''),
    BikeItem(
    title: 'Mode Bike',
    price: 190,
    color: 'Grey',
    gearbox: '5',
    fuel: '6L',
    brand: 'Audi',
    path: ''),
    BikeItem(
    title: 'Jaguar XF 2019',
    price: 200,
    color: 'White',
    gearbox: '6',
    fuel: '10L',
    brand: 'Jaguar',
    path: ''),
    BikeItem(
    title: 'BMW E-1 2018',
    price: 123,
    color: 'Dark Grey',
    gearbox: '6',
    fuel: '6L',
    brand: 'BMW',
    path: ''),
]);

class BikesList{
    List<BikeItem> bikes;

    BikesList({required this.bikes});
}