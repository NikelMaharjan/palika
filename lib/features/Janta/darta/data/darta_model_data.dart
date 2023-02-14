import '../../../../export_pages.dart';


const List dartaData = [

  {
    'label': 'Birth Page',
    'bgColor': '0xFFEBF5F3',
    'iconPath': 'assets/citizenIcon/basobas.png',
    'borderColor': '0xFFC7E0DB',
    'styles': '0xFF898989',
    'iconColor': '0xFF44A64B'
  },


  {
    'label': 'Death Page',
    'bgColor': '0xFFEBF5F3',
    'iconPath': 'assets/citizenIcon/basobas.png',
    'borderColor': '0xFFC7E0DB',
    'styles': '0xFF898989',
    'iconColor': '0xFF44A64B'
  },


  {
    'label': 'Migration Page',
    'bgColor': '0xFFEBF5F3',
    'iconPath': 'assets/citizenIcon/basobas.png',
    'borderColor': '0xFFC7E0DB',
    'styles': '0xFF898989',
    'iconColor': '0xFF44A64B'
  },

  {
    'label': 'Migration Family Page',
    'bgColor': '0xFFEBF5F3',
    'iconPath': 'assets/citizenIcon/basobas.png',
    'borderColor': '0xFFC7E0DB',
    'styles': '0xFF898989',
    'iconColor': '0xFF44A64B'
  },

  {
    'label': 'Bibaha Suchana',
    'bgColor': '0xFFEBF5F3',
    'iconPath': 'assets/citizenIcon/gharjagga.png',
    'borderColor': '0xFFC7E0DB',
    'styles': '0xFF898989',
    'iconColor': '0xFF44A64B'
  },

  {
    'label': 'Panjikaran',
    'bgColor': '0xFFFFE5CC',
    'iconPath': 'assets/citizenIcon/Group 1030.png',
    'borderColor': '0xFFFAD3AE',
    'styles': '0xFF898989',
    'iconColor': '0xFFD66400'
  },
  {
    'label': 'Sewa/Subidha',
    'bgColor': '0xFFC7EDFD',
    'iconPath': 'assets/citizenIcon/Group 9.png',
    'borderColor': '0xFFACD8EB',
    'styles': '0xFF898989',
    'iconColor': '0xFF1B83B1'
  },
  {
    'label': 'Byappar/Byawasaya/Udhog',
    'bgColor': '0xFFFBE4FF',
    'iconPath': 'assets/citizenIcon/Byapaa.png',
    'borderColor': '0xFFF2D2F8',
    'styles': '0xFF898989',
    'iconColor': '0xFFDC5AF2'
  },
  {
    'label': 'Kar/Kanun',
    'bgColor': '0xFFE2F6FE',
    'iconPath': 'assets/citizenIcon/tax.png',
    'borderColor': '0xFFB9D8E4',
    'styles': '0xFF898989',
    'iconColor': '0xFF57C7F8'
  },
  {
    'label': 'Education',
    'bgColor': '0xFFE0E0E0',
    'iconPath': 'assets/citizenIcon/edu.png',
    'borderColor': '0xFFDACDCD',
    'styles': '0xFF898989',
    'iconColor': '0xFF121212'
  },
  {
    'label': 'Basobas/Basaisarai',
    'bgColor': '0xFFFBE1E1',
    'iconPath': 'assets/citizenIcon/basobas.png',
    'borderColor': '0xFFEFBBBB',
    'styles': '0xFF898989',
    'iconColor': '0xFFE55A5A'
  },
  {
    'label': 'Others',
    'bgColor': '0xFFE8FEE6',
    'iconPath': 'assets/citizenIcon/others.png',
    'borderColor': '0xFFBCE0B9',
    'styles': '0xFF898989',
    'iconColor': '0xFF007A00'
  },
];

List<ItemModel> dartaList = dartaData.map((e) {
  return  ItemModel(
      label: e['label'],
      iconPath: e['iconPath'],
      borderColor: Color(int.parse(e['borderColor'])),
      bgColor: Color(int.parse(e['bgColor'])),
      onTap: (context){
        context.pushNamed(AppRoute.papers.name);
      },
      styles: TextStyle(
        height: 2.h,
        fontSize: 14.sp,
        fontFamily: FontStyles.poppins,
        fontWeight: FontStyles.mediumBold,
        color: Color(int.parse(e['styles'])),
      ),
      iconColor: Color(int.parse(e['iconColor']))
  );
}).toList();
