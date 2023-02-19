


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:palikaa/export_pages.dart';

import '../features/Janta/darta/presentation/forms/marriage/suchakko_bibaran.dart';

class TextFieldWidget extends StatelessWidget {

  String labelName;
  String name;
  String hintName;
  bool? isTrue;
  bool? isNumeric;
  int? lines;
  String validation;
  bool? isTitle;

  TextFieldWidget({required this.labelName, required this.hintName, required this.name, required this.validation,this.isTrue, this.isNumeric, this.lines});

  @override
  Widget build(BuildContext context) {


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

              ) : validation == "rowname" ? FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(errorText: "required"),
                    FormBuilderValidators.minLength(5, errorText: "5 character"),

                  ]

              ):
              validation == "citizenship" ? FormBuilderValidators.compose(
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
                  hintText: hintName,
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
                fontSize: isHeading == null ?  13.sp : 18.sp,
                color: isTrue == null ? Colors.black : Colors.grey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 1
            ),
          ),
        )
    );
  }
}
