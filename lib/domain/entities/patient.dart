class Patient {
  List<Results> results;

  Patient({required this.results});

  static Patient fromJson(Map<String, dynamic> json) {
    return Patient(results: json['results']);
  }
}

class Results {
  final Name name;
  final String gender;
  final String email;
  final Location location;
  final Dob dob;
  final Id id;
  final String phone;
  final Picture picture;

  Results(
      {required this.name,
      required this.gender,
      required this.email,
      required this.location,
      required this.dob,
      required this.id,
      required this.phone,
      required this.picture});

  static Results fromJson(Map<String, dynamic> json) => Results(
        dob: json['dob'],
        email: json['email'],
        gender: json['gender'],
        id: json['id'],
        location: json['location'],
        name: json['name'],
        phone: json['phone'],
        picture: json['picture'],
      );
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.first, this.last, this.title});

  static Name fromJson(Map<String, dynamic> json) {
    return Name(first: json['first'], title: json['title'], last: json['last']);
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postCode;

  Location({this.city, this.country, this.postCode, this.state, this.street});

  static Location fromJson(Map<String, dynamic> json) {
    return Location(
      city: json['city'],
      country: json['country'],
      postCode: json['postCode'],
      state: json['state'],
      street: json['street'],
    );
  }
}

class Street {
  int? number;
  String? name;

  Street({this.name, this.number});
  static Street fromJson(Map<String, dynamic> json) {
    return Street(number: json['number'], name: json['name']);
  }
}

class Id {
  String? value;

  Id({this.value});

  static Id fromJson(Map<String, dynamic> json) {
    return Id(
      value: json['value'],
    );
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  static Picture fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

class Dob {
  String? date;

  Dob({this.date});

  static Dob fromJson(Map<String, dynamic> json) {
    return Dob(
      date: json['date'],
    );
  }
}
