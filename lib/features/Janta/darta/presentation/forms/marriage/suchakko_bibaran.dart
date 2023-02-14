import 'package:dropdown_search/dropdown_search.dart';
import '../../../../../../common_widgets/form_widgets.dart';
import 'package:ensure_visible_when_focused/ensure_visible_when_focused.dart';
import '../../../../../../export_pages.dart';
import '../../../data/dummy_data.dart';
import '../../../data/dummy_data1.dart';
import '../../providers/marriage_provider.dart';
import '../../providers/photo_provider.dart';

class SuchakBibaran extends StatefulWidget {


  @override
  State<SuchakBibaran> createState() => _SuchakBibaranState();
}

class _SuchakBibaranState extends State<SuchakBibaran> {

  final _form = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final fullNameController = TextEditingController();
  final tharController = TextEditingController();
  final dobController = TextEditingController();
  final dob1Controller = TextEditingController();
  final occupationController = TextEditingController();
  final citizenNumberController = TextEditingController();
  final bideshAddressController = TextEditingController();
  final bideshNameController = TextEditingController();
  final passportController = TextEditingController();
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
  FocusNode fullNameFocus = FocusNode();
  FocusNode tharFocus = FocusNode();
  FocusNode citiFocus = FocusNode();
  FocusNode citiAddressFocus = FocusNode();
  FocusNode citiByFocus = FocusNode();
  FocusNode pToleFocus = FocusNode();
  FocusNode houseFocus = FocusNode();
  FocusNode sadakFocus = FocusNode();
  FocusNode tToleFocus = FocusNode();
  FocusNode pWardFocus = FocusNode();
  FocusNode tWardFocus = FocusNode();

  LiteracyTypes literacy = LiteracyTypes.empty();
  MatriTypes matrecy = MatriTypes.empty();
  Province pzone = const Province(id: 0, en_name: '', np_name: '');
  Ward pWard = const Ward(id: 0, en_name: '', np_name: '', number: '');
  Municipality pMunici = const Municipality(
      id: 0, en_name: '', np_name: '');

