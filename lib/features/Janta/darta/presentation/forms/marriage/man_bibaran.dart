import 'package:dropdown_search/dropdown_search.dart';
import '../../../../../../common_widgets/form_widgets.dart';
import 'package:ensure_visible_when_focused/ensure_visible_when_focused.dart';
import '../../../../../../core/shared/index_provider.dart';
import '../../../../../../export_pages.dart';
import '../../../data/dummy_data.dart';
import '../../../data/dummy_data1.dart';
import '../../providers/marriage_provider.dart';
import '../../providers/photo_provider.dart';


class ManBibaran extends StatefulWidget {


  @override
  State<ManBibaran> createState() => _ManBibaranState();
}

class _ManBibaranState extends State<ManBibaran>{
  final _form = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final fullNameController = TextEditingController();
  final tharController = TextEditingController();
  final statusController = TextEditingController();
  final dobController = TextEditingController();
  final dob1Controller = TextEditingController();
  final occupationController = TextEditingController();
  final citizenNumberController = TextEditingController();
  final bideshAddressController = TextEditingController();
  final bideshNameController = TextEditingController();
  final passportController = TextEditingController();
  final birthController = TextEditingController();
  final citizenCountryController = TextEditingController();
  final bajeController = TextEditingController();
  final babuController = TextEditingController();
  final aamaController = TextEditingController();
  final pToleController = TextEditingController();
  final pWardController = TextEditingController();
  final sadakController = TextEditingController();
  final houseController = TextEditingController();
  final tToleController = TextEditingController();
  final tWardController = TextEditingController();


  final String dateType = 'B.S.';

  FocusNode nameFocus = FocusNode();
  FocusNode bideshFocus = FocusNode();
  FocusNode bideshNameFocus = FocusNode();
  FocusNode passportFocus = FocusNode();
  FocusNode bajeFocus = FocusNode();
  FocusNode babuFocus = FocusNode();
  FocusNode aamaFocus = FocusNode();
  FocusNode fullNameFocus = FocusNode();
  FocusNode tharFocus = FocusNode();
  FocusNode statusFocus = FocusNode();
  FocusNode occuFocus = FocusNode();
  FocusNode citiFocus = FocusNode();
  FocusNode citiAddressFocus = FocusNode();
  FocusNode citiByFocus = FocusNode();
  FocusNode pToleFocus = FocusNode();
  FocusNode houseFocus = FocusNode();
  FocusNode sadakFocus = FocusNode();
  FocusNode tToleFocus = FocusNode();
  FocusNode pWardFocus = FocusNode();
  FocusNode tWardFocus = FocusNode();
  FocusNode birthFocus = FocusNode();
  FocusNode citizenCountryFocus = FocusNode();

  LiteracyTypes literacy = LiteracyTypes.empty();
  MatriTypes matrecy = MatriTypes.empty();
  Province pzone = const Province(id: 0, en_name: '', np_name: '');
  Municipality pMunici = const Municipality(
      id: 0, en_name: '', np_name: '');

  District pdistrict = const District(id: 0, en_name: '', np_name: '');
  District p1district = const District(id: 0, en_name: '', np_name: '');
Ward pWard = const Ward(id: 0, en_name: '', np_name: '', number: '');


  Nationalities nation = const Nationalities(id: '', label: '');
  Religion religion = const Religion(id: '', religion: '');
  Ethinic ethinic = const Ethinic(id: '', ethinic: '');


