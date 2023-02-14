



import '../../../../export_pages.dart';

class EnKanunPage extends StatelessWidget {
  bool isN;
  EnKanunPage(this.isN);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 6.h),
        child: ListView.builder(
          itemCount: _pdfData.length,
          itemBuilder: (context, i) {
            return EnkanunComponent(isN ? _pdfData[i] : _pdfData.reversed.toList()[i], context);
          },
        ),
      ),
    );
  }
}

Widget EnkanunComponent(PdfModel data, BuildContext context) {
  return InkWell(
    onTap: (){
      context.pushNamed(AppRoute.pdfPage.name, extra: data.pdfPath);
    },
    child: Container(
      height:  69.h,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Card(
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
          height: 60.w,
          width: 60.w,
              decoration: BoxDecoration(
                color: Color(0XFFC7EDFD),
              ),
              child: Image.asset('assets/info_icons/pdf.png'),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Text(
                data.pdfTitle,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF414141)
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}


class PdfWidget extends StatelessWidget {
final String pdfPath;
PdfWidget(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SfPdfViewer.asset(pdfPath, )
        )
    );
  }
}

final _pdfData = [
  PdfModel(pdfPath: 'assets/karnali/sample/karyabibhajan2.pdf', pdfTitle: 'कार्य बिभाजन नियमावली दोश्रो संशोधन समेत मिलाइएको'),
  PdfModel(pdfPath: 'assets/karnali/sample/karyabibhajan2.pdf', pdfTitle: 'कार्य विभाजन दोस्रो संशोधन नियमावली २०७४'),
  PdfModel(pdfPath: 'assets/karnali/sample/karyabibhajan3.pdf', pdfTitle: 'कार्य विभाजन तेस्रो शंसोधन नियमावली २०७४'),
  PdfModel(pdfPath: 'assets/karnali/sample/karyasampadan.pdf', pdfTitle: 'कार्य सम्पादन नियमावली'),
  PdfModel(pdfPath: 'assets/karnali/sample/karyasampadan2.pdf', pdfTitle: 'कार्य सम्पादन दोस्रो संशोधन नियमावली २०७४'),
  PdfModel(pdfPath: 'assets/karnali/sample/karyasampadan3.pdf', pdfTitle: 'कार्य सम्पादन तेस्रो शंसोधन नियमावली २०७४'),
  PdfModel(pdfPath: 'assets/karnali/sample/publicwrite.pdf', pdfTitle: 'सार्वजनिक लिखत प्रमाणिकरण नियमावली'),
];

class PdfModel{
  final String pdfPath;
  final String pdfTitle;
  PdfModel({required this.pdfPath, required this.pdfTitle});


}