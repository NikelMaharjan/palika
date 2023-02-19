import 'package:palikaa/features/Janta/darta/presentation/forms/birth/birth_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/death/death_darta_page.dart';
import 'package:palikaa/features/Janta/darta/data/darta_model_data.dart';
import 'package:palikaa/karmachari_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/migration/migration_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/family_migration/family_migration_darta_page.dart';
import 'package:palikaa/pratinidhi_darta_page.dart';

import '../../../../export_pages.dart';

class DartaMainScreen extends ConsumerWidget {


  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Darta patra'),
      body: GridView.builder(
          padding: EdgeInsets.all(10.r),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 2,
              mainAxisExtent: 160.w
          ),
          itemCount: odaPatraList.length,
          itemBuilder: (context, index){
            final data = dartaList[index];


            return InkWell(

       //       onTap: () => data.onTap!(context),






              onTap: () {
                switch (index) {
                  case 0:
                   // context.pushNamed(AppRoute.birth.name);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  BirthDartaPage()),
                    );
                    break;

                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  DeathDartaPage()),
                    );
                    break;

                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  MigrationDartaPage()),
                    );
                    break;

                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  FamilyMigrationDartaPage()),
                    );
                    break;

                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  KarmachariDartaPage()),
                    );
                    break;

                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  PratinidhiDartaPage()),
                    );



                }
              },
              child: Card(
                color: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            border: Border.all(color: data.borderColor, width: 1)
                        ),
                        child: CircleAvatar(
                          backgroundColor: data.bgColor,
                          radius: 30.r,
                          child:  Container(
                            child: ImageIcon(
                              AssetImage(data.iconPath),
                              color: data.iconColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          data.label,
                          style: data.styles,
                          textAlign: TextAlign.center,
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
