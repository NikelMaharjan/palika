

import 'dummy_data.dart';




final houseData = {
  "genders": [
    {'id': "1", 'label': "पुरुष"},
    {'id': "2", 'label': "महिला"},
    {'id': "3", 'label': "तेश्रो लिङ्गी"}
  ],
  "literacy_types": [
    {'id': "1", 'label': "पूर्व-प्राथमिक शिक्षा"},
    {'id': "2", 'label': "आधारभूत शिक्षा (१-८)"},
    {'id': "3", 'label': "माध्यमिक तहको शिक्षा (९-१२)"},
    {'id': "4", 'label': "उच्च शिक्षा"},
    {'id': "5", 'label': "थाहा छैन"},
    {'id': "6", 'label': "अशिक्षित"},
    {'id': "7", 'label': "अन्य"}
  ],
  'matri': [
    {'id': "1", 'label': "नेपाली"},
    {'id': "2", 'label': "हिन्दी"},
    {'id': "3", 'label': "अंग्रेजी"},
    {'id': "4", 'label': "अन्य"},
  ]

};



final genderTypes =
(houseData['genders'] as List).map((e) => GenderTypes.fromJson(e)).toList();

final literacyTypes = (houseData['literacy_types'] as List)
    .map((e) => LiteracyTypes.fromJson(e))
    .toList();

final matriTypes = (houseData['matri'] as List)
    .map((e) => MatriTypes.fromJson(e))
    .toList();


class LiteracyTypes {

  final String id;
  final String label;

  const  LiteracyTypes({
    required this.id,
    required this.label,
  });

  factory LiteracyTypes.fromJson(Map<String, dynamic> json){
    return LiteracyTypes(
        id: json['id'],
        label: json['label']
    );
  }

  factory LiteracyTypes.empty(){
    return LiteracyTypes(
        id: '',
        label: ''
    );
  }

  @override
  String toString() => label;
}

class MatriTypes {

  final String id;
  final String label;

  const  MatriTypes({
    required this.id,
    required this.label,
  });

  factory MatriTypes.fromJson(Map<String, dynamic> json){
    return MatriTypes(
        id: json['id'],
        label: json['label']
    );
  }

  factory MatriTypes.empty(){
    return MatriTypes(
        id: '',
        label: ''
    );
  }

  @override
  String toString() => label;
}
