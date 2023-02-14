import 'package:flutter_dotenv/flutter_dotenv.dart';




class Api{

   // static  String palikaBaseUrl = dotenv.env['PBASE']!;
   static  String palikaBaseUrl = 'https://test.palikaa.org';
   static  String dartaMarriage = '$palikaBaseUrl/api/notice/marriage';
  static  String userProfile = '$palikaBaseUrl/api/home';
//  static const String userSignUp = '$baseUrl/auth/register';
  static  String userLogin = '$palikaBaseUrl/api/login';
  static  String getNotice = '$palikaBaseUrl/api/suchana';
  static  String getNews = '$palikaBaseUrl/api/samachar';
  static  String gunaso = '$palikaBaseUrl/api/gunaso';
  static  String houseData = '$palikaBaseUrl/api/members';
  static  String pratinidhi = '$palikaBaseUrl/api/pratinidhi';
  static  String karmachari = '$palikaBaseUrl/api/karmachari';


  //chat api
  // static String chatUrl = dotenv.env['PCHAT']!;
  // static String loginChat = '$chatUrl/auth/login';
  // static String getFriendsList =  chatUrl + '/api/friend-lists';
  // static String getChatMessages =  chatUrl + '/api/messages';
  //static const getFriendsInvitation =  chatUrl + '/api/friend-invitations';
 // static const userSendRequest =  chatUrl + '/api/friend-invitation';



}
