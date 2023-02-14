




import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palikaa/common_widgets/snackbar_show.dart';
import 'package:palikaa/constants/app_sizes.dart';
import 'package:palikaa/core/shared/common_provider.dart';
import 'package:palikaa/services/gunaso_services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


import 'features/Janta/darta/presentation/forms/marriage/man_bibaran.dart';


class AddGunasoPage extends ConsumerWidget {



  final _formKey = GlobalKey<FormBuilderState>();



  @override
  Widget build(BuildContext context, ref) {


    final isLoad = ref.watch(loadingProvider);




    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FormBuilderTextField(
                  name: "title",
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(5),

                    ]

                  ),
                  decoration: InputDecoration(
                    hintText: "Title",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    errorStyle:  TextStyle(fontSize: 13.sp),
                    errorBorder:InputBorder.none,
                    hintStyle: formHintStyle,
                    border: const OutlineInputBorder(),
                  )
              ),

              gapH10,


              FormBuilderTextField(
                  name: "description",
                  validator: FormBuilderValidators.required(),
                  decoration: InputDecoration(
                    hintText: "Description",
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    errorStyle:  TextStyle(fontSize: 13.sp),
                    errorBorder:InputBorder.none,
                    hintStyle: formHintStyle,
                    border: const OutlineInputBorder(),
                  )
              ),

              gapH10,

              ElevatedButton(
                  onPressed: isLoad ? null :  () async {


                    ref.read(loadingProvider.notifier).toggle();

                    _formKey.currentState!.save();

                    final formData = _formKey.currentState!.value;


                    if(_formKey.currentState!.validate()){
                      final response = await GunaService.addGunaso(title: formData['title'], description: formData['description']);
                      if(response == "success"){
                        ref.read(loadingProvider.notifier).toggle();
                        print("Success");
                      }

                      if(response != "success"){


                        print("something went wrong");
                        ref.read(loadingProvider.notifier).toggle();


                        Exceptions.failureShow(context, "Something went wrong");

                      }

                    }

              },
                  child: Text("Add"))
            ],
          ),
        ),

      ),
    );
  }
}
