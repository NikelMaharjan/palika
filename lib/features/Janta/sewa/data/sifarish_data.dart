import '../../../../export_pages.dart';
import '../../../../routing/app_routes.dart';

const List sifarishData = [
  {
    'label': 'नागरिकता प्रितलिपि सिफारिश',
    'bgColor': '0xFFFBE4FF',
    'iconPath': 'assets/waling_icons/population.png',
    'borderColor': '0xFFF2D2F8',
    'styles': '0xFF898989',
    'iconColor': '0xFFDC5AF2'
  },
  {
    'label': 'नाता प्रमािणित सिफारिश',
    'bgColor': '0xFFE2F6FE',
    'iconPath': 'assets/waling_icons/population.png',
    'borderColor': '0xFFB9D8E4',
    'styles': '0xFF898989',
    'iconColor': '0xFF57C7F8'
  },
  {
    'label': 'नाबालक परिचय सिफारिश',
    'bgColor': '0xFFE0E0E0',
    'iconPath': 'assets/citizenIcon/edu.png',
    'borderColor': '0xFFDACDCD',
    'styles': '0xFF898989',
    'iconColor': '0xFF121212'
  },
];


List<ItemModel> sifarishList = sifarishData.map((e) {
  return  ItemModel(
      label: e['label'],
      onTap: (context) {
        context.pushNamed(AppRoute.nagarikpratilipi.name);
      },
      bgColor: Color(int.parse(e['bgColor'])),
      iconPath: e['iconPath'],
      borderColor: Color(int.parse(e['borderColor'])),
      styles: TextStyle(
        height: 2.h,
        fontSize: 12.sp,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Color(int.parse(e['styles'])),
      ),
      iconColor: Color(int.parse(e['iconColor']))
  );
}).toList();

