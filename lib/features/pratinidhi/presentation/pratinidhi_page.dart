import 'package:palikaa/features/pratinidhi/data/user_data.dart';
import 'package:palikaa/export_pages.dart';

class Pratinidhi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 0.h),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.w),
              height: 170.w,
              width: 170.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(paPratinidhi[0].imagePath),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(
                    paPratinidhi[0].username,
                    style: TextStyles.labelTextStyle
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    paPratinidhi[0].grade,
                    style: TextStyles.jStyle
                  ),
                ],
              ),
            ),
            _buildDivider(label: 'कार्य पालिका '),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: _buildContainer(
                        name: paPratinidhi[0].username,
                        grade: paPratinidhi[0].grade,
                        imagePath: paPratinidhi[0].imagePath, context: context),
                  ),
                  Spacer(),
                  _buildContainer(
                      name: paPratinidhi[1].username,
                      grade: paPratinidhi[1].grade,
                      imagePath: paPratinidhi[1].imagePath,context: context),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),

            _buildDivider(label: 'वडा न १ '),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Align(
                alignment: Alignment.topLeft,
                child: _buildContainer(
                    name: wadaPratinidhi[0].username,
                    grade: 'अध्यक्ष',
                    imagePath: wadaPratinidhi[0].imagePath, context: context),
              ),
            ),
            _buildDivider(label: 'वडा न २ '),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Align(
                alignment: Alignment.topLeft,
                child: _buildContainer(
                    name: wadaPratinidhi[1].username,
                    grade: 'अध्यक्ष',
                    imagePath: wadaPratinidhi[1].imagePath, context: context),
              ),
            ),

          ],
        ));
  }

  Container _buildContainer(
      {required String name,
      required String grade,
      required String imagePath, required BuildContext context}) {
    return Container(
      height: 170.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            name,
            style:  TextStyles.labelTextStyle
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            grade,
            style:  TextStyles.jStyle
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
          Expanded(
            child: Divider(
              thickness: 1,
              color: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              label,
              style: TextStyle(fontSize: 13.sp, fontFamily: FontStyles.poppins),
            ),
          ),
          Expanded(
              child: Divider(
            thickness: 1,
            color: primaryColor,
          ))
        ],
      ),
    );
  }
}