  District pdistrict = const District(id: 0, en_name: '', np_name: '');
  District p1district = const District(id: 0, en_name: '', np_name: '');



bool isLoad = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (context, ref,child) {
            final mode = ref.watch(modeProvider3);
            final data = ref.watch(bibahaProvider);
            final  w = data.reduce((a,b){
              a.addAll(b);
              return a;
            });
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
                            _headPadding('सूचक को विवरण :'),
                            _buildWidget(
                                isNumber: false,
                                hint: 'नाम:',
                                label: 'नाम:',
                                focus: nameFocus,
                                isName: true,
                                isLast: true,
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
                            _padding('ठेगाना:'),
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
                                        throw 'something went wrong';
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

                            gapH10,
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

                            _buildWidget(
                                isNumber: true,
                                hint: 'नागरिकता नं:',
                                label: 'नागरिकता नं: ',
                                isName: false,
                                isLast: true,
                                focus: citiFocus,
                                controller: citizenNumberController,
                                isRequired: true
                            ),
                            gapH12,
                            DateFormWidgets(label: 'नागरिकता जारी मिति : ',
                                hint: 'जारी मिति (DD-MM-YYYY)',
                                controller: dobController
                            ),

                            _buildColumn(
                              'जारी गरिएको जिल्ला :',
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: DropdownSearch<District>(
                                     validator: _val,
                                    autoValidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    asyncItems: (String filter) async {
                                      try{
                                        final response = await Dio().get(
                                          "https://test.palikaa.org/api/districts",
                                          queryParameters: {"filter": 'np_name'},
                                        );
                                        final models = (response.data as List).map((e) => District.fromJson(e)).toList();
                                        return models;
                                      }on DioError catch(err){
                                        throw 'डाटा उपलब्ध छैन अर्को नगरपालिका चयन गर्नुहोस्';
                                      }

                                    },
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
                                hint: 'बिदेशी भएमा नागरिकता नं:',
                                label:  'बिदेशी भएमा नागरिकता नं:',
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
                            gapH12,
                            // DateFormWidgets(label: 'फारम भरेको मिति : ',
                            //     hint: 'फारम भरेको मिति (DD-MM-YYYY)',
                            //     controller: dob1Controller
                            // ),
                            Container(
                              padding: EdgeInsets.only(bottom: 20, top: 30),
                              child: ElevatedButton(
                                  onPressed:isLoad? null: () async{
                                    _form.currentState!.save();
                                    if(_form.currentState!.validate()) {
                                      FocusScope.of(context).unfocus();
                                    final date1 = dobController.text.substring(3, 5);
                                    final date2 = dobController.text.substring(6, 10);
                                    final date = '$date2/$date1/${dobController.text.substring(0, 2)}';
                                      final formData = FormData.fromMap({
                                        "is_social_tradtion": w["is_social_tradtion"],
                                        "is_law": w["is_law"],
                                        "married_date_bs": w["married_date_bs"],
                                        "married_date_ad": w["married_date_ad"],
                                        "married_ward_id": w["married_ward_id"],
                                        "married_street_name": w["married_street_name"],
                                        "married_tole": w["married_tole"],
                                        "married_house_no": w["married_house_no"],
                                        "married_address_np": w["married_address_np"],
                                        "married_address_en": w["married_address_en"],
                                        'groom_issued_district_id': w['groom_issued_district_id'],
                                        'groom_citizenship_no': w['groom_citizenship_no'],
                                        'groom_citizenship_country': w['groom_citizenship_country'],
                                        'groom_birth_country': w['groom_birth_country'],
                                        'groom_house_no': w['groom_house_no'],
                                        'groom_tole': w['groom_tole'],
                                        'groom_street_name': w['groom_street_name'],
                                        'groom_ward_id': w['groom_ward_id'],
                                        'groom_full_name_np': w['groom_full_name_np'],
                                        'groom_full_name_en': w['groom_full_name_en'],
                                        'groom_birth_date': w['groom_birth_date'],
                                        'is_groom_married': w['is_groom_married'],
                                        'groom_education_status': w['groom_education_status'],
                                        'groom_occupation': w['groom_occupation'],
                                        'groom_religion': w['groom_religion'],
                                        'groom_mother_tongue': w['groom_mother_tongue'],
                                        'groom_citizenship_date': w['groom_citizenship_date'],
                                        'groom_address': w['groom_address'],
                                        'groom_grand_father_en': w['groom_grand_father_en'],
                                        'groom_grand_father_np':  w['groom_grand_father_np'],
                                        'groom_father_name_en': w['groom_father_name_en'],
                                        'groom_father_name_np':  w['groom_father_name_np'],
                                        'groom_mother_name_en': w['groom_mother_name_en'],
                                        'groom_mother_name_np': w['groom_mother_name_np'],
                                        'groom_photo': await MultipartFile.fromFile(photoData.image1!.path, filename: 'groom_photo'),
                                        'bride_issued_district_id': w['groom_issued_district_id'],
                                        'bride_citizenship_no': w['bride_citizenship_no'],
                                        'bride_citizenship_country': w['bride_citizenship_country'],
                                        'bride_birth_country': w['bride_birth_country'],
                                        'bride_house_no': w['bride_house_no'],
                                        'bride_tole': w['bride_tole'],
                                        'bride_street_name': w['bride_street_name'],
                                        'bride_ward_id': w['bride_ward_id'],
                                        'bride_full_name_np': w['bride_full_name_np'],
                                        'bride_full_name_en': w['bride_full_name_en'],
                                        'bride_birth_date': w['bride_birth_date'],
                                        'is_bride_married': w['is_bride_married'],
                                        'bride_education_status': w['bride_education_status'],
                                        'bride_occupation': w['bride_occupation'],
                                        'bride_religion': w['bride_religion'],
                                        'bride_mother_tongue': w['bride_mother_tongue'],
                                        'bride_citizenship_date': w['bride_citizenship_date'],
                                        'bride_address': w['bride_address'],
                                        'bride_grand_father_en': w['bride_grand_father_en'],
                                        'bride_grand_father_np':  w['bride_grand_father_np'],
                                        'bride_father_name_en': w['bride_father_name_en'],
                                        'bride_father_name_np':  w['bride_father_name_np'],
                                        'bride_mother_name_en': w['bride_mother_name_en'],
                                        'bride_mother_name_np': w['bride_mother_name_np'],
                                        'bride_photo': await MultipartFile.fromFile(photoData.image2!.path, filename: 'bride_photo'),
                                        'witness_citizenship_date': date,
                                        'witness_citizenship_no': citizenNumberController.text.trim(),
                                        'witness_citizenship_country': 'nepal',
                                        'witness_birth_country': 'nepal',
                                        'witness_house_no': houseController.text.trim(),
                                        'witness_tole': pToleController.text.trim(),
                                        'witness_street_name': sadakController.text.trim(),
                                        'witness_ward_id': pWard.id,
                                        'witness_full_name_en': nameController.text.trim(),
                                        'witness_full_name_np': nameController.text.trim(),
                                        "office_ward_id": w['bride_ward_id']
                                      });
                                      final dio = Dio();
                                      try{
                                        setState(() {
                                          isLoad = true;
                                        });
                                        final response = await dio.post('https://test.palikaa.org/api/notice/marriage', data: formData,
                                        options: Options(
                                            headers: {
                                              'Content-Type': 'application/json',
                                              'Accept': 'application/json',
                                              HttpHeaders.authorizationHeader: 'Bearer ',
                                            },

                                        )
                                        );
                                        setState(() {
                                          isLoad = false;
                                        });

                                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                            duration: const Duration(seconds: 1),
                                            backgroundColor: Colors.green,
                                            content: Text('successfully registered', style: TextStyle(fontSize: 16.sp),)
                                        ));
                                        await Future.delayed(Duration(seconds: 1));
                                        context.goNamed(AppRoute.home.name);

                                      }on DioError catch (err){
                                        print(err.response);
                                        setState(() {
                                          isLoad = false;
                                        });

                                        Exceptions.failureShow(context, '');
                                      }


                                    }else{
                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                          backgroundColor: Colors.pink.shade300,
                                          duration: Duration(seconds: 1),
                                          content: Text('केहि फारम क्षेत्र हरु छुटेको छ !')));
                                      ref.read(modeProvider3.notifier).changeMode(AutovalidateMode.onUserInteraction);
                                    }

                                  },
                                  child: isLoad ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('Please wait...'),
                                      gapH20,
                                      CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    ],
                                  ): Text('submit', style: TextStyle(color: Colors
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
                errorBorder: InputBorder.none,
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




}


final formHintStyle = TextStyle(fontSize: 12.sp, color: Colors.grey.withOpacity(0.8),
    fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1);