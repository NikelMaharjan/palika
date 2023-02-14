import 'package:palikaa/export_pages.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../main/data/janta_jankari_icon_data.dart';

final jankariData = jankariList.where((element) => element.label != 'Tourist Spots').toList();
final List<ItemModel> _datas = [...jantaList, ...jankariData];


class SearchPage extends StatelessWidget {
    SearchPage({Key? key}) : super(key: key);
   final TextEditingController _typeAheadController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: TypeAheadField(
              textFieldConfiguration: TextFieldConfiguration(
                controller: _typeAheadController,
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 16.sp),
                    suffixIcon: const Icon(Icons.search, color: Colors.black,),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor)
                      ),
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: primaryColor))
                  )
              ),
              suggestionsCallback: (pattern) async {
                 await Future.delayed(const Duration(milliseconds: 90));
                 final data = _datas.where((element) => element.label.toLowerCase().contains(pattern.toLowerCase())).toList();
                 return data;
              },
              itemBuilder: (context, suggestion) {
                return ListTile(
                  leading: Image.asset(suggestion.iconPath, height: 30, width: 30,),
                  title: Text(suggestion.label,style: const TextStyle(color: blackColor)),
                );
              },
              onSuggestionSelected: (suggestion) {
                Pop.popWidget(context);
                suggestion.onTap!(context);
              },
            ),
          ),
        )
    );
  }
}
