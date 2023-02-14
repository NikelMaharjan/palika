import 'package:dropdown_search/dropdown_search.dart';
import '../../../../../../common_widgets/form_widgets.dart';
import 'package:ensure_visible_when_focused/ensure_visible_when_focused.dart';
import '../../../../../../export_pages.dart';
import '../../../data/dummy_data.dart';
import '../../providers/marriage_provider.dart';
import 'man_bibaran.dart';
import 'package:intl/intl.dart';

class BibahaBibaran extends StatefulWidget {


  @override
  State<BibahaBibaran> createState() => _BibahaBibaranState();
}

class _BibahaBibaranState extends State<BibahaBibaran> {
  final _form = GlobalKey<FormState>();

  final dobController = TextEditingController();
  final dob1Controller = TextEditingController();
  final pToleController = TextEditingController();
  final pWardController = TextEditingController();
  final sadakController = TextEditingController();
  final houseController = TextEditingController();
  final tToleController = TextEditingController();
  final bideshController = TextEditingController();
  final deshController = TextEditingController();

  final String dateType = 'B.S.';
  final String dateType1 = 'A.D.';

  FocusNode pToleFocus = FocusNode();
  FocusNode houseFocus = FocusNode();
  FocusNode sadakFocus = FocusNode();
  FocusNode bideshFocus = FocusNode();
  FocusNode deshFocus = FocusNode();
  FocusNode pWardFocus = FocusNode();
  FocusNode tWardFocus = FocusNode();


  Province pzone = const Province(id: 0, en_name: '', np_name: '');

  Municipality pMunici = const Municipality(id: 0, en_name: '', np_name: '');

