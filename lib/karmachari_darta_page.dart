

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';
import 'package:palikaa/common_widgets/textfield_widget.dart';
import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/export_pages.dart';
import 'package:palikaa/models/location_model.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:palikaa/services/birth_services.dart';



class KarmachariDartaPage extends ConsumerStatefulWidget {
  const KarmachariDartaPage({Key? key}) : super(key: key);

  @override
  ConsumerState<KarmachariDartaPage> createState() => _KarmachariDartaPageState();
}

class _KarmachariDartaPageState extends ConsumerState<KarmachariDartaPage> {

  final _formKey = GlobalKey<FormBuilderState>();

  Provincee pzoneB =  Provincee(id: 0, en_name: '', np_name: '');
  Districtt pdistrictB =  Districtt(id: 0, en_name: '', np_name: '', province_id: 0);
  Municipalities pMuniciB =  Municipalities(id: 0, en_name: '', np_name: '', district_id: 0);
  Wardd pWardB =  Wardd(id: 0, en_name: '', np_name: '', address: '', contact: '', muncipality_id: 0, number: 0);


  XFile? image;
  XFile? imagePicker;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [


                  _padding(label: "Karmachari Darta Page", isHeading: true ),

                  gapH10,
                  
                  
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_karmachari_first_name",
                            labelName: "First Name",
                            hintName: "first name",
                            validation: "row"
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_karmachari_middle_name",
                            labelName: "Middle Name",
                            hintName: "middle name",
                            validation: "row"
                        ),
                      ),

                      Expanded(
                        child: TextFieldWidget(
                            name: "dp_karmachari_last_name",
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
                            name: "dp_karmachari_designation",
                            labelName: "Designation",
                            hintName: "CEO",
                            validation: "row"
                        ),
                      ),


                      Expanded(
                        child: TextFieldWidget(
                          name: "dp_karmachari_phone_number",
                          labelName: "Phone Number",
                          hintName: "phone no",
                          validation: "number",
                          isNumeric: true,
                        ),
                      ),

                    ],
                  ),

                  


                  _padding(label: "Select Location"),

                  gapH10,


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
                    ),
                  ),


                  gapH10,

                  _padding(label: "Add Photo"),

                  FormBuilderImagePicker(
                    validator: FormBuilderValidators.required(),
                    name: 'dp_karmachari_profile_pic',
                    fit: BoxFit.fitWidth,
                    maxImages: 1,


                  ),
                  //
                  // InkWell(
                  //   onTap: () async{
                  //     ImagePicker picker = ImagePicker();
                  //     imagePicker = await picker.pickImage(source: ImageSource.gallery);
                  //
                  //     print("imagePicker is $imagePicker");
                  //
                  //   },
                  //   child: Container(
                  //     color: primaryColor,
                  //     height: 100,
                  //
                  //   ),
                  // ),


                  gapH10,


                  ElevatedButton(onPressed: () async {

                    _formKey.currentState!.save();



                    final formData = _formKey.currentState!.value;

                    final newData = Map.of(formData);

                    print(formData['dp_karmachari_profile_pic'].runtimeType);

                   List ok =  formData['dp_karmachari_profile_pic'];
                   print("Image is $ok");
                   ok.forEach((element) {
                     image = element;
                     print("formatImage is $image");
                   });


                    final response = await DartaServices.addkarmachari(image);



                   //  if(_formKey.currentState!.validate()){
                   //
                   //
                   //
                   //
                   //    print(formData['dp_karmachari_profile_pic']);
                   //
                   //
                   //    final response = await DartaServices.addkarmachari(newData, formData['dp_karmachari_profile_pic']);
                   //
                   //
                   //
                   // }
                   //
                   // else{
                   //
                   //   Exceptions.failureShow(context, "some fields are not valid");
                   //
                   // }








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
