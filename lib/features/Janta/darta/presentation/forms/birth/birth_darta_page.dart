


import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palikaa/add_gunaso.dart';
import 'package:palikaa/common_widgets/snackbar_show.dart';
import 'package:palikaa/constants/app_sizes.dart';
import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/core/shared/common_provider.dart';
import 'package:palikaa/providers/form_validation_provider.dart';
import 'package:palikaa/services/auth_services.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:palikaa/services/birth_services.dart';
import 'package:palikaa/services/location_sevices.dart';
import 'package:palikaa/models/location_model.dart';
import 'dart:developer' as logDev;


import '../../../../../../api_exceptions.dart';
import '../../../data/dummy_data.dart';
import '../marriage/man_bibaran.dart';

class BirthDartaPage extends ConsumerStatefulWidget {

  @override
  ConsumerState<BirthDartaPage> createState() => _BirthPageState();


}

class _BirthPageState extends ConsumerState<BirthDartaPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  final genderOptions = ["male", "female", "other"];

  final educationOptions = ["10 ", "12 ", "Bachelor", "Master", "No "];

  final ethnicityOptions = ["Brahman", "Magar", "Tharu", "Tamang", "Newar", "Kami"];

  final birthPlaceOptions = ["House", "Hospital", "Others",];


  Provincee pzone =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrict =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMunici =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWard =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);

  Provincee pzoneM =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictM =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciM =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardM =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);

  Provincee pzoneF =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictF =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciF =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardF =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);

  Provincee pzoneW =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictW =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciW =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardW =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);




  @override
  Widget build(BuildContext context) {
    final isLoad = ref.watch(loadingProvider);
    final validate = ref.watch(validateProvider).mode;
    return SafeArea(
      child: Scaffold(
        body: FormBuilder(
          autovalidateMode: validate,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  _padding(label: "Birth Darta Page", isHeading: true ),


                  gapH10,


                  _buildTextField(name: "name_en", hint: "english Name", labelName: "English Name", validation: "name"),

                  _buildTextField(name: "name_np", hint: "nepali Name", labelName: "Nepali Name", validation: "name"),

                  _padding(label: "Birth Place"),

                  FormBuilderRadioGroup(
                      validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "birth_place",
                      options: [
                        FormBuilderFieldOption(value: "house", child: Text("House"),),
                        FormBuilderFieldOption(value: "hospital", child: Text("Hospital"),),
                        FormBuilderFieldOption(value: "other", child: Text("Other"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,

                    ),
                  ),


                  _padding(label: "Birth Assistant"),


                  FormBuilderRadioGroup(
                      validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "birth_assistant",
                      options: [
                        FormBuilderFieldOption(value: "family", child: Text("Family"),),
                        FormBuilderFieldOption(value: "nurse", child: Text("Nurse"),),
                        FormBuilderFieldOption(value: "health worker", child: Text("Health Workers"),),
                        FormBuilderFieldOption(value: "doctor", child: Text("Doctor"),),
                        FormBuilderFieldOption(value: "other", child: Text("Others"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),



                  _padding(label: "Gender"),

                  gapH7,
                  FormBuilderDropdown(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "gender",
                    items: genderOptions.map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Text('$gender'),
                    )).toList(),
                    decoration: InputDecoration(

                      hintText: "Select Gender",
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      errorStyle:  TextStyle(fontSize: 13.sp),
                      errorBorder:  OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.red, width: 0.0),
                      ),
                      hintStyle: formHintStyle,
                      border: const OutlineInputBorder(),
                    ),
                  ),

                  gapH10,


                  _padding(label: "Ethinicity"),
                  gapH7,


                  FormBuilderDropdown(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "ethnicity",
                    items: ethnicityOptions.map((ethnicity) => DropdownMenuItem(
                      value: ethnicity,
                      child: Text('$ethnicity'),
                    )).toList(),
                    decoration: InputDecoration(
                      hintText: "select ethinicity",
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      errorStyle:  TextStyle(fontSize: 13.sp),
                      errorBorder:  OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.red, width: 0.0),
                      ),
                      hintStyle: formHintStyle,
                      border: const OutlineInputBorder(),
                    ),
                  ),

                  gapH10,



                  _padding(label: "Birth Type"),




                  FormBuilderRadioGroup(
                      validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "birth_type",
                      options: [
                        FormBuilderFieldOption(value: "one", child: Text("One"),),
                        FormBuilderFieldOption(value: "twins", child: Text("Twins"),),
                        FormBuilderFieldOption(value: "more than there", child: Text("More than 3"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),



                  _padding(label: "Date of birth English"),
                  gapH7,



                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "birth_date_en",
                      inputType: InputType.date,
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                      format: DateFormat('yyyy/dd/MM'),
                      decoration: InputDecoration(
                        hintText: "english date",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        errorStyle:  TextStyle(fontSize: 13.sp),

                        errorBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.red, width: 0.0),
                        ),

                        hintStyle: formHintStyle,
                        border: const OutlineInputBorder(),
                      )

                  ),

                  gapH10,


                  _padding(label: "Date of birth Nepali"),

                  gapH7,


                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "birth_date_np",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "nepali date",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        errorStyle:  TextStyle(fontSize: 13.sp),

                        errorBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.red, width: 0.0),
                        ),

                        hintStyle: formHintStyle,
                        border: const OutlineInputBorder(),
                      )

                  ),

                  gapH14,


                  _padding(label: "Select Location"),






                  DropdownSearch<Provincee>(
                    validator: dropDownValidation,
                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                          "https://test.digitalpalika.org/api/provinces",
                        );
                        final models = (response.data as List).map((e) => Provincee.fromJson(e)).toList();
                        return models;
                      }on DioError catch(err){
                        throw 'something went wrong';
                      }

                    },

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: primaryColor),
                        contentPadding: EdgeInsets.all(0),
                        label: Text("Province"),
                        fillColor: primaryColor,
                        hintText: "select province",
                      ),
                    ),

                    onChanged: (Provincee? data) {
                      print("Province id is ${data!.id}");

                      setState(() {
                        pzone = data;
                      });
                    },
                  ),

                  gapH10,



                  DropdownSearch<Districtt>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                         "https://test.digitalpalika.org/api/province/${pzone.id}/districts"
                        );
                        final models = (response.data as List).map((e) => Districtt.fromJson(e)).toList();
                        return models;
                      }on DioError catch(err){
                        throw 'something went wrong';
                      }


                    },

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: primaryColor),
                        contentPadding: EdgeInsets.all(0),
                        label: Text("District"),
                        hintText: "select district",
                      ),
                    ),
                    enabled: pzone.en_name.isEmpty ? false : true,
                    onChanged: (Districtt? data) {
                      print("District id is ${data!.id}");

                      setState(() {
                        pdistrict = data;
                      });
                    },
                  ),

                  gapH10,




                  DropdownSearch<Municipalities>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                          "https://test.digitalpalika.org/api/district/${pdistrict.id}/muncipalities"
                        );
                        final models = (response.data as List).map((e) => Municipalities.fromJson(e)).toList();
                        return models;
                      }on DioError catch(err){
                        throw 'something went wrong';
                      }


                    },

                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: primaryColor),
                        contentPadding: EdgeInsets.all(0),
                        label: Text("Municipality"),
                        hintText: "select municipality",
                      ),
                    ),

                    enabled: pdistrict.np_name.isEmpty ? false : true,

                    onChanged: (Municipalities? data) {
                      print("Municipality district id is ${data!.district_id}");

                      setState(() {
                        pMunici = data;
                      });





                    },


                  ),

                  gapH10,



                  DropdownSearch<Wardd>(


                    validator: dropDownValidation,


                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                         // "https://test.digitalpalika.org/api/muncipality/1/wards"

                            "https://test.digitalpalika.org/api/muncipality/${pMunici.id}/wards"
                        );
                        final models = (response.data as List).map((e) => Wardd.fromJson(e)).toList();
                        return models;
                      }on DioError catch(err){
                        throw 'something went wrong';
                      }


                    },

                    dropdownDecoratorProps: DropDownDecoratorProps(

                      dropdownSearchDecoration: InputDecoration(
                        floatingLabelStyle: TextStyle(color: primaryColor),

                        contentPadding: EdgeInsets.all(0),
                        label: Text("Ward"),
                        hintText: "Select ward number",
                      ),
                    ),

                    enabled: pMunici.np_name.isEmpty ? false : true,


                    onChanged: (Wardd? data) {
                      print("ward id is ${pWard.id}");
                      pWard = data!;
                    },

                  ),



                  gapH10,


                  _padding(label: "Disability"),


                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "is_disable",
                      options: [
                        FormBuilderFieldOption(value: true, child: Text("Yes"),),
                        FormBuilderFieldOption(value: false, child: Text("No"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),

                  gapH10,


                  _buildTextField(name: "details_disability", hint: "disability details", labelName: "Disability Details" , lines: 3, validation: "disable"),


                  Row(
                    children: [
                      Expanded(child: _buildTextField(name: "foreign_address_en", hint: "english address", labelName: "English Address" ,validation: "row")),
                      Expanded(child: _buildTextField(name: "foreign_address_np", hint: "nepali address", labelName: "Nepali Address" , validation: "row")),

                    ],
                  ),






                  _padding(label: "Grand Father Name"),

                  gapH10,


                  Row(
                    children: [

                      _buildRowsField(name: "grandfather_first_name", hint: "first", label: "First Name", validation: "row"),
                      _buildRowsField(name: "grandfather_middle_name", hint: "middle", label: "Middle Name", validation: "row"),
                      _buildRowsField(name: "grandfather_last_name", hint: "last", label: "Last Name", validation: "row"),

                    ],
                  ),

                  gapH10,


                  _padding(label: "Father Details"),

                  gapH10,



                  _buildParentsDetails(
                    name: "father",
                    firstName: "father_first_name" ,
                    middleName: "father_middle_name",
                    lastName: "father_last_name" ,
                    passwordName: "father_passport",
                    ageName: "father_age",
                    citizenShipNumberName: "father_citizenship_no" ,
                    citizenShipDateName:"father_citizenship_date" ,
                    citizenShipCountryName: "father_citizenship_country" ,
                    birthCountryName: "father_birth_country" ,
                    citizenShipDistrictName: "father_issued_dstrict",
                    educationName: "father_education_status",
                    occupationName: "father_occupation" ,
                    religionName: "father_religion" ,
                    languageName: "father_mothertongue",
                    houseNumberName: "father_house_no",
                    toleName: "father_tole",
                    streetName: "father_street_name"


                  ),

                  gapH10,


                  _padding(label: "Mother Details"),

                  gapH10,

                  _buildParentsDetails(
                      name: "mother",
                      firstName: "mother_first_name" ,
                      middleName: "mother_middle_name",
                      lastName: "mother_last_name" ,
                      passwordName: "mother_passport",
                      ageName: "mother_age",
                      citizenShipNumberName: "mother_citizenship_no" ,
                      citizenShipDateName:"mother_citizenship_date" ,
                      citizenShipCountryName: "mother_citizenship_country" ,
                      birthCountryName: "mother_birth_country" ,
                      citizenShipDistrictName: "father_issued_dstrict",
                      educationName: "mother_education_status",
                      occupationName: "mother_occupation" ,
                      religionName: "mother_religion" ,
                      languageName: "mother_mothertongue",
                      houseNumberName: "mother_house_no",
                      streetName: "mother_street_name",
                      toleName: "mother_tole"

                  ),

                  gapH10,
                  _buildTextField(name: "married_registration_no", hint: "married registration number", labelName: "Married Registration Number", validation: "citizenship", isNumeric: true),

                  _padding(label: "Married Date English"),
                  gapH7,


                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "married_date_ad",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "english date",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        errorStyle:  TextStyle(fontSize: 13.sp),

                        errorBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.red, width: 0.0),
                        ),

                        hintStyle: formHintStyle,
                        border: const OutlineInputBorder(),
                      )

                  ),



                  gapH10,

                  _padding(label: "Married Date Nepali"),

                  gapH7,



                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "married_date_bs",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "nepali date",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        errorStyle:  TextStyle(fontSize: 13.sp),

                        errorBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.red, width: 0.0),
                        ),

                        hintStyle: formHintStyle,
                        border: const OutlineInputBorder(),
                      )

                  ),

                  gapH10,

                  _padding(label: "Total Birth Child"),



                  FormBuilderRadioGroup(
                      validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "total_birth_child",
                      options: [
                        FormBuilderFieldOption(value: 1, child: Text("1"),),
                        FormBuilderFieldOption(value: 2, child: Text("2"),),
                        FormBuilderFieldOption(value: 3, child: Text("3"),),
                        FormBuilderFieldOption(value: 4, child: Text("4"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),

                  _padding(label: "Total Alive Child"),





                  FormBuilderRadioGroup(
                      validator: FormBuilderValidators.required(errorText: "Select one option"),
                      name: "total_alive_child",
                      options: [
                        FormBuilderFieldOption(value: 1, child: Text("1"),),
                        FormBuilderFieldOption(value: 2, child: Text("2"),),
                        FormBuilderFieldOption(value: 3, child: Text("3"),),
                        FormBuilderFieldOption(value: 4, child: Text("4"),),
                      ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),


                  //
                  //
                  // _buildTextField(name: "name", hint: "name", labelName: "Name", validation: "name"),
                  //
                  //
                  // gapH10,
                  //
                  // _padding(label: "Date"),
                  //
                  //
                  // FormBuilderDateTimePicker(
                  //     validator: FormBuilderValidators.required(),
                  //     name: "date",
                  //     inputType: InputType.date,
                  //     format: DateFormat('yyyy/MM/dd'),
                  //     decoration: InputDecoration(
                  //       hintText: "date",
                  //       contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  //       errorStyle:  TextStyle(fontSize: 13.sp),
                  //
                  //       errorBorder:  OutlineInputBorder(
                  //         borderSide:  BorderSide(color: Colors.red, width: 0.0),
                  //       ),
                  //
                  //       hintStyle: formHintStyle,
                  //       border: const OutlineInputBorder(),
                  //     )
                  //
                  // ),
                  //
                  // gapH10,










                  _padding(label: "Witness Details"),

                  gapH10,


                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildWitnessDetails(name: "witness_full_name_np", label: "English Name", validation: "name", hintName: "English Name"),
                          _buildWitnessDetails(name: "witness_full_name_en", label: "Nepali Name", validation: "name", hintName: "Nepali Name"),
                          _buildWitnessDetails(name: "witness_citizenship_no", label: "Citizenship number", validation: "citizenship", hintName: "Citizenship no", isNumeric: true),

                          DropdownSearch<Provincee>(
                            validator: dropDownValidation,
                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                  "https://test.digitalpalika.org/api/provinces",
                                );
                                final models = (response.data as List).map((e) => Provincee.fromJson(e)).toList();
                                return models;
                              }on DioError catch(err){
                                throw 'something went wrong';
                              }

                            },

                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                floatingLabelStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.all(0),
                                label: Text("Province"),
                                hintText: "select province",
                              ),
                            ),

                            onChanged: (Provincee? data) {
                              print("Witness id is ${data!.id}");

                              setState(() {
                                pzoneW = data;
                              });

                            },
                          ),

                          gapH10,


                          DropdownSearch<Districtt>(
                            validator: dropDownValidation,
                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/province/${pzoneW.id}/districts"
                                );
                                final models = (response.data as List).map((e) => Districtt.fromJson(e)).toList();
                                return models;
                              }on DioError catch(err){
                                throw 'something went wrong';
                              }
                            },

                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                floatingLabelStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.all(0),
                                label: Text("District"),
                                hintText: "select district",
                              ),
                            ),
                            enabled: pzoneW.en_name.isEmpty ? false : true,
                            onChanged: (Districtt? data) {
                              print("Witness id is ${data!.id}");

                              setState(() {
                                pdistrictW = data;
                              });
                            },
                          ),

                          gapH10,


                          DropdownSearch<Municipalities> (
                            validator: dropDownValidation,
                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/district/${pdistrictW.id}/muncipalities"
                                );
                                final models = (response.data as List).map((e) => Municipalities.fromJson(e)).toList();
                                return models;
                              }on DioError catch(err){
                                throw 'something went wrong';
                              }

                            },

                            dropdownDecoratorProps: DropDownDecoratorProps(

                              dropdownSearchDecoration: InputDecoration(
                                floatingLabelStyle: TextStyle(color: primaryColor),

                                contentPadding: EdgeInsets.all(0),
                                label: Text("Municipality"),
                                hintText: "select municipality",
                              ),
                            ),

                            enabled: pdistrictW.en_name.isEmpty ? false : true,
                            onChanged: (Municipalities? data) {
                              print("Witness Municipality id is ${data!.id}");

                              setState(() {
                                pMuniciW = data;
                              });
                            },


                          ),

                          gapH10,


                          DropdownSearch<Wardd>(
                            validator: dropDownValidation,
                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                  // "https://test.digitalpalika.org/api/muncipality/1/wards"

                                    "https://test.digitalpalika.org/api/muncipality/${pMuniciW.id}/wards"
                                );
                                final models = (response.data as List).map((e) => Wardd.fromJson(e)).toList();
                                return models;
                              }on DioError catch(err){
                                throw 'something went wrong';
                              }


                            },
                            enabled: pMuniciW.en_name.isEmpty ? false : true,


                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                floatingLabelStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.all(0),
                                label: Text("Ward"),
                                hintText: "select ward",
                              ),
                            ),

                            onChanged: (Wardd? data) {
                              print("Witness Ward id is ${pWard.id}");
                              pWardW = data!;
                            },

                          ),


                          gapH10,



                          _padding(label: "CitizenShip Date", isTrue: true),
                          gapH10,

                          FormBuilderDateTimePicker(
                              validator: FormBuilderValidators.required(),

                              name:"witness_citizenship_date" ,
                              inputType: InputType.date,
                              format: DateFormat('yyyy/MM/dd'),

                              decoration: InputDecoration(
                                hintText: "Citizenship Date",
                                errorBorder:  OutlineInputBorder(
                                  borderSide:  BorderSide(color: Colors.red, width: 0.0),
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                errorStyle:  TextStyle(fontSize: 13.sp),
                                hintStyle: formHintStyle,
                                border: const OutlineInputBorder(),
                              )

                          ),


                          gapH10,









                          Row(
                            children: [


                              Expanded(child: _buildWitnessDetails(name: "witness_citizenship_country", label: "Citizenship Country", validation: "row", hintName: "citizenship")),
                              Expanded(child: _buildWitnessDetails(name: "witness_birth_country", label: "Birth Country", validation: "row", hintName: "birth")),

                            ],
                          ),


                          Row(
                            children: [


                              Expanded(child: _buildWitnessDetails(name: "witness_street_name", label: "Street Name", validation: "row", hintName: "street")),
                              Expanded(child: _buildWitnessDetails(name: "witness_tole", label: "Tole Name", validation: "row", hintName: "tole name")),
                              Expanded(child: _buildWitnessDetails(name: "witness_house_no", label: "House No", validation: "row", hintName: "house no")),


                            ],
                          ),

                        ],
                      ),
                    ),
                  ),





                  gapH10,







                  ElevatedButton(onPressed: isLoad ? null : ()  async {

                    ref.read(loadingProvider.notifier).toggle();

                    _formKey.currentState!.save();

                    final formData = _formKey.currentState!.value;

                    final newData = Map.of(formData);

                    newData['ward_id'] = pWard.id;
                    newData['father_ward_id'] = pWardF.id;
                    newData['mother_ward_id'] = pWardM.id;
                    newData['father_issued_district_id'] = pdistrictF.id;
                    newData['mother_issued_district_id'] = pdistrictM.id;
                    newData['witness_ward_id'] = pWardW.id;




                   // print(newData['witness_ward_id']);




                    if(  _formKey.currentState!.validate()){


                      final formatDate1 = DateFormat('yyyy/MM/dd').format(formData["birth_date_np"]);
                      final formatDate2 = DateFormat('yyyy/MM/dd').format(formData["birth_date_en"]);
                      final formatDate3 = DateFormat('yyyy/MM/dd').format(formData["mother_citizenship_date"]);
                      final formatDate4 = DateFormat('yyyy/MM/dd').format(formData["father_citizenship_date"]);
                      final formatDate5 = DateFormat('yyyy/MM/dd').format(formData["married_date_bs"]);
                      final formatDate6 = DateFormat('yyyy/MM/dd').format(formData["married_date_ad"]);
                      final formatDate7 = DateFormat('yyyy/MM/dd').format(formData["witness_citizenship_date"]);
                      final formatDate8 = DateFormat('yyyy/MM/dd').format(formData["married_date_bs"]);
                      final formatDate9 = DateFormat('yyyy/MM/dd').format(formData["married_date_ad"]);



                      newData.update("birth_date_np", (value) => formatDate1);
                      newData.update("birth_date_en", (value) => formatDate2);
                      newData.update("mother_citizenship_date", (value) => formatDate3);
                      newData.update("father_citizenship_date", (value) => formatDate4);
                      newData.update("married_date_bs", (value) => formatDate5);
                      newData.update("married_date_bs", (value) => formatDate6);
                      newData.update("witness_citizenship_date", (value) => formatDate7);
                      newData.update("married_date_bs", (value) => formatDate8);
                      newData.update("married_date_ad", (value) => formatDate9);



                      final response =  await DartaServices.addBirth(newData);


                      if(response == "success"){

                        ref.read(loadingProvider.notifier).toggle();
                        Exceptions.successShow(context, "successfully added");
                      }


                      if(response != "success"){
                        ref.read(loadingProvider.notifier).toggle();
                        Exceptions.failureShow(context, response);



                      }

                    }

                    else{
                      Exceptions.failureShow(context, "some fields are not valid");
                      ref.read(validateProvider).enable();
                      ref.read(loadingProvider.notifier).toggle();


                    }








                    // formData["asdas"] = "asdsadsaas";





                    //

                    // print(pdistrictM.id);
                    // print(pdistrictF.id);


                   //print(formData['details_disability']);

                   // print("ward id is ${pWard.id}");

                   // print(formData);







                   // final response =  await AuthService.userLogin(username: formData["name_en"], password: formData["name_np"]);
                   //  print("response is $response");
                   //  if(response == "success"){
                   //    Navigator.push(
                   //      context,
                   //      MaterialPageRoute(builder: (context) => AddGunasoPage()),
                   //    );
                   //    ref.read(loadingProvider.notifier).toggle();
                   //
                   //  }
                   //
                   //
                   //  if(response != "success"){
                   //
                   //
                   //    print("something went wrong");
                   //    ref.read(loadingProvider.notifier).toggle();
                   //
                   //
                   //    Exceptions.failureShow(context, "Something went wrong");
                   //
                   //  }



                   }, child: Text("Submit"))
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }

  String? dropDownValidation(val){
                    if(val == null) return "Select one field";
                    return null;
                  }

  Column _buildWitnessDetails({required String name, required String label, String? validation, bool? isNumeric, required hintName}) => _buildTextField(isNumeric: isNumeric, name: name, hint: hintName, labelName: label, isTrue: true, validation: validation, );

  Card _buildParentsDetails({
    required String firstName,
    required String middleName,
    required String lastName,
    required String passwordName,
    required String ageName,
    required String citizenShipNumberName,
    required String citizenShipDateName,
    required String citizenShipCountryName,
    required String birthCountryName,
    required String citizenShipDistrictName,
    required String occupationName,
    required String religionName,
    required String languageName,
    required String educationName,
    required String houseNumberName,
    required String toleName,
    required String streetName,
    required String name,

  }) {
    return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        Row(
                          children: [

                            _buildRowsField(name: firstName, hint: "first", label: "First Name", validation: "row"),
                            _buildRowsField(name: middleName, hint: "middle", label: "Middle Name", validation: "row"),
                            _buildRowsField(name: lastName, hint: "last", label: "Last Name", validation: "row"),

                          ],
                        ),



                        _padding(label: "Education", isTrue: true),
                        gapH7,


                        FormBuilderDropdown(
                          validator: FormBuilderValidators.required(errorText: "Select one option"),
                          name: educationName,
                          items: educationOptions.map((father_education_status) => DropdownMenuItem(
                            value: father_education_status,
                            child: Text('$father_education_status'),
                          ))
                              .toList(),
                          decoration: InputDecoration(
                            hintText: "Select Education",
                            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                            errorStyle:  TextStyle(fontSize: 13.sp),
                            errorBorder:  OutlineInputBorder(
                              borderSide:  BorderSide(color: Colors.red, width: 0.0),
                            ),
                            hintStyle: formHintStyle,
                            border: const OutlineInputBorder(),
                          ),
                        ),


                        gapH10,





                        DropdownSearch<Provincee>(

                          validator: dropDownValidation,

                          asyncItems: (String filter) async {
                            try{
                              final response = await Dio().get(
                                "https://test.digitalpalika.org/api/provinces",
                              );
                              final models = (response.data as List).map((e) => Provincee.fromJson(e)).toList();
                              return models;
                            }on DioError catch(err){
                              throw 'something went wrong';
                            }

                          },

                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: primaryColor),
                              contentPadding: EdgeInsets.all(0),
                              label: Text("Province"),
                              hintText: "select province",
                            ),
                          ),


                          onChanged: (Provincee? data) {
                            if(name == "father")
                              {
                                print("Province Father id is ${data!.id}");

                                setState(() {
                                  pzoneF = data;
                                });

                              }
                            else if (name == "mother"){
                              print("Province Mother id is ${data!.id}");

                              setState(() {
                                pzoneM = data;
                              });

                            }
                          },
                        ),

                        gapH10,



                        DropdownSearch<Districtt>(
                          validator: dropDownValidation,

                          asyncItems: (String filter) async {
                            try{
                              final response = name == "father" ?
                              await Dio().get("https://test.digitalpalika.org/api/province/${pzoneF.id}/districts")
                                  : await Dio().get("https://test.digitalpalika.org/api/province/${pzoneM.id}/districts");
                              final models = (response.data as List).map((e) => Districtt.fromJson(e)).toList();
                              return models;
                            }on DioError catch(err){
                              throw 'something went wrong';
                            }

                          },

                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: primaryColor),
                              contentPadding: EdgeInsets.all(0),
                              label: Text("District"),
                              hintText: "select district",
                            ),
                          ),

                          enabled:   name == "father" ? pzoneF.en_name.isEmpty  ? false : true : name == "mother" ? pzoneM.en_name.isEmpty  ? false : true : false ,


                          onChanged: (Districtt? data) {

                            if(name == "father")
                            {
                              print("District Father id is ${data!.id}");

                              setState(() {
                                pdistrictF = data;
                              });


                            }
                            else if (name == "mother"){
                              print("District Mother id is ${data!.id}");

                              setState(() {
                                pdistrictM = data;
                              });

                            }
                          },
                        ),

                        gapH10,


                        DropdownSearch<Municipalities>(
                          validator: dropDownValidation,
                          asyncItems: (String filter) async {
                            try{




                              final response = name == "father" ?
                              await Dio().get("https://test.digitalpalika.org/api/district/${pdistrictF.id}/muncipalities")
                                  : await Dio().get("https://test.digitalpalika.org/api/district/${pdistrictM.id}/muncipalities");
                              final models = (response.data as List).map((e) => Municipalities.fromJson(e)).toList();
                              return models;
                            }on DioError catch(err){
                              throw 'something went wrong';
                            }


                          },

                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: primaryColor),
                              contentPadding: EdgeInsets.all(0),
                              label: Text("Municipality"),
                              hintText: "select municipality",
                            ),
                          ),

                          enabled:   name == "father" ? pdistrictF.en_name.isEmpty  ? false : true : name == "mother" ? pdistrictM.en_name.isEmpty  ? false : true : false ,


                          onChanged: (Municipalities? data) {
                            if(name == "father")
                            {
                              print("Municipality Father id is ${data!.id}");

                              setState(() {
                                pMuniciF = data;
                              });


                            }
                            else if (name == "mother"){
                              print("Municipality Mother id is ${data!.id}");

                              setState(() {
                                pMuniciM = data;
                              });

                            }
                          },


                        ),

                        gapH10,


                        DropdownSearch<Wardd>(
                          validator: dropDownValidation,
                          asyncItems: (String filter) async {
                            try{
                              final response = name == "father" ?
                              await Dio().get("https://test.digitalpalika.org/api/muncipality/${pMuniciF.id}/wards")
                                  : await Dio().get("https://test.digitalpalika.org/api/muncipality/${pMuniciM.id}/wards");
                              final models = (response.data as List).map((e) => Wardd.fromJson(e)).toList();
                              return models;
                            }on DioError catch(err){
                              throw 'something went wrong';
                            }
                          },

                          dropdownDecoratorProps: DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              floatingLabelStyle: TextStyle(color: primaryColor),
                              contentPadding: EdgeInsets.all(0),
                              label: Text("Ward"),
                              hintText: "select ward",
                            ),
                          ),


                          enabled:   name == "father" ? pMuniciF.en_name.isEmpty  ? false : true : name == "mother" ? pMuniciM.en_name.isEmpty  ? false : true : false ,


                          onChanged: (Wardd? data) {
                            if(name == "father")
                            {
                              print("Ward Father id is ${data!.id}");
                              pWardF = data;

                            }
                            else if (name == "mother"){
                              print("Ward Mother id is ${data!.id}");
                              pWardM = data;
                            }
                          },

                        ),

                        gapH10,


                        Row(
                          children: [

                            Expanded(
                              flex: 2,
                              child: _buildTextField(name: passwordName, hint: "password", labelName: "Citizenship password", isTrue: true , validation: "citizenship", isNumeric: true),
                            ),

                            Flexible(
                              child: _buildTextField(name: ageName, hint: "age", labelName: "Age", isTrue: true, validation: "age", isNumeric: true),
                            ),


                          ],
                        ),


                        Row(
                          children: [
                            _buildRowsField(name: citizenShipNumberName, hint: "number", label: "Citizenship Number", validation: "citizenship", isNumeric: true),
                            _buildRowsField(name: citizenShipDistrictName, hint: "district", label: "Citizenship district", validation: "row"),


                          ],
                        ),






                        _padding(label: "CitizenShip Date", isTrue: true),
                        gapH10,

                        FormBuilderDateTimePicker(
                            validator: FormBuilderValidators.required(),

                            name: citizenShipDateName,
                            inputType: InputType.date,
                            format: DateFormat('yyyy/MM/dd'),

                            decoration: InputDecoration(
                              hintText: "Citizenship Date",
                              errorBorder:  OutlineInputBorder(
                                borderSide:  BorderSide(color: Colors.red, width: 0.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                              errorStyle:  TextStyle(fontSize: 13.sp),
                              hintStyle: formHintStyle,
                              border: const OutlineInputBorder(),
                            )

                        ),

                        gapH10,


                        Row(
                          children: [


                            _buildRowsField(name: citizenShipCountryName, hint: "citizenship", label: "Citizenship Country", validation: "row"),
                            _buildRowsField(name: birthCountryName, hint: "birth", label: "Birth Country", validation: "row"),




                          ],
                        ),











                        Row(
                          children: [

                            Expanded(
                              child: _buildTextField(name: occupationName, hint: "ouucpation", labelName: "Occupation", isTrue: true, validation: "row"),
                            ),

                            Expanded(
                              child: _buildTextField(name: religionName, hint: "religion", labelName: "Religion", isTrue: true, validation: "row"),
                            ),


                            Expanded(
                              child: _buildTextField(name: languageName, hint: "language", labelName: "Language", isTrue: true, validation: "row"),
                            ),



                          ],
                        ),



                        Row(
                          children: [

                            _buildRowsField(name: toleName, hint: "tole name", label: "Tole Name", validation: "row"),
                            _buildRowsField(name: streetName, hint: "street name", label: "Street Name", validation: "row"),
                            _buildRowsField(name: houseNumberName, hint: "house no", label: "House No", validation: "row", isNumeric: true),

                          ],
                        ),





                      ],
                    ),
                  ),
                );
  }

  Expanded _buildRowsField({required String name, required String hint, required String label, String? validation, bool? isNumeric}) {
    return Expanded(
      child: _buildTextField(name: name, hint: hint, labelName: label, isTrue: true, validation: validation, isNumeric: isNumeric),
    );
  }

  Column _buildTextField({required String name, required String hint, required String labelName, bool? isTrue, int? lines, String? validation, bool? isNumeric, bool? isAge,}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _padding(label: labelName, isTrue: isTrue),
        gapH7,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: FormBuilderTextField(

              keyboardType: isNumeric == true ? TextInputType.number : TextInputType.name,
              textInputAction: TextInputAction.next,
              validator:  validation == "name" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText: "required"),
                    FormBuilderValidators.minLength(5, errorText: "The field must have at least 5 characters"),

                  ]

              ) : validation == "row" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText: "required"),
                    FormBuilderValidators.minLength(3, errorText: "3 character"),

                  ]

              ): validation == "age" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText: "required"),
                    FormBuilderValidators.minLength(2, errorText: "2 character"),

                  ]

              )
                  : validation == "citizenship" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText: "required"),
                    FormBuilderValidators.minLength(10, errorText: "10 character"),

                  ]

              ):

              validation == "number" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText:  "required"),
                    FormBuilderValidators.minLength(3, errorText: "3 character" ),

                  ]

              ) : validation ==  "disable" ?  FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(5, errorText: "The field must have at least 5 characters" ),


                  ]

              ) : null ,
              maxLines: lines ?? 1,
              name: name,
              decoration: InputDecoration(

                counterText: "",
                helperText: '  ',

                hintText: hint,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                errorStyle:  TextStyle(fontSize: 12.sp),
                errorBorder:  OutlineInputBorder(
                  borderSide:  BorderSide(color: Colors.red, width: 0.0),
                ),
                hintStyle: formHintStyle,
                border:  OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                )
              )
          ),
        )

      ],
    );
  }

  Padding _padding({required String label, bool? isTrue, bool? isHeading}) {
    return Padding(
        padding:  const EdgeInsets.symmetric(vertical: 2),
        child: Text.rich(
          TextSpan(
            text: label,
            style:  TextStyle(
                fontSize: isHeading == null ? 13.sp : 20.sp,
                color: isHeading != null ? primaryColor : isTrue == null ? Colors.black  : Colors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: isHeading == null ? 1 : 2
            ),
          ),
        )
    );
  }
}
