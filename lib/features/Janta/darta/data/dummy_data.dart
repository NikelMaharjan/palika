

import 'package:palikaa/features/Janta/darta/data/area_data.dart';

final ehthnic_groups = [
  ["1", "Chhetri", "क्षेत्री"],
  ["2", "Brahman", "ब्राह्मण"],
  ["3", "Magar", "मगर"],
  ["4", "Tharu", "थारु"],
  ["5", "Tamang", "तामाङ"],
  ["6", "Newar", "नेवार"],
  ["7", "Yadav", "यादव"],
  ["8", "Rai", "राई"],
  ["9", "Gurung", "गुरुङ"],
  ["10", "Thakuri", "ठकुरी"],
  ["11", "Limbu", "लिम्बु"],
  ["12", "Other", "अन्य"]
];

final gender_groups = [
  ["1", "Male", "male"],
  ["2", "Female", "female"],
  ["3", "Others", "other"],
];

final religions = [
  ["1", "Hinduism", "हिन्दु "],
  ["2", "Buddhism", "बौद्ध"],
  ["3", "Christianity", "क्रिस्चियन"],
  ["4", "Muslim", "मुस्लिम"],
  ["5", "Jain", "जैन"],
  ["6", "Others", "अन्य"]
];

final women_status = [
  ["1", "विवाहीत", "married"],
  ["2", "अविवाहीत", "unmarried"],
  ["3", "विधवा", "Widow"]
];

final nationalities = [
  ["1", "नेपाली", "Nepali"],
  ["2", "अन्य", "Others"]
];

final marriage_status = [
  ["1", "विवाहीत", "married"],
  ["2", "अविवाहीत", "unmarried"]
];

class Nationalities {
  final String id;
  final String label;
  const  Nationalities({required this.id, required this.label});

  @override
  String toString() => label;
}



class WomenStatus {
  final String id;
  final String status;
  const  WomenStatus({required this.id, required this.status});

  @override
  String toString() => status;
}

class MStatus {
  final String id;
  final String status;
  const MStatus({required this.id, required this.status});

  @override
  String toString() => status;
}

class Religion {
  final String id;
  final String religion;
  const Religion({required this.id, required this.religion});

  @override
  String toString() => religion;
}

class Ethinic {
  final String id;
  final String ethinic;
  const Ethinic({required this.id, required this.ethinic});

  @override
  String toString() => ethinic;
}

class Gender {
  final String id;
  final String gender;
  const Gender({required this.id, required this.gender});

  @override
  String toString() => gender;
}

List<Gender> genderData = gender_groups.map((e) {
  return Gender(id: e[0], gender: e[2]);
}).toList();



List<Ethinic> ethinicData = ehthnic_groups.map((e) {
  return Ethinic(id: e[0], ethinic: e[2]);
}).toList();

List<Religion> religionData = religions.map((e) {
  return Religion(id: e[0], religion: e[2]);
}).toList();

List<WomenStatus> womenData = women_status.map((e) {
  return WomenStatus(id: e[0], status: e[2]);
}).toList();

List<MStatus> mStatus = marriage_status.map((e) {
  return MStatus(id: e[0], status: e[2]);
}).toList();

List<Nationalities> nationalData = nationalities.map((e) {
  return Nationalities(id: e[0], label: e[1]);
}).toList();

class Province {
  final int id;
  final String np_name;
  final String en_name;
  const Province({required this.id, required this.en_name, required this.np_name});

  factory Province.fromJson(Map<String, dynamic> json){
    return Province(
        id: json['id'],
        en_name: json['en_name'],
        np_name: json['np_name']
    );
  }
  @override
  String toString() => np_name;
}

class District {
  final int id;
  final String np_name;
  final String en_name;

  const  District({
    required this.id,
    required this.np_name,
    required this.en_name
});

  factory District.fromJson(Map<String, dynamic> json){
    return District(
        id: json['id'],
        np_name: json['np_name'],
        en_name: json['en_name'],
    );
  }
  
  @override
  String toString() => np_name;
}

class Municipality {
  final int id;
  final String np_name;
  final String en_name;
  const  Municipality(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
      });

  factory  Municipality.fromJson(Map<String, dynamic> json){
    return  Municipality(
      id: json['id'],
      np_name: json['np_name'],
      en_name: json['en_name'],
    );
  }


  @override
  String toString() => np_name;



}

class Ward {
  final int id;
  final String np_name;
  final String en_name;
  final String number;
  const  Ward(
      {
        required this.id,
        required this.en_name,
        required this.np_name,
        required this.number
      });

  factory  Ward.fromJson(Map<String, dynamic> json){
    return  Ward(
      id: json['id'],
      np_name: json['np_name'],
      en_name: json['en_name'],
      number: '${json['number']}' ?? ''
    );
  }


  @override
  String toString() => number;
}




class GenderTypes {

  final String id;
  final String label;

  const  GenderTypes({
    required this.id,
    required this.label,
  });

  factory GenderTypes.fromJson(Map<String, dynamic> json){
    return GenderTypes(
        id: json['id'],
        label: json['label']
    );
  }

  factory GenderTypes.empty(){
    return GenderTypes(
        id: '',
        label: ''
    );
  }

  @override
  String toString() => label;
}




