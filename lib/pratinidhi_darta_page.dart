

import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:palikaa/common_widgets/textfield_widget.dart';
import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/core/shared/common_provider.dart';
import 'package:palikaa/export_pages.dart';
import 'package:palikaa/models/location_model.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:palikaa/providers/form_validation_provider.dart';
import 'package:palikaa/services/birth_services.dart';

import 'features/Janta/darta/presentation/forms/marriage/man_bibaran.dart';



class PratinidhiDartaPage extends ConsumerStatefulWidget {
  const PratinidhiDartaPage({Key? key}) : super(key: key);

  @override
  ConsumerState<PratinidhiDartaPage> createState() => _PratinidhiDartaPageState();
}

class _PratinidhiDartaPageState extends ConsumerState<PratinidhiDartaPage> {

  final _formKey = GlobalKey<FormBuilderState>();

  Provincee pzoneB =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictB =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciB =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardB =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  XFile? image;
  PlatformFile? file;

  @override
  Widget build(BuildContext context) {
    final isLoad = ref.watch(loadingProvider);
    final validate = ref.watch(validateProvider).mode;
    return SafeArea(
      child: Scaffold(

        body: FormBuilder(
          key: _formKey,
          autovalidateMode: validate,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [


                  _padding(label: "Pratinidhi Darta Page", isHeading: true ),

                  gapH10,


                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_pratinidhi_first_name",
                            labelName: "First Name",
                            hintName: "first name",
                            validation: "row"
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_pratinidhi_middle_name",
                            labelName: "Middle Name",
                            hintName: "middle name",
                            validation: "row"
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_pratinidhi_last_name",
                            labelName: "Last Name",
                            hintName: "last name",
                            validation: "row"
                        ),
                      ),
                    ],
                  ),


                  Row(
                    children: [

                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_pratinidhi_designation",
                            labelName: "Designation",
                            hintName: "CEO",
                            validation: "row"
                        ),
                      ),


                      Expanded(
                        child: TextFieldWidget(
                          name: "dp_pratinidhi_contact",
                          labelName: "Phone Number",
                          hintName: "phone no",
                          validation: "citizenship",
                          isNumeric: true,
                        ),
                      ),

                    ],
                  ),



                  _padding(label: "Date of birth"),
                  gapH7,



                  FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.required(),
                      name: "dp_pratinidhi_dob",
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


                  _padding(label: "Gender"),

                  FormBuilderRadioGroup(
                    validator: FormBuilderValidators.required(errorText: "Select one option"),
                    name: "dp_pratinidhi_gender",
                    options: [
                      FormBuilderFieldOption(value: "male", child: Text("Male"),),
                      FormBuilderFieldOption(value: "female", child: Text("Female"),),
                      FormBuilderFieldOption(value: "other", child: Text("Others"),),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                  ),




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


                    ],
                  ),


                  gapH10,

                  _padding(label: "Add Photo"),

                  FormBuilderImagePicker(
                    validator: FormBuilderValidators.required(),
                    name: 'dp_pratinidhi_profile_pic',
                    maxImages: 1,


                  ),


                  FormBuilderFilePicker(
                    validator: FormBuilderValidators.required(),
                    name: "dp_pratinidhi_parichayapatra_file",
                    maxFiles: 1,
                    onChanged: (val) => print(val),
                    typeSelectors: [
                      TypeSelector(
                        type: FileType.any,
                        selector: Row(
                          children: [
                            Icon(Icons.add),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: _padding(label: "Add Files"),
                            ),
                          ],
                        ),
                      ),
                    ],
                    onFileLoading: (val) {
                      print(val);
                    },
                  ),


                  //
                  //
                  // InkWell(
                  //   onTap: () async{
                  //
                  //
                  //     FilePickerResult? result = await FilePicker.platform.pickFiles();
                  //
                  //     if (result != null) {
                  //       File file =  File(result.files.single.path);
                  //     }
                  //
                  //
                  //   },
                  //     child: _padding(label: "Select File")
                  // ),



                  gapH10,


                  ElevatedButton(onPressed:  () async {


                    ref.read(loadingProvider.notifier).toggle();
                    _formKey.currentState!.save();
                    final formData = _formKey.currentState!.value;
                    final newData = Map.of(formData);

                






                    if(_formKey.currentState!.validate()){

                       print(formData['dp_pratinidhi_parichayapatra_file']);

                       formData['dp_pratinidhi_parichayapatra_file'].forEach((element) {
                        file = element;
                      });
                      
                      print("FIle is $file");
                      
                      newData.update("dp_pratinidhi_parichayapatra_file", (value) => file);


                      final formatDate1 = DateFormat('yyyy/MM/dd').format(formData["dp_pratinidhi_dob"]);


                      newData.update("dp_pratinidhi_dob", (value) => formatDate1);

                      List imageList =  formData['dp_pratinidhi_profile_pic'];
                      imageList.forEach((element) {
                        image = element;
                        print("formatImage is $image");
                      });


                      newData.update("dp_pratinidhi_profile_pic", (value) => image);
                      newData['dp_wada_id'] = pWardB.id;

                  

                      final response = await DartaServices.addPratinidhi(newData);

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
