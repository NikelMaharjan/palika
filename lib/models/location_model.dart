




class Provincee {
  final int id;
  final String en_name;
  final String np_name;

    Provincee(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
      });

  factory  Provincee.fromJson(Map<String, dynamic> json){
    return  Provincee(
      id: json['id'],
      np_name: json['np_name'],
      en_name: json['en_name'],
    );
  }


  @override
  String toString() => en_name;



}





class Municipalities {
 final int id;
 final String en_name;
 final String np_name;
 final int district_id;

  Municipalities(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
        required this.district_id
      });

  factory  Municipalities.fromJson(Map<String, dynamic> json){
    return  Municipalities(
      id: json['id'],
      np_name: json['np_name'],
      en_name: json['en_name'],
      district_id: json['district_id'],
    );
  }


  @override
  String toString() => en_name;



}



class Districtt {
  final int id;
  final int province_id;
  final String np_name;
  final String en_name;


  Districtt(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
        required this.province_id
      });

  factory  Districtt.fromJson(Map<String, dynamic> json){
    return  Districtt(
        id: json['id'],
        np_name: json['np_name'],
        en_name: json['en_name'],
        province_id: json['province_id']
    );
  }


  @override
  String toString() => en_name;
}


class Wardd {
  final int id;
  final int muncipality_id;
  final String np_name;
  final String en_name;
  final String address;
  final String contact;
  final int number;


  Wardd(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
        required this.muncipality_id,
        required this.address,
        required this.contact,
        required this.number,

      });

  factory  Wardd.fromJson(Map<String, dynamic> json){
    return  Wardd(
        id: json['id'],
        number: json['number'],
        np_name: json['np_name'],
        en_name: json['en_name'],
        address: json['address'],
        contact: json['contact'],
        muncipality_id: json['muncipality_id']
    );
  }


  @override
  String toString() => number.toString();
}


