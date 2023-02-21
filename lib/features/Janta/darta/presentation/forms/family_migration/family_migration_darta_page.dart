



import 'package:dio/dio.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:palikaa/common_widgets/snackbar_show.dart';
import 'package:palikaa/common_widgets/textfield_widget.dart';
import 'package:palikaa/core/shared/common_provider.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/migration/migration_darta_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:palikaa/providers/form_validation_provider.dart';
import 'package:palikaa/services/birth_services.dart';


import '../../../../../../constants/app_sizes.dart';
import '../../../../../../constants/colors.dart';
import '../marriage/man_bibaran.dart';
import '../../../../../../models/location_model.dart';

class FamilyMigrationDartaPage extends ConsumerStatefulWidget {
  const FamilyMigrationDartaPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FamilyMigrationDartaPage> createState() => _FamilyMigrationDartaPageState();
}

class _FamilyMigrationDartaPageState extends ConsumerState<FamilyMigrationDartaPage> {

  final _formKey = GlobalKey<FormBuilderState>();


  Provincee pzone =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrict =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMunici =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWard =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);

  @override
  Widget build(BuildContext context) {

    final isLoad = ref.watch(loadingProvider);
    final validate = ref.watch(validateProvider).mode;
    final num = ref.watch(incrementProvider);

    return SafeArea(
      child: Scaffold(
        body: FormBuilder(
          autovalidateMode: validate,
          key: _formKey,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  _padding(label: "Family Migration Darta Page", isHeading: true),

                  gapH10,

                  TextFieldWidget(
                      labelName: "Full Name",
                      hintName: "full name",
                      name: "full_name",
                      validation: "name"
                  ),

                  _padding(label: "Birth Date"),
                  gapH10,
                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "birth_date",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "birth date",
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        errorStyle:  TextStyle(fontSize: 13.sp),

                        errorBorder:  OutlineInputBorder(
                          borderSide:  BorderSide(color: Colors.red, width: 0.0),
                        ),

                        hintStyle: formHintStyle,
                        border: const OutlineInputBorder(),
                      )

                  ),

                  gapH16,

                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            labelName: "Citizenship number",
                            hintName: "citizenship no",
                            name: "citizenship_no",
                            validation: "citizenship",
                            isNumeric: true,
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            labelName: "Birth Registration No",
                            hintName: "birth registration no",
                            name: "birth_registration_no",
                            validation: "citizenship",
                            isNumeric: true,
                        ),
                      ),
                    ],
                  ),
                  _padding(label: "Citizenship Issued Date"),
                  gapH7,
                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "citizenship_issued_date",
                      inputType: InputType.date,
                      format: DateFormat('yyyy/MM/dd'),
                      decoration: InputDecoration(
                        hintText: "citizenship issued date",
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



                  // need to select district id imppp

                  _padding(label: "Select Location"),

                  gapH10,


                  Column(
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
                            contentPadding: EdgeInsets.all(0),
                            label: Text("Province"),
                            hintText: "select province",
                            floatingLabelStyle: TextStyle(color: primaryColor)
                          ),
                        ),

                        onChanged: (Provincee? data) {
                          print("Citizenship Province id is ${data!.id}");

                          setState(() {
                            pzone = data;
                          });
                        },
                      ),

                      gapH7,







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
                          print("Citizenship District id is ${data!.id}");

                          setState(() {
                            pdistrict = data;
                          });
                        },
                      ),

                      gapH7,




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
                          print("Citizenship Municipality district id is ${data!.district_id}");

                          setState(() {
                            pMunici = data;
                          });

                        },


                      ),

                      gapH7,



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
                          pWard = data!;
                        },

                      ),

                      // need to select district id imppp
                    ],
                  ),





                  gapH12,

                  _padding(label: "Gender"),


                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "gender",
                    options: [
                      FormBuilderFieldOption(value: "male", child: Text("Male"),),
                      FormBuilderFieldOption(value: "female", child: Text("Female"),),
                      FormBuilderFieldOption(value: "other", child: Text("Other"),),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),

                  gapH10,


                  _padding(label: "Relation"),


                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "relation",
                    options: [
                      FormBuilderFieldOption(value: "spouse", child: Text("Spouse"),),
                      FormBuilderFieldOption(value: "parents", child: Text("Parents"),),
                      FormBuilderFieldOption(value: "children", child: Text("Children"),),
                      FormBuilderFieldOption(value: "other", child: Text("Others"),),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                    ),
                  ),



                  // _padding(label: "Will Migrate"),
                  //
                  //
                  // FormBuilderRadioGroup(
                  //   validator: FormBuilderValidators.required(errorText: "Select one option"),
                  //   name: "will_migrate",
                  //   options: [
                  //     FormBuilderFieldOption(value: true, child: Text("True"),),
                  //     FormBuilderFieldOption(value: false, child: Text("False"),),
                  //   ],
                  //   decoration: InputDecoration(
                  //     enabledBorder: InputBorder.none,
                  //   ),
                  // ),
                  //
                  // gapH10,

                  FormBuilderSwitch(
                      name: "will_migrate",
                      initialValue: false,
                      activeColor: primaryColor,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10)
                      ),
                      title: _padding(label: "Will Migrate")
                  ),


                  ElevatedButton(onPressed:  isLoad ? null : () async {


                    ref.read(loadingProvider.notifier).toggle();

                    _formKey.currentState!.save();

                    final formData = _formKey.currentState!.value;

                    final newData = Map.of(formData);

                    newData['district_id'] = pdistrict.id;



                    if(_formKey.currentState!.validate()){



                      ref.read(incrementProvider.notifier).increase();


                      newData['migration_notice_form_id'] = num;

                      print("Migration id is ${newData['migration_notice_form_id']}");



                      final formatDate1 = DateFormat('yyyy/MM/dd').format(formData["citizenship_issued_date"]);
                      final formatDate2 = DateFormat('yyyy/MM/dd').format(formData["birth_date"]);

                      newData.update("citizenship_issued_date", (value) => formatDate1);
                      newData.update("birth_date", (value) => formatDate2);
                      final response = await DartaServices.addFamilyMigration(newData);

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
