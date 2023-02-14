
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/bidhut_jadan_papers.dart';
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/bidhut_namsari_papers.dart';
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/khanepani_jadan_papers.dart';
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/khanepani_namsari_papers.dart';
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/nata_pramanit_papers.dart';
import 'package:palikaa/features/Janta/oda_patra/presentation/papers/rahadani_papers.dart';

import '../../../../export_pages.dart';
import 'important_papers_page.dart';

class GharJaggaPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Ghar/Jagga/Bato'),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.h),
            color:  whiteColor,
            child: ExpansionTile(
              initiallyExpanded: true,
              collapsedBackgroundColor: whiteColor,
              collapsedTextColor: primaryColor,
              textColor: whiteColor,
              backgroundColor: primaryColor,
              collapsedIconColor: primaryColor,
              iconColor: whiteColor,
              title: Text(
                'नागरिकता प्रमाणपत्रको सिफारिस',
                style: _textStyle(),
              ),
              children: [
                ImportantPapers(),
              ],
            ),
          ),
         SizedBox(height: 8.h,),
          _buildColumn(label: 'नाता प्रमाणित सिफारिस', papers: NataPramanitPapers()),
           _buildColumn(label: 'खानेपानी जडान सम्बन्धी सिफारिस', papers: KhanePaniJadanPapers()),
           _buildColumn(label: 'खानेपानी नामसारी सम्बन्धी सिफारिस', papers: KhanePaniNamsariPapers()),
           _buildColumn(label: 'बिधुत जडान सम्बन्धी सिफारिस', papers: BidhutJadanPapers()),
           _buildColumn(label: 'विधुत नामसारी सम्बन्धी सिफरिस', papers: BidhutNamsariPapers()),
           _buildColumn(label: 'राहदानी सिफरिस', papers: RahadaniPapers()),

        ],
      ),
    );
  }

  Column _buildColumn({required String label,required Widget papers}) {
    return Column(
          children: [
            Container(
              color:  whiteColor,
              child: ExpansionTile(
                collapsedTextColor: primaryColor,
                textColor: whiteColor,
                collapsedIconColor: primaryColor,
                backgroundColor: primaryColor,
                iconColor: whiteColor,
                title: Text(
                  label,
                  style: _textStyle(),
                ),
                children: [
                  papers
                ],
              ),
            ),
            SizedBox(height: 8.h,),
          ],
        );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontFamily: FontStyles.poppins,
      fontSize: 14.sp,
      fontWeight: FontStyles.mediumBold,
                );
  }
}
