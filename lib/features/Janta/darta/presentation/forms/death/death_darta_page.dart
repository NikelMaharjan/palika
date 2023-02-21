





import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';
import 'package:palikaa/common_widgets/textfield_widget.dart';
import 'package:palikaa/constants/app_sizes.dart';
import 'package:palikaa/export_pages.dart';
import 'package:palikaa/models/location_model.dart';
import 'package:palikaa/providers/form_validation_provider.dart';
import 'package:palikaa/services/birth_services.dart';

import '../../../../../../core/shared/common_provider.dart';
import '../marriage/man_bibaran.dart';

class DeathDartaPage extends ConsumerStatefulWidget {
  const DeathDartaPage({Key? key}) : super(key: key);

  @override
  ConsumerState<DeathDartaPage> createState() => _DeathDartaPageState();
}

class _DeathDartaPageState extends ConsumerState<DeathDartaPage> {

  final _formKey = GlobalKey<FormBuilderState>();

  final religionOptions = ["Hinduism", "Buddhism", "Islam", "Kirat", "Christianity"];

  final ethnicityOptions = ["Brahman", "Magar", "Tharu", "Tamang", "Newar", "Kami"];



  Provincee pzone =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrict =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMunici =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWard =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  Provincee pzoneB =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictB =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciB =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardB =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);



  Provincee pzoneD =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictD =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciD =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardD =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  Provincee pzoneC =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictC =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciC =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardC =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);



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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: FormBuilder(
            key: _formKey,
            autovalidateMode: validate,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  _padding(label: "Death Darta Page", isHeading: true ),

                  gapH10,

                  TextFieldWidget(
                    name: "death_full_name_en",
                    labelName: "English Name",
                    validation: "name",
                    hintName: "english Name",
                  ),

                  TextFieldWidget(
                      name: "death_full_name_np",
                      labelName: "Nepali Name",
                      validation: "name",
                      hintName: "English Name"
                  ),


                  _padding(label: "Death Place"),




                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "dead_place",
                    options: [
                      FormBuilderFieldOption(value: "house", child: Text("Home"),),
                      FormBuilderFieldOption(value: "hospital", child: Text("Hospital"),),
                      FormBuilderFieldOption(value: "others", child: Text("Other"),),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),


                  gapH10,


                  TextFieldWidget(
                      name: "dead_reason",
                      labelName: "Death Reason",
                      validation: "name",
                      hintName: "death reason",
                      lines: 2,
                  ),



                  _padding(label: "Birth Registration Location"),

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
                        fillColor: primaryColor,
                        hintText: "select province",
                      ),
                    ),

                    onChanged: (Provincee? data) {
                      print("Province id is ${data!.id}");

                      setState(() {
                        pzoneB = data;
                      });
                    },
                  ),

                  gapH10,







                  DropdownSearch<Districtt>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/province/${pzoneB.id}/districts"
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
                    enabled: pzoneB.en_name.isEmpty ? false : true,
                    onChanged: (Districtt? data) {
                      print("District id is ${data!.id}");

                      setState(() {
                        pdistrictB = data;
                      });
                    },
                  ),

                  gapH10,




                  DropdownSearch<Municipalities>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/district/${pdistrictB.id}/muncipalities"
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

                    enabled: pdistrictB.np_name.isEmpty ? false : true,

                    onChanged: (Municipalities? data) {
                      print("Municipality district id is ${data!.district_id}");

                      setState(() {
                        pMuniciB = data;
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

                            "https://test.digitalpalika.org/api/muncipality/${pMuniciB.id}/wards"
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

                    enabled: pMuniciB.np_name.isEmpty ? false : true,


                    onChanged: (Wardd? data) {
                      print("ward id is ${pWardB.id}");
                      pWardB = data!;
                    },

                  ),


                  gapH10,







                  TextFieldWidget(
                      name: "birth_registration_no",
                      labelName: "Birth Registration Number",
                      validation: "citizenship",
                      hintName: "birth registration no",
                      isNumeric: true,
                  ),


                  TextFieldWidget(
                      name: "death_full_name",
                      labelName: "Death Full Name",
                      validation: "name",
                      hintName: "death name"
                  ),






                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Birth Date English"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "birth_date_ad",
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
                          ],
                        ),
                      ),

                      gapW8,



                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Birth Date Nepali"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "birth_date_bs",
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
                          ],
                        ),
                      ),
                    ],
                  ),


                  gapH10,





                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Death Date English"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "dead_date_ad",
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
                          ],
                        ),
                      ),

                      gapW8,



                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Death Date Nepali"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "dead_date_bs",
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
                          ],
                        ),
                      ),
                    ],
                  ),











                  gapH14,



                  _padding(label: "Death Registration Location"),

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
                        fillColor: primaryColor,
                        hintText: "select province",
                      ),
                    ),

                    onChanged: (Provincee? data) {
                      print("Death Province id is ${data!.id}");

                      setState(() {
                        pzoneD = data;
                      });
                    },
                  ),

                  gapH10,

                  DropdownSearch<Districtt>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/province/${pzoneD.id}/districts"
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
                    enabled: pzoneD.en_name.isEmpty ? false : true,
                    onChanged: (Districtt? data) {
                      print("Death District id is ${data!.id}");

                      setState(() {
                        pdistrictD = data;
                      });
                    },
                  ),

                  gapH10,


                  DropdownSearch<Municipalities>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/district/${pdistrictD.id}/muncipalities"
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

                    enabled: pdistrictD.np_name.isEmpty ? false : true,

                    onChanged: (Municipalities? data) {
                      print("Death Municipality district id is ${data!.district_id}");

                      setState(() {
                        pMuniciD = data;
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

                            "https://test.digitalpalika.org/api/muncipality/${pMuniciD.id}/wards"
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

                    enabled: pMuniciD.np_name.isEmpty ? false : true,


                    onChanged: (Wardd? data) {
                      print("Death ward id is ${pWardB.id}");
                      pWardD = data!;
                    },

                  ),



                  gapH14,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            name: "address",
                            labelName: "Address",
                            validation: "row",
                            hintName: "address"
                        ),
                      ),


                      Expanded(
                        child: TextFieldWidget(
                            name: "mother_tongue",
                            labelName: "Language",
                            validation: "row",
                            hintName: "language"
                        ),
                      ),
                    ],
                  ),






                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            name: "citizenship_no",
                            labelName: "Citizenship number",
                            validation: "citizenship",
                            hintName: "citizenship no",
                            isNumeric: true,
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            name: "passport_no",
                            labelName: "Password Number",
                            validation: "citizenship",
                            hintName: "password no"
                        ),
                      ),
                    ],
                  ),


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            name: "tole",
                            labelName: "Tole Name",
                            validation: "row",
                            hintName: "tole"
                        ),
                      ),


                      Expanded(
                        child: TextFieldWidget(
                            name: "house_no",
                            labelName: "House no",
                            validation: "row",
                            hintName: "house no",
                            isNumeric: true,
                        ),
                      ),
                    ],
                  ),


                  _padding(label: "Married"),


                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "is_married",
                    options: [
                      FormBuilderFieldOption(value: 0, child: Text("True"),),
                      FormBuilderFieldOption(value: 1, child: Text("False"),),

                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),

                  _padding(label: "Religion"),

                  gapH7,

                  FormBuilderDropdown(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "religion",
                    items: religionOptions.map((religion) => DropdownMenuItem(
                      value: religion,
                      child: Text('$religion'),
                    )).toList(),
                    decoration: InputDecoration(

                      hintText: "Select Religion",
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


                  _padding(label: "Ethnicity"),

                  gapH7,

                  FormBuilderDropdown(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "cast",
                    items: ethnicityOptions.map((ethnicity) => DropdownMenuItem(
                      value: ethnicity,
                      child: Text('$ethnicity'),
                    )).toList(),
                    decoration: InputDecoration(

                      hintText: "Select Ethnicity",
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






                  _padding(label: "Citizenship Registration Location"),

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
                        fillColor: primaryColor,
                        hintText: "select province",
                      ),
                    ),

                    onChanged: (Provincee? data) {
                      print("Citizenship Province id is ${data!.id}");

                      setState(() {
                        pzoneC = data;
                      });
                    },
                  ),

                  gapH10,



                  DropdownSearch<Districtt>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/province/${pzoneC.id}/districts"
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
                    enabled: pzoneC.en_name.isEmpty ? false : true,
                    onChanged: (Districtt? data) {
                      print("Citizenship District id is ${data!.id}");

                      setState(() {
                        pdistrictC = data;
                      });
                    },
                  ),

                  gapH10,


                  DropdownSearch<Municipalities>(

                    validator: dropDownValidation,

                    asyncItems: (String filter) async {
                      try{
                        final response = await Dio().get(
                            "https://test.digitalpalika.org/api/district/${pdistrictC.id}/muncipalities"
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

                    enabled: pdistrictC.np_name.isEmpty ? false : true,

                    onChanged: (Municipalities? data) {
                      print("Citizenship Municipality district id is ${data!.district_id}");

                      setState(() {
                        pMuniciC = data;
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

                            "https://test.digitalpalika.org/api/muncipality/${pMuniciC.id}/wards"
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

                    enabled: pMuniciC.np_name.isEmpty ? false : true,


                    onChanged: (Wardd? data) {
                      print("Citizenship  ward id is ${pWardB.id}");
                      pWardC = data!;
                    },

                  ),



                  gapH14,



                  _padding(label: "GrandFather Name"),
                  gapH7,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          name: "grandfather_full_name_en",
                          labelName: "English Name",
                          hintName: "english",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                      Expanded(
                        child: TextFieldWidget(
                          labelName: "Nepali Name",
                          hintName: "nepali",
                          name: "grandfather_full_name_np",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                    ],
                  ),


                  _padding(label: "Father Name"),
                  gapH7,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          name: "father_full_name_en",
                          labelName: "English Name",
                          hintName: "english",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                      Expanded(
                        child: TextFieldWidget(
                          name: "father_full_name_np",
                          labelName: "Nepali Name",
                          hintName: "nepali",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                    ],
                  ),


                  _padding(label: "Mother Name"),
                  gapH7,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          name: "mother_full_name_en",
                          labelName: "English Name",
                          hintName: "english",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                      Expanded(
                        child: TextFieldWidget(
                          labelName: "Nepali Name",
                          hintName: "nepali",
                          name: "mother_full_name_np",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                    ],
                  ),



                  _padding(label: "Spouse Name"),
                  gapH7,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                          name: "spouse_full_name_en",
                          labelName: "English Name",
                          hintName: "english",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                      Expanded(
                        child: TextFieldWidget(
                          labelName: "Nepali Name",
                          hintName: "nepali",
                          name: "spouse_full_name_np",
                          validation: "rowname",
                          isTrue: true,

                        ),
                      ),
                    ],
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


                  _padding(label: "Witness Details"),



                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Row(
                            children: [
                              Expanded(
                                child: TextFieldWidget(
                                    name: "witness_full_name_en",
                                    labelName: "English Name",
                                    validation: "rowname",
                                    hintName: "english name",
                                    isTrue: true,
                                ),
                              ),

                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_full_name_np",
                                  labelName: "Nepali Name",
                                  validation: "rowname",
                                  hintName: "nepali name",
                                  isTrue: true,
                                ),
                              ),
                            ],
                          ),


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
                              print("Witness Province id is ${data!.id}");

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
                              print("Witness District id is ${data!.id}");

                              setState(() {
                                pdistrictW = data;
                              });
                            },
                          ),

                          gapH10,




                          DropdownSearch<Municipalities>(

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

                            enabled: pdistrictW.np_name.isEmpty ? false : true,

                            onChanged: (Municipalities? data) {
                              print("Witness Municipality district id is ${data!.district_id}");

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

                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(

                                floatingLabelStyle: TextStyle(color: primaryColor),
                                contentPadding: EdgeInsets.all(0),
                                label: Text("Ward"),
                                hintText: "Select ward number",
                              ),
                            ),

                            enabled: pMuniciW.np_name.isEmpty ? false : true,


                            onChanged: (Wardd? data) {
                              print("Witness ward id is ${pWardB.id}");
                              pWardW = data!;
                            },

                          ),


                          gapH16,









                          TextFieldWidget(
                            name: "witness_citizenship_no",
                            labelName: "Citizenship Number",
                            validation: "citizenship",
                            hintName: "citizenship number",
                            isTrue: true,
                            isNumeric: true,
                          ),


                          _padding(label: "Citizenship Date", isTrue: true),
                          gapH7,
                          FormBuilderDateTimePicker(
                              validator: FormBuilderValidators.required(),
                              name: "witness_citizenship_date",
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

                          gapH12,



                          Row(
                            children: [


                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_citizenship_country",
                                  labelName: "Citizenship Country",
                                  validation: "row",
                                  hintName: "citizenship country",
                                  isTrue: true,
                                ),
                              ),


                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_birth_country",
                                  labelName: "Birth Country",
                                  validation: "row",
                                  hintName: "birth country",
                                  isTrue: true,
                                ),
                              ),
                            ],
                          ),


                          Row(
                            children: [
                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_street_name",
                                  labelName: "Street Name",
                                  validation: "row",
                                  hintName: "english name",
                                  isTrue: true,
                                ),
                              ),

                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_tole",
                                  labelName: "Tole Name",
                                  validation: "row",
                                  hintName: "tole name",
                                  isTrue: true,
                                ),
                              ),


                              Expanded(
                                child: TextFieldWidget(
                                  name: "witness_house_no",
                                  labelName: "House No",
                                  validation: "row",
                                  hintName: "house no",
                                  isTrue: true,
                                  isNumeric: true,
                                ),
                              ),
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

                    newData['office_ward_id'] = pWardB.id;
                    newData['dead_ward_id'] = pWardD.id;
                    newData['citizenship_issued_district_id'] = pdistrictC.id;
                    newData['witness_ward_id'] = pWardW.id;
                    newData['ward_id'] = pWard.id;




                    if(  _formKey.currentState!.validate()){



                      final formatDate1 = DateFormat('yyyy/MM/dd').format(formData["birth_date_bs"]);
                      final formatDate2 = DateFormat('yyyy/MM/dd').format(formData["birth_date_ad"]);
                      final formatDate3 = DateFormat('yyyy/MM/dd').format(formData["dead_date_bs"]);
                      final formatDate4 = DateFormat('yyyy/MM/dd').format(formData["dead_date_ad"]);
                      final formatDate5 = DateFormat('yyyy/MM/dd').format(formData["witness_citizenship_date"]);



                      newData.update("birth_date_bs", (value) => formatDate1);
                      newData.update("birth_date_ad", (value) => formatDate2);
                      newData.update("dead_date_bs", (value) => formatDate3);
                      newData.update("dead_date_ad", (value) => formatDate4);
                      newData.update("witness_citizenship_date", (value) => formatDate5);


                      final response =  await DartaServices.addDeath(newData);


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














                  }, child: Text("Submit"))













                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Padding _padding({required String label, bool? isTrue, bool? isHeading}) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Text.rich(
          TextSpan(
            text: label,
            style: TextStyle(
                fontSize: isHeading == null ? 13.sp : 18.sp,
                color: isHeading != null ? primaryColor : isTrue == null ? Colors.black  : Colors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: isHeading == null ? 1 : 2

            ),
          ),
        )
    );
  }

  String? dropDownValidation(val){
    if(val == null) return "Select one field";
    return null;
  }
}