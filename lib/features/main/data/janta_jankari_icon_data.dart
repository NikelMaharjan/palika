import '../../../export_pages.dart';
import '../../../routing/app_routes.dart';




 List<ItemModel> jantaList = [
   ItemModel(
    iconPath: 'assets/icons/5.png',
    label:'Namaskar Mayor Sir',
    splashColor:  Color(int.parse('0xFF44A64B')),
    bgColor: const Color(0xFFEBF5F3),
    borderColor: const Color(0xFFC7E0DB),
      onTap: (context) {
       context.pushNamed(AppRoute.mayor.name);
      }
  ),

   ItemModel(
       iconPath: 'assets/icons/information.png',
       label:'Ghatana Darta',
       splashColor:  Color(int.parse('0xFF44A64B')),
       bgColor: const Color(0xFFEBF5F3),
       borderColor: const Color(0xFFC7E0DB),
       onTap: (context) {
          context.pushNamed(AppRoute.darta.name);
       }
   ),

  ItemModel(
    iconPath: 'assets/icons/6.png',
    label: 'Nayak Samiti',
    splashColor: const Color(0xFFD66400),
    bgColor: const Color(0xFFFFE5CC),
    borderColor: const Color(0xFFFAD3AE), 
      onTap: (context){
        context.pushNamed(AppRoute.nayaksamiti.name);
      }
  ),

  ItemModel(
    iconPath: 'assets/icons/7.png',
    label: 'Jana Gunaso',
    bgColor: const Color(0xFFC7EDFD),
    splashColor: const Color(0xFFC7EDFD),
    borderColor: const Color(0xFFACD8EB),
      onTap: (context){
      context.pushNamed(AppRoute.janaGunaso.name);
      }

  ),

  ItemModel(
    iconPath: 'assets/icons/8.png',
    label: 'Nagarik Odapatra',
    bgColor: const Color(0xFFFBE4FF),
    splashColor: const Color(0xFFFBE4FF),
    borderColor: const Color(0xFFF2D2F8),
      onTap: (context){
        context.pushNamed(AppRoute.odapatra.name);
      }

  ),

  ItemModel(
    iconPath: 'assets/icons/9.png',
    label: 'Palika Jankari',
    bgColor: const Color(0xFFE2F6FE),
    splashColor: const Color(0xFFa1c1ce),
    borderColor: const Color(0xFFB9D8E4),
      onTap: (context){
        context.pushNamed(AppRoute.palikaJankari.name);
      }

  ),

  ItemModel(
    iconPath: 'assets/icons/10.png',
    label: 'Palika Parichaya',
    bgColor: const Color(0xFFEBF5F3),
    splashColor: const Color(0xFFB9D8E4),
    borderColor: const Color(0xFFB9D8E4),
    onTap: (context){
      context.pushNamed(AppRoute.palikaParichaya.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/11.png',
    label: 'Sewa',
    bgColor: const Color(0xFFFBE1E1),
    splashColor: const Color(0xFFFBE1E1),
    borderColor: const Color(0xFFEFBBBB),
    onTap: (context){
      context.pushNamed(AppRoute.sewa.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/12.png',
    label: 'Digital Manch',
    bgColor: const Color(0xFFE8FEE6),
    splashColor: const Color(0xFFBCE0B9),
    borderColor: const Color(0xFFBCE0B9),
    onTap: (context){
      context.pushNamed(AppRoute.digitalManch.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/13.png',
    label: 'Akasmik Sewa',
    bgColor: const Color(0xFFFFE5E5),
    splashColor: const Color(0xFFFFE5E5),
    borderColor: const Color(0xFFF7CEA6),
    onTap: (context){
      context.pushNamed(AppRoute.asamikSewa.name);
    }
  ),



];




List<ItemModel> jankariList = [
  ItemModel(
    iconPath: 'assets/icons/5.png',
    label: 'Plans',
    splashColor: const Color(0xFFc0d6d1),
    bgColor: const Color(0xFFEBF5F3),
    borderColor: const Color(0xFFC7E0DB),
      onTap: (context){
        context.pushNamed(AppRoute.plans.name);
      }
  ),

  ItemModel(
    iconPath: 'assets/icons/6.png',
    label: 'Tourist Spots',
    splashColor: const Color(0xFFFFE5CC),
    bgColor: const Color(0xFFFFE5CC),
    borderColor: const Color(0xFFFAD3AE),
      onTap: (context){
        context.pushNamed(AppRoute.touristPlace.name);
      }

  ),
  ItemModel(
    iconPath: 'assets/icons/7.png',
    label: 'Events',
    bgColor: const Color(0xFFC7EDFD),
    splashColor: const Color(0xFFC7EDFD),
    borderColor: const Color(0xFFACD8EB),
      onTap: (context){
        context.pushNamed(AppRoute.events.name);
      }

  ),

  ItemModel(
    iconPath: 'assets/icons/8.png',
    label: 'Business',
    bgColor: const Color(0xFFFBE4FF),
    splashColor: const Color(0xFFFBE4FF),
    borderColor: const Color(0xFFF2D2F8),
      onTap: (context){
        context.pushNamed(AppRoute.business.name);
      }
  ),

  ItemModel(
    iconPath: 'assets/icons/9.png',
    label: 'Agriculture',
    bgColor: const Color(0xFFE2F6FE),
    splashColor: const Color(0xFFa1c1ce),
    borderColor: const Color(0xFFB9D8E4),
      onTap: (context){
        context.pushNamed(AppRoute.agriculture.name);
      }

  ),

  ItemModel(
    iconPath: 'assets/icons/10.png',
    label: 'Development Partners',
    bgColor: const Color(0xFFEBF5F3),
    splashColor: const Color(0xFFB9D8E4),
    borderColor: const Color(0xFFB9D8E4),
    onTap: (context){
      context.pushNamed(AppRoute.development.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/11.png',
    label: 'Health',
    bgColor: const Color(0xFFFBE1E1),
    splashColor: const Color(0xFFFBE1E1),
    borderColor: const Color(0xFFEFBBBB),
    onTap: (context){
      context.pushNamed(AppRoute.health.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/12.png',
    label: 'Offices',
    bgColor: const Color(0xFFE8FEE6),
    splashColor: const Color(0xFFBCE0B9),
    borderColor: const Color(0xFFBCE0B9),
    onTap: (context){
      context.pushNamed(AppRoute.offices.name);
    }
  ),

  ItemModel(
    iconPath: 'assets/icons/13.png',
    label: 'Education',
    bgColor: const Color(0xFFFFE5E5),
    splashColor: const Color(0xFFFFE5E5),
    borderColor: const Color(0xFFF7CEA6),
    onTap: (context){
      context.pushNamed(AppRoute.education.name);
    }
  ),


];

