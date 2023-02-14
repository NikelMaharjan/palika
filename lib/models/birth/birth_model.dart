import 'package:freezed_annotation/freezed_annotation.dart';
part 'birth_model.freezed.dart';
part 'birth_model.g.dart';


@freezed
class BirthModel with _$BirthModel {


  const factory BirthModel({

    required String issued_at,
    required String name_np,
    required String office_ward_id,
    required String name_en,
    required String birth_place,
    required String birth_assistant,
    required String gender,
    required String birth_type,
    required int father_issued_district_id,
    required int mother_issued_district_id,
    required String birth_date_np,
    required String birth_date_en,
    required String ethnicity,
    required bool is_disable,
    required String details_disability,
    required int ward_id,
    required String foreign_address_np,
    required String foreign_address_en,
    required String grandfather_first_name,
    required String grandfather_middle_name,
    required String grandfather_last_name,
    required String father_first_name,
    required String father_middle_name,
    required String father_last_name,
    required int father_ward_id,
    required String father_street_name,
    required String father_tole,
    required String father_house_no,
    required String father_age,
    required String father_birth_country,
    required String father_citizenship_country,
    required String father_citizenship_no,
    required String father_citizenship_date,
    required String father_passport,
    required String father_education_status,
    required String father_occupation,
    required String father_religion,
    required String father_mothertongue,
    required String mother_first_name,
    required String mother_middle_name,
    required String mother_last_name,
    required int mother_ward_id,
    required String mother_street_name,
    required String mother_tole,
    required String mother_house_no,
    required String mother_age,
    required String mother_birth_country,
    required String mother_citizenship_country,
    required String mother_citizenship_no,
    required String mother_citizenship_date,
    required String mother_passport,
    required String mother_education_status,
    required String mother_occupation,
    required String mother_religion,
    required String mother_mothertongue,
    required String married_registration_no,
    required int total_birth_child,
    required String married_date_ad,
    required int total_alive_child,
    required String married_date_bs,
    required String witness_full_name_np,
    required String witness_full_name_en,
    required int witness_ward_id,
    required String witness_street_name,
    required String witness_tole,
    required String witness_house_no,
    required String witness_birth_country,
    required String witness_citizenship_country,
    required String witness_citizenship_no,
    required String witness_citizenship_date,

  }) = _BirthModel;


  factory BirthModel.fromJson(Map<String, dynamic> json) => _$BirthModelFromJson(json);


}
