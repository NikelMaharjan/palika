import '../export_pages.dart';



class ShowWidget extends StatelessWidget {
  final bool isLoad;
  final String message;
  final dataProvider;
  final Widget mainWidget;
  const ShowWidget({super.key, required this.isLoad, required this.message, required this.mainWidget, required this.dataProvider});
  @override
  Widget build(BuildContext context) {
    if (isLoad) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (message.isNotEmpty) {
      if (message == 'No Internet.') {
        return ConnectionStatePage(dataProvider);
      } else {
        return ExceptionUi(message, dataProvider);
      }
    } else {
      return mainWidget;
    }
  }
}
