import 'package:palikaa/export_pages.dart';




class AppAssets {

//dash data
  static const rara = 'assets/karnali/dashboard/rara.jpg';
  static const phoksundo = 'assets/karnali/dashboard/phok.jpg';
  static const jajarkot = 'assets/karnali/dashboard/Darbaar_2.jpg';
  static const bulbule = 'assets/karnali/dashboard/bubultaal.jpg';
  static const sunset = 'assets/karnali/dashboard/sunset.jpg';
  static const durbar = 'assets/karnali/dashboard/Darbaar_2.jpg';
  static const logo = 'assets/icons/logo_2.png';


  //events data
  static const events1 = 'assets/karnali/events/Dam-site-of-Upper-Karnali-hydropower-1.jpg';
  static const events2 = 'assets/karnali/events/karnali-river-rafting-2.jpg';
  static const events3 = 'assets/karnali/events/PM119_team.jpg';
  static const events4 = 'assets/karnali/events/Karnali-health-science-academy-new.jpg';
  static const events5 = 'assets/karnali/events/COVID-19-Vaccination-Coverage-in-Gandaki-Province.jpg';
  static const events6 = 'assets/karnali/events/flood.jpg';

//business image
  static const b1 = 'assets/karnali/business/bulbule.jpg';
  static const b2 = 'assets/karnali/business/sunlightjpg.jpg';
  static const b3 = 'assets/karnali/business/pauwa.jpg';
  static const b4 = 'assets/karnali/business/shantiHome.jpg';
  static const b5 = 'assets/karnali/business/junglecamp.jpg';

  //partners data
  static const dev1 = 'assets/karnali/business/socialdevelop.jpg';
  static const dev2 = 'assets/karnali/business/IndustryTourism.jpg';
  static const dev3 = 'assets/karnali/business/agriculture.jpg';
  static const dev4 = 'assets/karnali/business/international.png';
  static const dev5 = 'assets/karnali/business/wfp.png';


  //local products
  static const pro1 = 'assets/karnali/sample/JumliMarsirice1614855754_1200.jpg';
  static const pro2 = 'assets/karnali/sample/Jumla_Karnali_apple-farming_20191230085906.jpg';
  static const pro3 = 'assets/karnali/sample/karnali-brown-1-1.jpg';
  static const pro4 = 'assets/karnali/sample/sbb_8_1_.jpg';
  static const pro5 = 'assets/karnali/sample/100-percent-organic-honey-jajarkot.png';
  static const pro6 = 'assets/karnali/sample/Dk4LptOX4AAnvOW.jpg';

//digital profile

  static const population = 'assets/waling_icons/population.png';
  static const ghardhru = 'assets/waling_icons/ghardhuri.png';
  static const matribhasa = 'assets/widget_icons/bhasa.png';
  static const rest = 'assets/waling_icons/sauchalaya.png';
  static const sacharta = 'assets/waling_icons/saachharta.png';
  static const bijuli = 'assets/waling_icons/saachharta.png';
  static const khanepani = 'assets/waling_icons/saachharta.png';
  static const enjine = 'assets/waling_icons/saachharta.png';

  //iconData
  static const namaskar = 'assets/icons/5.png';
  static const janagunaso = 'assets/icons/7.png';
  static const odapatra = 'assets/icons/8.png';
  static const pradeshJankari = 'assets/icons/9.png';
  static const pradeshParichaya = 'assets/icons/10.png';
  static const sewa = 'assets/icons/11.png';
  static const karnaliMancha = 'assets/icons/12.png';
  static const aakashmikSewa = 'assets/icons/13.png';




  static const gharjagga = 'assets/citizenIcon/gharjagga.png';
  static const nayaSamiti = 'assets/citizenIcon/Group 1030.png';
  static const sewaSubidha = 'assets/citizenIcon/Group 9.png';
  static const byapaar = 'assets/citizenIcon/Byapaa.png';
  static const karKanun = 'assets/citizenIcon/tax.png';
  static const education = 'assets/citizenIcon/edu.png';
  static const basobas = 'assets/citizenIcon/basobas.png';
  static const others = 'assets/citizenIcon/others.png';

  static const allTaskIcons = [
    population,
    ghardhru,
    matribhasa,
    rest,
    sacharta,
    bijuli,
    events1,
    events2,
    events3,
    events4,
    events5,
    events6,
    b1,
    b2,
    b3,
    b4,
    b5,
    dev1,
    dev2,
    dev3,
    dev4,
    logo,
    dev5,
    pro1,
    pro2,
    pro3,
    pro4,
    pro5,
    pro6,
    khanepani,
    enjine,
    namaskar,
    janagunaso,
    odapatra,
    pradeshJankari,
    pradeshParichaya,
    sewa,
    karnaliMancha,
    aakashmikSewa,
    gharjagga,
    nayaSamiti,
    sewaSubidha,
    byapaar,
    karKanun,
    education,
    basobas,
    others
  ];

  static Future<void> preloadImages(BuildContext context) async {
    final assets = [
      ...allTaskIcons
    ];
    for (final asset in assets) {
      await precacheImage(AssetImage(asset), context);
    }
  }
}