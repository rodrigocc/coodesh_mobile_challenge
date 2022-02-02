class Patient {
  final String imgPicture;
  final String name;
  final String gender;
  final String birthidayDate;
  final String email;
  final String nationality;
  final String location;
  final String login;

  const Patient({
    required this.login,
    required this.birthidayDate,
    required this.gender,
    required this.imgPicture,
    required this.name,
    required this.nationality,
    required this.location,
    required this.email,
  });

  static Patient fromJson(Map<String, dynamic> json) {
    return Patient(
        birthidayDate: json['dob'],
        gender: json['gender'],
        imgPicture: json['picture'],
        name: json['name'],
        nationality: json['nat'],
        location: json['location'],
        email: json['email'],
        login: json['login']);
  }
}
