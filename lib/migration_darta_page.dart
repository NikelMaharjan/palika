


import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:palikaa/common_widgets/textfield_widget.dart';
import 'package:palikaa/constants/app_sizes.dart';
import 'package:palikaa/core/shared/common_provider.dart';
import 'package:palikaa/export_pages.dart';
import 'package:palikaa/models/location_model.dart';
import 'package:palikaa/providers/form_validation_provider.dart';
import 'package:palikaa/services/birth_services.dart';

import 'constants/colors.dart';
import 'features/Janta/darta/presentation/forms/marriage/man_bibaran.dart';

class MigrationDartaPage extends ConsumerStatefulWidget {
  const MigrationDartaPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MigrationDartaPage> createState() => _MigrationDartaPageState();
}

class _MigrationDartaPageState extends ConsumerState<MigrationDartaPage> {

  final _formKey = GlobalKey<FormBuilderState>();



  Provincee pzoneO =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictO =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciO =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardO =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);




  Provincee pzoneM =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictM =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciM =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardM =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  Provincee pzoneC =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictC =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciC =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardC =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  @override
  Widget build(BuildContext context) {

    final isLoad = ref.watch(loadingProvider);
    final validate = ref.watch(validateProvider).mode;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FormBuilder(
              key: _formKey,
              autovalidateMode: validate,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  _padding(label: "Migration Darta Page", isHeading:  true),
                  gapH10,

                  TextFieldWidget(
                      name: "applicant_name",
                      labelName: "Name",
                      hintName: "name",
                      validation: "name",
                  ),

                  _padding(label: "Application Date"),
                  gapH7,
                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "applicant_date",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "date",
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

                  TextFieldWidget(
                      name: "citizenship_no",
                      labelName: "Citizenship number",
                      hintName: "citizenship no",
                      validation: "citizenship",
                      isNumeric: true,
                  ),




                  _padding(label: "Office Address"),


                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
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
                                pzoneO = data;
                              });
                            },
                          ),

                          gapH10,


                          DropdownSearch<Districtt>(

                            validator: dropDownValidation,

                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/province/${pzoneO.id}/districts"
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
                            enabled: pzoneO.en_name.isEmpty ? false : true,
                            onChanged: (Districtt? data) {
                              print("District id is ${data!.id}");

                              setState(() {
                                pdistrictO = data;
                              });
                            },
                          ),

                          gapH10,


                          DropdownSearch<Municipalities>(

                            validator: dropDownValidation,

                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/district/${pdistrictO.id}/muncipalities"
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

                            enabled: pdistrictO.np_name.isEmpty ? false : true,

                            onChanged: (Municipalities? data) {
                              print("Municipality district id is ${data!.district_id}");

                              setState(() {
                                pMuniciO = data;
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

                                    "https://test.digitalpalika.org/api/muncipality/${pMuniciO.id}/wards"
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

                            enabled: pMuniciO.np_name.isEmpty ? false : true,


                            onChanged: (Wardd? data) {
                              print("ward id is ${pWardO.id}");
                              pWardO = data!;
                            },

                          ),

                          gapH10,
                        ],
                      ),
                    ),
                  ),





                  _padding(label: "Current Address"),


                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                              print("District id is ${data!.id}");

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
                              print("Municipality district id is ${data!.district_id}");

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
                              print("ward id is ${pWardC.id}");
                              pWardC = data!;
                            },

                          ),


                          gapH10,


                          Row(

                            children: [

                              Expanded(
                                child: TextFieldWidget(
                                  name: "current_tole",
                                  labelName: "Tole Name",
                                  hintName: "tole",
                                  validation: "row",
                                ),
                              ),


                              Expanded(
                                child: TextFieldWidget(
                                  name: "current_street_name",
                                  labelName: "Street Name",
                                  hintName: "street",
                                  validation: "row",
                                ),
                              ),

                              Expanded(
                                child: TextFieldWidget(
                                  name: "current_house_no",
                                  labelName: "House Number",
                                  hintName: "house no",
                                  validation: "row",
                                  isNumeric: true,
                                ),
                              ),

                            ],
                          )




                        ],
                      ),
                    ),
                  ),

                  gapH10,

                  _padding(label: "Migrated Address"),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                pzoneM = data;
                              });
                            },
                          ),

                          gapH10,

                          DropdownSearch<Districtt>(

                            validator: dropDownValidation,

                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/province/${pzoneM.id}/districts"
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
                            enabled: pzoneM.en_name.isEmpty ? false : true,
                            onChanged: (Districtt? data) {
                              print("District id is ${data!.id}");

                              setState(() {
                                pdistrictM = data;
                              });
                            },
                          ),

                          gapH10,

                          DropdownSearch<Municipalities>(

                            validator: dropDownValidation,

                            asyncItems: (String filter) async {
                              try{
                                final response = await Dio().get(
                                    "https://test.digitalpalika.org/api/district/${pdistrictM.id}/muncipalities"
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

                            enabled: pdistrictM.np_name.isEmpty ? false : true,

                            onChanged: (Municipalities? data) {
                              print("Municipality district id is ${data!.district_id}");

                              setState(() {
                                pMuniciM = data;
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

                                    "https://test.digitalpalika.org/api/muncipality/${pMuniciM.id}/wards"
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

                            enabled: pMuniciM.np_name.isEmpty ? false : true,


                            onChanged: (Wardd? data) {
                              print("ward id is ${pWardM.id}");
                              pWardM = data!;
                            },

                          ),


                          gapH10,


                          Row(
                            children: [

                              Expanded(
                                child: TextFieldWidget(
                                  name: "migrated_tole",
                                  labelName: "Tole Name",
                                  hintName: "tole",
                                  validation: "row",
                                ),
                              ),


                              Expanded(
                                child: TextFieldWidget(
                                  name: "migrated_street_name",
                                  labelName: "Street Name",
                                  hintName: "street",
                                  validation: "row",
                                ),
                              ),

                              Expanded(
                                child: TextFieldWidget(
                                  name: "migrated_house_no",
                                  labelName: "House Number",
                                  hintName: "house no",
                                  validation: "row",
                                  isNumeric: true,
                                ),
                              ),

                            ],
                          )




                        ],
                      ),
                    ),
                  ),

                  gapH10,


                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Date English"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "date_en",
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
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _padding(label: "Date Nepali"),
                            gapH7,
                            FormBuilderDateTimePicker(
                                validator: FormBuilderValidators.required(),
                                name: "date_np",
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



                  _padding(label: "Reason Of Migration"),




                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "reason",
                    options: [
                      FormBuilderFieldOption(value: "job", child: Text("Job"),),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),

                  gapH10,


                  TextFieldWidget(
                    name: "reason_detail",
                    labelName: "Reason Details",
                    hintName: "details",
                    validation: "name",
                    lines: 2,
                  ),


                  ElevatedButton(onPressed:  isLoad ? null :  ()  async {


                    ref.read(loadingProvider.notifier).toggle();

                    _formKey.currentState!.save();

                    final formData = _formKey.currentState!.value;

                    final newData = Map.of(formData);

                    newData['office_ward_id'] = pWardO.id;
                    newData['current_ward_id'] = pWardC.id;
                    newData['migrated_ward_id'] = pdistrictM.id;


                    if(  _formKey.currentState!.validate()){


                      final formatDate1 = DateFormat('yyyy/MM/dd').format(formData["date_np"]);
                      final formatDate2 = DateFormat('yyyy/MM/dd').format(formData["date_en"]);
                      final formatDate3 = DateFormat('yyyy/MM/dd').format(formData["applicant_date"]);


                      newData.update("date_np", (value) => formatDate1);
                      newData.update("date_en", (value) => formatDate2);
                      newData.update("applicant_date", (value) => formatDate3);



                      final response =  await DartaServices.addMigration(newData);


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