  bool married = false;
  bool unmarried = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (context, ref,child) {
            final mode = ref.watch(modeProvider1);
            final photoData = ref.watch(imageProvider);
            return Form(
              key: _form,
              autovalidateMode: mode,
              child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _headPadding('दुलहाको विवरण :'),
                            _buildWidget(
                                isNumber: false,
                                hint: 'नाम:',
                                label: 'नाम:',
                                focus: nameFocus,
                                isLast: true,
                                isName: true,
                                controller: nameController,
                                isRequired: true
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'थर:',
                                label: 'थर: ',
                                focus: tharFocus,
                                isLast: true,
                                isName: true,
                                controller: tharController,
                                isRequired: true
                            ),
                            gapH10,

                            _buildWidget(
                                isNumber: false,
                                hint: 'पुरा नाम लेख्नुहोश:',
                                label: 'पुरा नाम लेख्नुहोश: ',
                                focus: fullNameFocus,
                                isName: true,
                                isLast: true,
                                controller: fullNameController,
                                isRequired: true
                            ),
                            gapH10,
                            DateFormWidgets(label: 'जन्म मिति: ',
                                hint: '$dateType(DD-MM-YYYY)',
                                controller: dobController
                            ),
                            _buildColumn(
                              'जातीय समूह:',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<Ethinic>(
                                    validator: _val,
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    items: ethinicData,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(ethinic.ethinic.isEmpty, 'जातीय समूह:'),
                                    onChanged: (Ethinic? data) {
                                      setState(() {
                                        ethinic = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            FormField<bool>(
                              builder: (state) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        _padding('पुर्व बैबाहिक स्थति:  छ ? '),
                                        gapW4,
                                        Row(
                                          children: [
                                            gapW20,
                                            _buildAutoSizeText(),
                                            Checkbox(
                                              value: married,
                                              onChanged: (val) {
                                                setState(() {
                                                  married = val!;
                                                  unmarried = false;
                                                });
                                              },
                                            ),
                                            _buildAutoSizeText1(),
                                            Checkbox(
                                              value: unmarried,
                                              onChanged: (val) {
                                                setState(() {
                                                  unmarried = val!;
                                                  married= false;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 7,),
                                        if (state.errorText != null)
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              state.errorText!,
                                              style: TextStyle(
                                                color: Theme.of(context).errorColor,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),

                                  ],
                                );
                              },
                              validator: (val) {
                                if (!married && !unmarried) {
                                  return 'बक्समा क्लिक गर्नुहोस्';
                                } else {
                                  return null;
                                }
                              },

                            ),

                            _buildColumn(
                              'साक्षरता प्रकार :',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<LiteracyTypes>(
                                    validator: _val,
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    items: literacyTypes,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(literacy.label.isEmpty, 'साक्षरता प्रकार :'),
                                    onChanged: (LiteracyTypes? data) {
                                      setState(() {
                                        literacy = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            _buildWidget(
                                isNumber: false,
                                hint: 'पेशा',
                                label: 'पेशा: ',
                                focus: occuFocus,
                                isName: true,
                                controller: occupationController,
                                isLast: true,
                                isRequired: true
                            ),

                            _buildColumn(
                              'धर्म:',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<Religion>(
                                    validator: _val,
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    items: religionData,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(religion.religion.isEmpty, 'धर्म:'),
                                    onChanged: (Religion? data) {
                                      setState(() {
                                        religion = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            _buildColumn(
                              'मातृभाषा:',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<MatriTypes>(
                                    validator: _val,
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    items: matriTypes,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(matrecy.label.isEmpty, 'मातृभाषा:'),
                                    onChanged: (MatriTypes? data) {
                                      setState(() {
                                        matrecy = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            _padding('स्थायी ठेगाना:'),
                            _buildColumn(
                              'प्रदेश चयन गर्नुहोस्:',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<Province>(
                                    validator: _val,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "http://test.palikaa.org/api/provinces",
                                          queryParameters: {"filter": 'np_name'},
                                        );
                                        final models = (response.data as List).map((e) => Province.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'something went wrong';
                                      }

                                    },
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(pzone.np_name.isEmpty , 'प्रदेश चयन गर्नुहोस्:'),
                                    onChanged: (Province? data) {
                                      setState(() {
                                        pzone = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            _buildColumn(
                              'जिल्ला चयन गर्नुहोस् :',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<District>(
                                    validator: _val,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "http://test.palikaa.org/api/province/${pzone.id}/districts",
                                          queryParameters: {"filter": 'np_name'},
                                        );
                                        final models = (response.data as List).map((e) => District.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'something went wrong';
                                      }

                                    },
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    enabled: pzone.np_name.isEmpty ? false : true,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(pdistrict.np_name.isEmpty , 'जिल्ला चयन गर्नुहोस् :'),
                                    onChanged: (District? data) {
                                      setState(() {
                                        pdistrict = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),


                            _buildColumn(
                              'गा.बी.स / न.पा चयन गर्नुहोस् :',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<Municipality>(
                                    validator: _val,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "http://test.palikaa.org/api/district/${pdistrict.id}/muncipalities",
                                          queryParameters: {"filter": 'np_name'},
                                        );
                                        final models = (response.data as List).map((e) => Municipality.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'something went wrong';
                                      }

                                    },
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    enabled: pdistrict.np_name.isEmpty
                                        ? false
                                        : true,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(pMunici.np_name.isEmpty , 'गा.बी.स / न.पा चयन गर्नुहोस् :'),
                                    onChanged: (Municipality? data) {
                                      setState(() {
                                        pMunici = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            _buildColumn(
                              'वडा नं.:',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<Ward>(
                                    validator: _val,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "http://test.palikaa.org/api/muncipality/${pMunici.id}/wards",
                                          queryParameters: {"filter": 'number'},
                                        );
                                        final models = (response.data as List).map((e) => Ward.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'डाटा उपलब्ध छैन अर्को नगरपालिका चयन गर्नुहोस्';
                                      }

                                    },
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    enabled: pdistrict.np_name.isEmpty
                                        ? false
                                        : true,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(pMunici.np_name.isEmpty , 'वडा नं.:'),
                                    onChanged: (Ward? data) {
                                      setState(() {
                                        pWard = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            _buildWidget(
                              isNumber: false,
                              hint: 'सडक मार्ग   ',
                              label: 'सडक मार्ग:  ',
                              controller: sadakController,
                              focus: sadakFocus,
                              isLast: true,
                              isName: true,
                              isRequired: true,
                            ),
                            gapH10,
                            _buildWidget(
                              isNumber: false,
                              hint: 'गाउँ/टोल  ',
                              label: 'गाउँ/टोल:  ',
                              controller: pToleController,
                              focus: pToleFocus,
                              isLast: true,
                              isName: true,
                              isRequired: true,
                            ),
                            gapH10,
                            _buildWidget(
                              isNumber: true,
                              hint: ' घर नं. ',
                              label: 'घर नं. : ',
                              controller: houseController,
                              focus: houseFocus,
                              isName: false,
                              isLast: true,
                              isRequired: true,
                            ),
                            gapH10,
                            _buildWidget(
                              isNumber: false,
                              hint: 'जन्म भयको देश :',
                              label: 'जन्म भयको देश :',
                              controller: birthController,
                              focus: birthFocus,
                              isLast: true,
                              isName: true,
                              isRequired: true,
                            ),
                            gapH10,
                            _buildWidget(
                              isNumber: false,
                              hint: 'नागरिकता लिएको देश :',
                              label: 'नागरिकता लिएको देश :',
                              controller: citizenCountryController,
                              focus: citizenCountryFocus,
                              isLast: true,
                              isName: true,
                              isRequired: true,
                            ),

                            _buildWidget(
                                isNumber: true,
                                hint: 'नागरिकता नं',
                                label: 'नागरिकता नं: ',
                                isName: false,
                                isLast: true,
                                focus: citiFocus,
                                controller: citizenNumberController,
                                isRequired: true
                            ),
                            gapH12,
                            DateFormWidgets(label: 'जारी मिति : ',
                                hint: 'जारी मिति (DD-MM-YYYY)',
                                controller: dob1Controller
                            ),

                            _buildColumn(
                              'जारी गरिएको जिल्ला :',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<District>(
                                    validator: _val,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "https://test.palikaa.org/api/districts",
                                          queryParameters: {"filter": 'np_name'},
                                        );
                                        final models = (response.data as List).map((e) => District.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'something went wrong';
                                      }

                                    },
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    dropdownDecoratorProps:  _buildDropDownDecoratorProps(p1district.np_name.isEmpty , 'जारी गरिएको जिल्ला:'),
                                    onChanged: (District? data) {
                                      setState(() {
                                        p1district = data!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            _buildWidget(
                                isNumber: true,
                                hint: 'बिदेशी भएमा राहदानी नं:',
                                label:  'बिदेशी भएमा राहदानी नं:',
                                isName: false,
                                isLast: true,
                                focus: passportFocus,
                                controller: passportController,
                                isRequired: false
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'बिदेशी भएमा देश को नाम:',
                                label: 'बिदेशी भएमा देश को नाम:',
                                isName: true,
                                isLast: true,
                                focus: bideshNameFocus,
                                controller: bideshNameController,
                                isRequired: false
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'बिदेशी भएमा ठेगाना:',
                                label: 'बिदेशी भएमा ठेगाना:',
                                isName: true,
                                focus: bideshFocus,
                                controller: bideshAddressController,
                                isLast: true,
                                isRequired: false
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'बाजेको नाम थर :',
                                label: 'बाजेको नाम थर :',
                                isName: true,
                                isLast: true,
                                focus: bajeFocus,
                                controller: bajeController,
                                isRequired: true
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'बाबुको नाम थर :',
                                label: 'बाबुको नाम थर :',
                                isName: true,
                                focus: babuFocus,
                                controller: babuController,
                                isRequired: true
                            ),
                            gapH10,
                            _buildWidget(
                                isNumber: false,
                                hint: 'आमाको नाम थर :',
                                label: 'आमाको नाम थर :',
                                isName: true,
                                isLast: true,
                                focus: aamaFocus,
                                controller: aamaController,
                                isRequired: true
                            ),
                            gapH10,
                            InkWell(
                              onTap: () {
                                showDialog(context: context, builder: (_) =>
                                    AlertDialog(
                                      title: const Text("Image Selection"),
                                      content: Text('फोटो चयन विधि छनौट गर्नुहोस्'),
                                        actions: [
                                          TextButton(onPressed: () {
                                            Navigator.of(context).pop();
                                            ref.read(imageProvider).selectImage(true);
                                          }, child: const Text('क्यामेरा')),
                                          TextButton(onPressed: () {
                                            Navigator.of(context).pop();
                                            ref.read(imageProvider).selectImage(false);
                                          }, child: const Text('Gallery')),
                                        ]
                                    ));
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: photoData.image1 == null ?
                                const Center(child: Text(
                                    'कृपया एउटा फोटो चयन गर्नुहोस्'))
                                    : Image.file(
                                  File(photoData.image1!.path), fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 20, top: 30),
                              child: ElevatedButton(
                                  onPressed: () async{
                                    _form.currentState!.save();
                                    if(_form.currentState!.validate()) {
                                    FocusScope.of(context).unfocus();
                                     if(photoData.image1 == null){
                                       showDialog(context: context, builder: (_) =>
                                           AlertDialog(
                                             title: const Text("Image not selected"),
                                             content: Text('please select an image'),
                                             actions: [
                                               TextButton(
                                                 child: const Text("Close"),
                                                 onPressed: () {
                                                   Navigator.of(context).pop();
                                                 },
                                               )
                                             ],
                                           ));
                                     }else{
                                        final date1 = dobController.text.substring(3, 5);
                                        final date2 = dobController.text.substring(6, 10);
                                       final date = '$date2/$date1/${dobController.text.substring(0, 2)}';
                                        final dat1 = dob1Controller.text.substring(3, 5);
                                        final dat2 = dob1Controller.text.substring(6, 10);
                                        final dat = '$dat2/$dat1/${dob1Controller.text.substring(0, 2)}';

                                       final newData = {
                                         'groom_issued_district_id': 1,
                                         'groom_citizenship_no': citizenNumberController.text.trim(),
                                         'groom_citizenship_country': citizenCountryController.text.trim(),
                                         'groom_birth_country': birthController.text.trim(),
                                         'groom_house_no': houseController.text.trim(),
                                         'groom_tole': pToleController.text.trim(),
                                         'groom_street_name': sadakController.text.trim(),
                                         'groom_ward_id': pWard.id,
                                         'groom_full_name_np': nameController.text.trim(),
                                         'groom_full_name_en': nameController.text.trim(),
                                         'groom_birth_date': date,
                                         'is_groom_married': married ? 1: 0,
                                         'groom_education_status': literacy.label,
                                         'groom_occupation': occupationController.text.trim(),
                                         'groom_religion': religion.religion,
                                         'groom_mother_tongue': matrecy.label,
                                         'groom_citizenship_date': dat,
                                         'groom_address': pWard.id,
                                         'groom_grand_father_en': bajeController.text.trim(),
                                         'groom_grand_father_np':  bajeController.text.trim(),
                                         'groom_father_name_en': babuController.text.trim(),
                                         'groom_father_name_np':  babuController.text.trim(),
                                         'groom_mother_name_en': aamaController.text.trim(),
                                         'groom_mother_name_np': aamaController.text.trim(),
                                       };

                                       ref.read(bibahaProvider.notifier).addData(newData);
                                       context.pushNamed(AppRoute.women.name);
                                     }

                                    }else{
                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                          backgroundColor: Colors.pink.shade300,
                                          duration: Duration(seconds: 1),
                                          content: Text('केहि फारम क्षेत्र हरु छुटेको छ !')));
                                      ref.read(modeProvider1.notifier).changeMode(AutovalidateMode.onUserInteraction);
                                    }

                                  },
                                  child:  Text('Next', style: TextStyle(color: Colors
                                      .white, fontSize: 17.sp),)
                              ),
                            ),

                          ]
                      ),
                    ),
                  ]
              ),
            );
          }
      ),
    );
  }

  String? _val(val) {
    if (val == null) {
      return 'Field can\'t be empty';
    }
    return null;
  }

  DropDownDecoratorProps _buildDropDownDecoratorProps(bool some, String label) {
    return DropDownDecoratorProps(
        textAlign: TextAlign.start,
        baseStyle: TextStyle(fontSize: 16.sp),
        dropdownSearchDecoration: some ? InputDecoration(
            label: Text(label, style: formHintStyle,)
        ) : InputDecoration(border: InputBorder.none)
    );
  }

  Column _buildColumn(String label, Card card) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH10,
        _padding(label),
        card,
        gapH10,
      ],
    );
  }

  Container _headPadding(String label) {
    return Container(
      child: Padding(
          padding:  const EdgeInsets.symmetric(vertical: 12),
          child: Text.rich(
            TextSpan(
              text: label,
              style:  TextStyle(fontSize: 17.5.sp, fontWeight: FontWeight.bold, color: labelColor, fontFamily: 'ABeeZee'),
            ),
          )
      ),
    );
  }

  Widget  _buildWidget({
    required String label,
    required TextEditingController controller,
    required  bool isName,
    required  String hint,
    required bool isNumber,
    required FocusNode focus,
    bool? isPhones,
    bool? isLast,
    required  bool isRequired

  }
      ){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _padding(label),
        gapH7,
        Card(
          elevation: 5,
          child: EnsureVisibleWhenFocused(
            focusNode: focus,
            child: TextFormField(
              inputFormatters:isPhones == true ? [
                LengthLimitingTextInputFormatter(10),
              ]: null,
              textInputAction: isLast !=null ? TextInputAction.done :TextInputAction.next,
              focusNode: focus,
              textCapitalization:isName ? TextCapitalization.words : TextCapitalization.none,
              keyboardType: isNumber ?const TextInputType.numberWithOptions(signed: true, decimal: true) :  TextInputType.text,
              validator:isRequired == true ? (val){
                if(val!.isEmpty){
                  return 'please provide $label';
                }else if(isPhones == true){
                  if(val.length != 10){
                    return 'please provide 10 digit number';
                  }
                }else if(isName)
                  if(val.length < 4){
                    return 'please provide minimum 4 characters';
                  }
                return null;
              } :(val){
                return null;
              },
              cursorColor: Colors.black,
              controller: controller,
              style:  TextStyle(fontSize: 13.sp, color: Color(0xFF6B6B6B).withOpacity(0.8),  fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                errorStyle:  TextStyle(fontSize: 13.sp),
                hintText: hint,
                errorBorder:InputBorder.none,
                hintStyle: formHintStyle,
                border: const OutlineInputBorder(
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding _padding(String label) {
    return Padding(
        padding:  const EdgeInsets.symmetric(vertical: 4),
        child: Text.rich(
          TextSpan(
            text: label,
            style:  TextStyle(fontSize: 13.sp, color: Color(0xFF6B6B6B).withOpacity(0.8),  fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1),
          ),
        )
    );
  }

  Text _buildAutoSizeText1() {
    return  Text(
      'छैन ',
      style: TextStyle(fontSize: 20.sp),
    );
  }

  Text _buildAutoSizeText() {
    return  Text(
      'छ ',
      style: TextStyle(fontSize: 20.sp),
    );
  }


}


final formHintStyle = TextStyle(fontSize: 12.sp, color: Colors.grey.withOpacity(0.8),
    fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1);