  District pdistrict = const District(id: 0, en_name: '', np_name: '');
  Ward pWard = const Ward(id: 0, en_name: '', np_name: '', number: '');
  bool socialCheck = false;
  bool socialUnCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (context, ref,child) {
            final mode = ref.watch(modeProvider);
            return Form(
              key: _form,
              autovalidateMode: mode,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 17),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _headPadding('विवाहको विवरण'),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _padding('विवाह को किसिम: '),
                                gapH10,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Row(
                                        children: [
                                          _buildAutoSizeText('सामाजिक परम्परा अनुसार '),
                                          const Spacer(),
                                          Checkbox(
                                            value: socialCheck,
                                            onChanged: (val) {
                                              setState(() {
                                                socialCheck = val!;
                                                socialUnCheck = false;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    gapH8,
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                      child: Row(
                                        children: [
                                          _buildAutoSizeText1('विवाह दर्ता एन २०१८ अनुसार '),
                                          const   Spacer(),
                                          Checkbox(
                                            value: socialUnCheck,
                                            onChanged: (val) {
                                              setState(() {
                                                socialUnCheck = val!;
                                                socialCheck = false;
                                              });
                                            },
                                          ),

                                        ],
                                      ),

                                    ),
                                    SizedBox(height: 7,),
                                    if (state.errorText != null)
                                      Align(
                                        alignment: Alignment.bottomRight,
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
                            if (!socialCheck && !socialUnCheck) {
                              return 'बक्समा क्लिक गर्नुहोस्';
                            } else {
                              return null;
                            }
                          },

                        ),

                        gapH10,
                        DateFormWidgets(label: 'विवाहभयको मिति वि.सं मा : ',
                            hint: '$dateType(DD-MM-YYYY)',
                            controller: dobController
                        ),
                        DateFormWidgets(label: 'विवाहभयको मिति इ.सं मा : ',
                            hint: '$dateType1(DD-MM-YYYY)',
                            controller: dob1Controller
                        ),

                        gapH14,

                        _padding('विवाह सम्पन्न भएको स्थान:'),
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
                                enabled: pdistrict.np_name.isEmpty ? false : true,
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

                        gapH10,
                        _buildWidget(
                          isNumber: false,
                          hint: 'सडक मार्ग   ',
                          label: 'सडक मार्ग:  ',
                          controller: sadakController,
                          focus: sadakFocus,
                          isLast: true,
                          isEmail: false,
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
                          isEmail: false,
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
                          isLast: true,
                          isEmail: false,
                          isName: false,
                          isRequired: true,
                        ),
                        gapH10,
                        _buildWidget(
                            isNumber: false,
                            hint: 'विवाहभयको ठेगाना ',
                            label: 'विवाहभयको ठेगाना: ',
                            controller:deshController,
                            focus: deshFocus,
                            isEmail: false,
                            isLast: true,
                            isName: true,
                            isRequired: true
                        ),
                        gapH10,
                        _buildWidget(
                          isNumber: false,
                          hint: 'विदेशमा विवाहभयमा ठेगाना ',
                          label: 'विदेशमा विवाहभयमा ठेगाना: ',
                          controller: bideshController,
                          focus: bideshFocus,
                          isEmail: false,
                            isLast: true,
                          isName: true,
                            isRequired: false
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20, top: 30),
                          child: ElevatedButton(
                              onPressed: () async{
                                _form.currentState!.save();
                                if(_form.currentState!.validate()) {
                                FocusScope.of(context).unfocus();

                                final date1 = dobController.text.substring(3, 5);
                                final date2 = dobController.text.substring(6, 10);
                               final date = '$date2/$date1/${dobController.text.substring(0, 2)}';
                                final dat1 = dob1Controller.text.substring(3, 5);
                                final dat2 = dob1Controller.text.substring(6, 10);
                                final dat = '$dat2/$dat1/${dob1Controller.text.substring(0, 2)}';
                                final newData = {
                                  "is_social_tradtion": socialCheck ? 1: 0,
                                  "is_law": socialCheck ? 1: 0,
                                  "married_date_bs": date,
                                  "married_date_ad": dat,
                                  "married_ward_id": pWard.id,
                                  "married_street_name": sadakController.text,
                                  "married_tole": pToleController.text.trim(),
                                  "married_house_no": int.parse(houseController.text.trim()),
                                  "married_address_np": deshController.text.trim(),
                                  "married_address_en": deshController.text.trim(),
                                };
                                 ref.read(bibahaProvider.notifier).addData(newData);
                                context.pushNamed(AppRoute.man.name);
                                }else{
                                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    backgroundColor: Colors.pink.shade300,
                                      duration: Duration(seconds: 1),
                                      content: Text('केहि फारम क्षेत्र हरु छुटेको छ !')));
                                  ref.read(modeProvider.notifier).changeMode(AutovalidateMode.onUserInteraction);
                                }

                              },
                              child:  Text('Next', style: TextStyle(color: Colors
                                  .white, fontSize: 17.sp),)
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }

  Widget  _buildWidget({
    required String label,
    required TextEditingController controller,
    required bool isEmail,
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
        gapH14,
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
              keyboardType: isNumber ?const TextInputType.numberWithOptions(signed: true, decimal: true) : isEmail ? TextInputType.emailAddress: TextInputType.text,
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
                if(isEmail){
                  if(val!.isNotEmpty){
                    if(!val.contains('@')){
                      return 'please provide valid email';
                    }
                  }

                }
                return null;
              },
              cursorColor: Colors.black,
              controller: controller,
              style:  TextStyle(fontSize: 13.sp, color: Color(0xFF6B6B6B).withOpacity(0.8),  fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                errorStyle: const TextStyle(fontSize: 14),
                hintText: hint,
                // errorBorder:const OutlineInputBorder(
                //     borderSide: BorderSide(color: Colors.red)
                // ),
                hintStyle: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8),
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1),
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
            style:  TextStyle(fontSize: 14.sp, color: Color(0xFF6B6B6B).withOpacity(0.8),  fontFamily: 'Poppins', fontWeight: FontWeight.w600, letterSpacing: 1),
          ),
        )
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

  String? _val(val) {
    if (val == null) {
      return 'Field can\'t be empty';
    }
    return null;
  }

  Text _buildAutoSizeText1(label) {
    return  Text(
      label,
      style: TextStyle(fontSize: 15.5.sp),
    );
  }

  Text _buildAutoSizeText(label) {
    return Text(
      label,
      style: TextStyle(fontSize: 15.5.sp),
    );
  }
}
