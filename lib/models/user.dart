part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    this.id = 0,
    this.name = '',
    this.email = '',
    this.address = '',
    this.houseNumber = '',
    this.phoneNumber = '',
    this.city = '',
    this.picturePath = '',
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        address,
        houseNumber,
        phoneNumber,
        city,
        picturePath,
      ];
}

User mockUser = User(
  id: 1,
  name: 'Chou Tzuyu',
  email: 'choutzuyu@blackpink.com',
  address: 'Sodong City',
  houseNumber: '44',
  phoneNumber: '08991977928',
  city: 'Bandung',
  picturePath:
      'https://pbs.twimg.com/profile_images/748899967037677568/FwpUSOhe.jpg',
);
