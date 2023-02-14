import 'package:palikaa/features/pratinidhi/data/user_data.dart';
import 'package:palikaa/export_pages.dart';






class KarmaChari extends StatelessWidget {
final List<Pratinidhis> karmas;
const KarmaChari(this.karmas, {super.key});

@override
Widget build(BuildContext context) {

  return Scaffold(
    body: Padding(
        padding:  EdgeInsets.only(top: 0.h,),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
           gapH12,
            _buildDivider(label: 'प्रमुख शासकीय अधिकृत '),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: _buildContainer(
                      name: karmas[0].username,
                      grade: karmas[0].grade,
                      imagePath: karmas[0].imagePath,
                    context: context
                  ),
                ),
              ),
            ),

            _buildDivider(label: karmas[1].grade),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: _buildContainer(
                    name: karmas[1].username,
                    grade:karmas[1].grade,
                    imagePath: karmas[1].imagePath,
                    context: context
                ),
              ),
            ),


            _buildDivider(label: karmas[2].grade),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: _buildContainer(
                    name: karmas[2].username,
                    grade:karmas[2].grade,
                    imagePath: karmas[2].imagePath,
                    context: context
                ),
              ),
            ),

          ],
        )

    ),

  );
}

SizedBox _buildContainer({required String name, required String grade,
  required String imagePath, required BuildContext context}) {
  return SizedBox(
    height: 170.w,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 11.h,),
        Text(name,
          style: TextStyles.labelTextStyle
        ),
        gapH2,
        Text(grade,
          style: TextStyles.jStyle
        ),
      ],
    ),
  );
}

Padding _buildDivider({required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: [
        _expanded(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(label, style: TextStyle(fontSize: 13.sp, fontFamily: FontStyles.poppins),),
        ),
        _expanded(),
      ],
    ),
  );
}

Expanded _expanded() {
  return const Expanded(
        child: Divider(
          thickness: 1,
          color:primaryColor,
        ),
      );
}
}



