import 'package:palikaa/features/Janta/sewa/presentation/sifarish_form.dart';

import '../../../../export_pages.dart';
import 'documents_page.dart';





class NagarikPratilipiPage extends StatefulWidget {


  @override
  State<NagarikPratilipiPage> createState() => _NagarikPratilipiPageState();
}

class _NagarikPratilipiPageState extends State<NagarikPratilipiPage> {

  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;
final styles =  TextStyle(
  fontSize: 12.sp,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500,
  color: Color(0XFF00A651)
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Nagarik Pratilipi Sifarish'),
        body: Theme(
          data: ThemeData(
              colorScheme: ColorScheme.light(
                  primary: primaryColor
              )
          ),
          child: EnhanceStepper(
            horizontalTitlePosition: HorizontalTitlePosition.bottom,
            horizontalLinePosition: HorizontalLinePosition.top,
            type: stepperType,
            currentStep: _currentStep,
            onStepTapped: (step) => tapped(step),
            onStepContinue:  continued,
            onStepCancel: cancel,
              controlsBuilder: (BuildContext context, ControlsDetails controls){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 65.h,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(155.w, 40.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          backgroundColor: primaryColor,
                        ),
                        onPressed: controls.onStepContinue,
                        child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 15.sp),)),
                    SizedBox(width: 8,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(155.w, 40.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                         backgroundColor: Colors.grey
                        ),
                        onPressed: controls.onStepCancel,
                        child: Text('Back', style: TextStyle(color: Colors.white, fontSize: 15.sp),)),
                  ],
                );
              },
            steps: [
              EnhanceStep(
                title:  Text('Personal Info', style: styles),
                content: Container(
                    height: width < 382 ? 550.h :  600.h,
                    child:SingleChildScrollView(
                      child: SifarishForm(),
                    )),
                isActive: _currentStep >= 0,
                state: _currentStep >= 0 ?
                StepState.complete : StepState.disabled,
              ),
              EnhanceStep(
                title: Text('Documents',   style: styles,),
                content: Container(
                    height: width < 382 ? 550.h :  600.h,
                  child: DocScreen()
                ),
                isActive: _currentStep >= 0,
                state: _currentStep >= 1 ?
                StepState.complete : StepState.disabled,
              ),
              EnhanceStep(
                title:  Text('Payment', style: styles),
                content: Container(
                    height: width < 382 ? 550.h :  600.h,
                    child: DocScreen()
                ),
                isActive:_currentStep >= 0,
                state: _currentStep >= 2 ?
                StepState.complete : StepState.disabled,
              ),



            ],
          ),
        ),
    );
  }



  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
    setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }

}
