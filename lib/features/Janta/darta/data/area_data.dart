
const List  provinces = [
  {"id": 1, "name": "प्रदेश १", "en_name": "State 1"},
  {"id": 2, "name": "मधेस प्रदेश", "en_name": "Madhesh Pradesh"},
  {"id": 3, "name": "वाग्मती प्रदेश", "en_name": "Bagmati Pradesh"},
  {"id": 4, "name": "गण्डकी प्रदेश", "en_name": "Gandaki Pradesh"},
  {"id": 5, "name": "लुम्बिनी प्रदेश", "en_name": "Lumbini Pradesh"},
  {"id": 6, "name": "कर्णाली प्रदेश", "en_name": "Karnali Pradesh"},
  {"id": 7, "name": "सुदूरपश्चिम प्रदेश", "en_name": "Sudurpaschim Pradesh"}
];




const List districts = [
  {"id": 3, "name": "सोलुखुम्बु", "en_name": "Solukhumbu", "province_id": 1},
  {"id": 2, "name": "संखुवासभा", "en_name": "Sankhuwasabha", "province_id": 1},
  {"id": 1, "name": "ताप्लेजुङ", "en_name": "Taplejung", "province_id": 1},
  {"id": 4, "name": "ओखलढुङ्गा", "en_name": "Okhaldhunga", "province_id": 1},
  {"id": 5, "name": "खोटाङ", "en_name": "Khotang", "province_id": 1},
  {"id": 6, "name": "भोजपुर", "en_name": "Bhojpur", "province_id": 1},
  {"id": 7, "name": "धनकुटा", "en_name": "Dhankuta", "province_id": 1},
  {"id": 8, "name": "तेह्रथुम", "en_name": "Terhathum", "province_id": 1},
  {"id": 9, "name": "पाँचथर", "en_name": "Panchthar", "province_id": 1},
  {"id": 14, "name": "उदयपुर", "en_name": "Udayapur", "province_id": 1},
  {"id": 13, "name": "सुनसरी", "en_name": "Sunsari", "province_id": 1},
  {"id": 12, "name": "मोरङ", "en_name": "Morang", "province_id": 1},
  {"id": 11, "name": "झापा", "en_name": "Jhapa", "province_id": 1},
  {"id": 10, "name": "इलाम", "en_name": "Illam", "province_id": 1},
  {"id": 22, "name": "पर्सा", "en_name": "Parsa", "province_id": 2},
  {"id": 21, "name": "बारा", "en_name": "Bara", "province_id": 2},
  {"id": 20, "name": "रौतहट", "en_name": "Rautahat", "province_id": 2},
  {"id": 19, "name": "सर्लाही", "en_name": "Sarlahi", "province_id": 2},
  {"id": 18, "name": "महोत्तरी", "en_name": "Mahottari", "province_id": 2},
  {"id": 17, "name": "धनुषा", "en_name": "Dhanusha", "province_id": 2},
  {"id": 16, "name": "सिरहा", "en_name": "Siraha", "province_id": 2},
  {"id": 15, "name": "सप्तरी", "en_name": "Saptari", "province_id": 2},
  {"id": 35, "name": "चितवन", "en_name": "Chitwan", "province_id": 3},
  {"id": 26, "name": "धादिङ", "en_name": "Dhading", "province_id": 3},
  {"id": 25, "name": "रसुवा", "en_name": "Rasuwa", "province_id": 3},
  {"id": 27, "name": "नुवाकोट", "en_name": "Nuwakot", "province_id": 3},
  {"id": 34, "name": "मकवानपुर", "en_name": "Makwanpur", "province_id": 3},
  {"id": 28, "name": "काठमाडौँ", "en_name": "Kathmandu", "province_id": 3},
  {"id": 29, "name": "भक्तपुर", "en_name": "Bhaktapur", "province_id": 3},
  {"id": 30, "name": "ललितपुर", "en_name": "Lalitpur", "province_id": 3},
  {"id": 31, "name": "काभ्रेपलाञ्चोक", "en_name": "KAVREPALANCHOK", "province_id": 3},
  {"id": 24, "name": "सिन्धुपाल्चोक", "en_name": "Sindhupalchok", "province_id": 3},
  {"id": 23, "name": "दोलखा", "en_name": "Dolakha", "province_id": 3},
  {"id": 32, "name": "रामेछाप", "en_name": "Ramechhap", "province_id": 3},
  {"id": 33, "name": "सिन्धुली", "en_name": "Sindhuli", "province_id": 3},
  {"id": 46, "name": "बागलुङ", "en_name": "Baglung", "province_id": 4},
  {"id": 45, "name": "पर्वत", "en_name": "Parbat", "province_id": 4},
  {"id": 44, "name": "स्याङजा", "en_name": "Syangja", "province_id": 4},
  {"id": 43, "name": "नवलपरासी (पूर्व)", "en_name": "Nawalparasi East", "province_id": 4},
  {"id": 42, "name": "तनहुँ", "en_name": "Tanahu", "province_id": 4},
  {"id": 36, "name": "गोरखा", "en_name": "Gorkha", "province_id": 4},
  {"id": 41, "name": "लमजुङ", "en_name": "Lamjung", "province_id": 4},
  {"id": 40, "name": "कास्की", "en_name": "Kaski", "province_id": 4},
  {"id": 39, "name": "म्याग्दी", "en_name": "Myagdi", "province_id": 4},
  {"id": 37, "name": "मनाङ", "en_name": "Manang", "province_id": 4},
  {"id": 38, "name": "मुस्ताङ", "en_name": "Mustang", "province_id": 4},
  {"id": 55, "name": "कपिलवस्तु", "en_name": "Kapilvastu", "province_id": 5},
  {"id": 54, "name": "रुपन्देही", "en_name": "Rupandehi", "province_id": 5},
  {"id": 51, "name": "अर्घाखाँची", "en_name": "Arghakhanchi", "province_id": 5},
  {"id": 53, "name": "नवलपरासी(पश्चिम)", "en_name": "Nawalparasi West", "province_id": 5},
  {"id": 50, "name": "गुल्मी", "en_name": "Gulmi", "province_id": 5},
  {"id": 52, "name": "पाल्पा", "en_name": "Palpa", "province_id": 5},
  {"id": 56, "name": "दाङ", "en_name": "Dang", "province_id": 5},
  {"id": 49, "name": "प्यूठान", "en_name": "Pyuthan", "province_id": 5},
  {"id": 48, "name": "रोल्पा", "en_name": "Rolpa", "province_id": 5},
  {"id": 47, "name": "रुकुम (पूर्वी भाग)", "en_name": "Rukum East", "province_id": 5},
  {"id": 57, "name": "बाँके", "en_name": "Banke", "province_id": 5},
  {"id": 58, "name": "बर्दिया", "en_name": "Bardiya", "province_id": 5},
  {"id": 66, "name": "रुकुम (पश्चिम भाग)", "en_name": "Rukum West", "province_id": 6},
  {"id": 67, "name": "सल्यान", "en_name": "Salyan", "province_id": 6},
  {"id": 59, "name": "डोल्पा", "en_name": "Dolpa", "province_id": 6},
  {"id": 61, "name": "हुम्ला", "en_name": "Humla", "province_id": 6},
  {"id": 62, "name": "जुम्ला", "en_name": "Jumla", "province_id": 6},
  {"id": 63, "name": "कालिकोट", "en_name": "Kalikot", "province_id": 6},
  {"id": 60, "name": "मुगु", "en_name": "Mugu", "province_id": 6},
  {"id": 68, "name": "सुर्खेत", "en_name": "Surkhet", "province_id": 6},
  {"id": 64, "name": "दैलेख", "en_name": "Dailekh", "province_id": 6},
  {"id": 65, "name": "जाजरकोट", "en_name": "Jajarkot", "province_id": 6},
  {"id": 75, "name": "अछाम", "en_name": "Achham", "province_id": 7},
  {"id": 72, "name": "बैतडी", "en_name": "Baitadi", "province_id": 7},
  {"id": 70, "name": "बझाङ", "en_name": "Bajhang", "province_id": 7},
  {"id": 69, "name": "बाजुरा", "en_name": "Bajura", "province_id": 7},
  {"id": 73, "name": "डँडेलधुरा", "en_name": "Dadeldhura", "province_id": 7},
  {"id": 71, "name": "दार्चुला", "en_name": "Darchula", "province_id": 7},
  {"id": 74, "name": "डोटी", "en_name": "Doti", "province_id": 7},
  {"id": 76, "name": "कैलाली", "en_name": "Kailali", "province_id": 7},
  {"id": 77, "name": "कञ्चनपुर", "en_name": "Kanchanpur", "province_id": 7}
];

const List municipalities = [
  {
    "id": 1,
    "name": "फक्ताङ्लुङ्ग गाउँपालिका",
    "en_name": "Phaktanlung Rural Municipality",
    "district_id": 1
  },
  {
    "id": 2,
    "name": "मिक्वाखोला गाउँपालिका",
    "en_name": "Mikwakhola Rural Municipality",
    "district_id": 1
  },
  {
    "id": 3,
    "name": "मेरिङ्गदेन गाउँपालिका",
    "en_name": "Meringden Rural Municipality",
    "district_id": 1
  },
  {
    "id": 4,
    "name": "मैवाखोला गाउँपालिका",
    "en_name": "Maiwakhola Rural Municipality",
    "district_id": 1
  },
  {
    "id": 5,
    "name": "आठराई त्रिवेणी गाउँपालिका",
    "en_name": "Aatharai Tribeni Rural Municipality",
    "district_id": 1
  },
  {
    "id": 6,
    "name": "फुङलिङ्ग नगरपालिका",
    "en_name": "Phungling Municipality",
    "district_id": 1
  },
  {
    "id": 7,
    "name": "याङ्वरक गाउँपालिका",
    "en_name": "Yangwarak Rural Municipality",
    "district_id": 1
  },
  {
    "id": 8,
    "name": "सिरीजङ्गा गाउंपालिका",
    "en_name": "Sirijanga Rural Municipality",
    "district_id": 1
  },
  {
    "id": 9,
    "name": "सिदिङ्गवा गाउँपालिका",
    "en_name": "Sidingba Rural Municipality",
    "district_id": 1
  },
  {
    "id": 10,
    "name": "भोटखोला गाउँपालिका",
    "en_name": "Bhotkhola Rural Municipality",
    "district_id": 2
  },
  {
    "id": 11,
    "name": "मकालु गाउँपालिका",
    "en_name": "Makalu Rural Municipality",
    "district_id": 2
  },
  {
    "id": 12,
    "name": "सिलीचोङ गाउँपालिका",
    "en_name": "Silichong Rural Municipality",
    "district_id": 2
  },
  {
    "id": 13,
    "name": "चिचिला गाउँपालिका",
    "en_name": "Chichila Rural Municipality",
    "district_id": 2
  },
  {
    "id": 14,
    "name": "सभापोखरी गाउँपालिका",
    "en_name": "Sabhapokhari Rural Municipality",
    "district_id": 2
  },
  {
    "id": 15,
    "name": "खाँदबारी नगरपालिका",
    "en_name": "Khandabari Municipality",
    "district_id": 2
  },
  {
    "id": 16,
    "name": "पाँचखपन नगरपालिका",
    "en_name": "Panchakhapan Municipality",
    "district_id": 2
  },
  {
    "id": 17,
    "name": "चैनपुर नगरपालिका",
    "en_name": "Chainapur Municipality",
    "district_id": 2
  },
  {
    "id": 18,
    "name": "मादी नगरपालिका",
    "en_name": "Madi Municipality",
    "district_id": 2
  },
  {
    "id": 19,
    "name": "धर्मदेवी नगरपालिका",
    "en_name": "Dharmadevi Municipality",
    "district_id": 2
  },
  {
    "id": 20,
    "name": "खुम्बु पासाङल्हामु गाउँपालिका",
    "en_name": "Khumbu Pasanglhamu Rural Municipality",
    "district_id": 3
  },
  {
    "id": 21,
    "name": "माहाकुलुङ गाउँपालिका",
    "en_name": "Mahakulung Rural Municipality",
    "district_id": 3
  },
  {
    "id": 22,
    "name": "सोताङ गाउँपालिका",
    "en_name": "Sotang Rural Municipality",
    "district_id": 3
  },
  {
    "id": 23,
    "name": "दुधकोशी गाउँपालिका",
    "en_name": "Dhudhakoshi Rural Municipality",
    "district_id": 3
  },
  {
    "id": 24,
    "name": "दुधकौशिका गाउँपालिका",
    "en_name": "Dhudha Koushika Rural Municipality",
    "district_id": 3
  },
  {
    "id": 25,
    "name": "नेचासल्यान गाउँपालिका",
    "en_name": "Necha Salyan Rural Municipality",
    "district_id": 3
  },
  {
    "id": 26,
    "name": "सोलुदुधकुण्ड नगरपालिका",
    "en_name": "Solu Dhudhakunda Municipality",
    "district_id": 3
  },
  {
    "id": 27,
    "name": "लिखु पिके गाउँपालिका",
    "en_name": "Likhu Pike Rural Municipality",
    "district_id": 3
  },
  {
    "id": 28,
    "name": "चिशंखुगढी गाउँपालिका",
    "en_name": "Chishankhu Gadhi Rural Municipality",
    "district_id": 4
  },
  {
    "id": 29,
    "name": "सिद्धिचरण नगरपालिका",
    "en_name": "Siddhicharan Municipality",
    "district_id": 4
  },
  {
    "id": 30,
    "name": "मोलुङ्ग गाउँपालिका",
    "en_name": "Molung Rural Municipality",
    "district_id": 4
  },
  {
    "id": 31,
    "name": "खिजीदेम्बा गाउँपालिका",
    "en_name": "Khiji Demba Rural Municipality",
    "district_id": 4
  },
  {
    "id": 32,
    "name": "लिखु गाउँपालिका",
    "en_name": "Likhu Rural Municipality",
    "district_id": 4
  },
  {
    "id": 33,
    "name": "चम्पादेवी गाउँपालिका",
    "en_name": "Champadevi Rural Municipality",
    "district_id": 4
  },
  {
    "id": 34,
    "name": "सुनकोशी गाउँपालिका",
    "en_name": "Sunkoshi Rural Municipality",
    "district_id": 4
  },
  {
    "id": 35,
    "name": "मानेभन्ज्याङ्ग गाउँपालिका",
    "en_name": "Manebhanjyang Rural Municipality",
    "district_id": 4
  },
  {
    "id": 36,
    "name": "केपिलासगढी गाउँपालिका",
    "en_name": "Kepilasgadhi Rural Municipality",
    "district_id": 5
  },
  {
    "id": 37,
    "name": "ऐसेलुखर्क गाउँपालिका",
    "en_name": "Aiselukharka Rural Municipality",
    "district_id": 5
  },
  {
    "id": 38,
    "name": "लामिडाँडा गाउँपालिका",
    "en_name": "Lamidanda Rural Municipality",
    "district_id": 5
  },
  {
    "id": 39,
    "name": "हलेसी तुवाचुङ नगरपालिका",
    "en_name": "Halesi Tuwachung Municipality",
    "district_id": 5
  },
  {
    "id": 40,
    "name": "रुपाकोट मझुवागढी नगरपालिका",
    "en_name": "Rupakot Majhuwagadhi Municipality",
    "district_id": 5
  },
  {
    "id": 41,
    "name": "साकेला गाउँपालिका",
    "en_name": "Sakela Rural Municipality",
    "district_id": 5
  },
  {
    "id": 42,
    "name": "दिप्रुङ्ग गाउँपालिका",
    "en_name": "Diprung Rural Municipality",
    "district_id": 5
  },
  {
    "id": 43,
    "name": "खोटेहाङ गाउँपालिका",
    "en_name": "Khotehang Rural Municipality",
    "district_id": 5
  },
  {
    "id": 44,
    "name": "जन्तेढुङ्गा गाउँपालिका",
    "en_name": "Jante Dhunga Rural Municipality",
    "district_id": 5
  },
  {
    "id": 45,
    "name": "बराहपोखरी गाउँपालिका",
    "en_name": "Baraha Pokhari Rural Municipality",
    "district_id": 5
  },
  {
    "id": 46,
    "name": "षडानन्द नगरपालिका",
    "en_name": "Shadananda Municipality",
    "district_id": 6
  },
  {
    "id": 47,
    "name": "साल्पासिलिछो गाउँपालिका",
    "en_name": "Salpa Silichho Rural Municipality",
    "district_id": 6
  },
  {
    "id": 48,
    "name": "ट्याम्के मैयुम गाउँपालिका",
    "en_name": "Tyamke Maiyum Rural Municipality",
    "district_id": 6
  },
  {
    "id": 49,
    "name": "भोजपुर नगरपालिका",
    "en_name": "Bhojpur Municipality",
    "district_id": 6
  },
  {
    "id": 50,
    "name": "अरुण गाउँपालिका",
    "en_name": "Arun Rural Municipality",
    "district_id": 6
  },
  {
    "id": 51,
    "name": "पौवा दुङ्मा गाउँपालिका",
    "en_name": "Pauwa Dunma Rural Municipality",
    "district_id": 6
  },
  {
    "id": 52,
    "name": "रामप्रसाद राई गाउँपालिका",
    "en_name": "Ramprasad Rai Rural Municipality",
    "district_id": 6
  },
  {
    "id": 53,
    "name": "हतुवागढी गाउँपालिका",
    "en_name": "Hatuwagadhi Rural Municipality",
    "district_id": 6
  },
  {
    "id": 54,
    "name": "आमचोक गाउँपालिका",
    "en_name": "Aamchowk Rural Municipality",
    "district_id": 6
  },
  {
    "id": 55,
    "name": "महालक्ष्मी नगरपालिका",
    "en_name": "Mahalaxmi Municipality",
    "district_id": 7
  },
  {
    "id": 56,
    "name": "पाख्रिबास नगरपालिका",
    "en_name": "Pakhribas Municipality",
    "district_id": 7
  },
  {
    "id": 57,
    "name": "छथर जोरपाटी गाउँपालिका",
    "en_name": "Chhathar Jorpati Rural Municipality",
    "district_id": 7
  },
  {
    "id": 58,
    "name": "धनकुटा नगरपालिका",
    "en_name": "Dhankuta Municipality",
    "district_id": 7
  },
  {
    "id": 59,
    "name": "खाल्सा छिन्ताङ्ग सहीदभूमि गाउँपालिका",
    "en_name": "Khalsa Chhintang Sahidbhumi Rural Municipality",
    "district_id": 7
  },
  {
    "id": 60,
    "name": "साँगुरीगढी गाउँपालिका",
    "en_name": "Sangurigadhi Rural Municipality",
    "district_id": 7
  },
  {
    "id": 61,
    "name": "चौविसे गाउँपालिका",
    "en_name": "Chaubise Rural Municipality",
    "district_id": 7
  },
  {
    "id": 62,
    "name": "आठराई गाउँपालिका",
    "en_name": "Aatharai Rural Municipality",
    "district_id": 8
  },
  {
    "id": 63,
    "name": "फेदाप गाउँपालिका",
    "en_name": "Phedap Rural Municipality",
    "district_id": 8
  },
  {
    "id": 64,
    "name": "मेन्छयायेम गाउँपालिका",
    "en_name": "Menchhayayem Rural Municipality",
    "district_id": 8
  },
  {
    "id": 65,
    "name": "म्याङ्गलुङ्ग नगरपालिका",
    "en_name": "Myanglung Municipality",
    "district_id": 8
  },
  {
    "id": 66,
    "name": "लालीगुराँस नगरपालिका",
    "en_name": "Laligurans Municipality",
    "district_id": 8
  },
  {
    "id": 67,
    "name": "छथर गाउँपालिका",
    "en_name": "Chhathar Rural Municipality",
    "district_id": 8
  },
  {
    "id": 68,
    "name": "याङवरक गाउँपालिका",
    "en_name": "Yangbarak Rural Municipality",
    "district_id": 9
  },
  {
    "id": 69,
    "name": "हिलिहाङ्ग गाउँपालिका",
    "en_name": "Hilihan Rural Municipality",
    "district_id": 9
  },
  {
    "id": 70,
    "name": "फालेलुङ्ग गाउँपालिका",
    "en_name": "Falelung Rural Municipality",
    "district_id": 9
  },
  {
    "id": 71,
    "name": "फिदिम नगरपालिका",
    "en_name": "Phidim Municipality",
    "district_id": 9
  },
  {
    "id": 72,
    "name": "फाल्गुनन्द गाउँपालिका",
    "en_name": "Falgunanda Rural Municipality",
    "district_id": 9
  },
  {
    "id": 73,
    "name": "कुम्मायक गाउँपालिका",
    "en_name": "Kummayak Rural Municipality",
    "district_id": 9
  },
  {
    "id": 74,
    "name": "तुम्बेवा गाउँपालिका",
    "en_name": "Tumbewa Rural Municipality",
    "district_id": 9
  },
  {
    "id": 75,
    "name": "मिक्लाजुङ गाउँपालिका",
    "en_name": "Miklajung Rural Municipality",
    "district_id": 9
  },
  {
    "id": 76,
    "name": "माई जोगमाई गाउँपालिका",
    "en_name": "Mai Jogmai Rural Municipality",
    "district_id": 10
  },
  {
    "id": 77,
    "name": "सन्दकपुर गाउँपालिका",
    "en_name": "Sandakpur Rural Municipality",
    "district_id": 10
  },
  {
    "id": 78,
    "name": "ईलाम नगरपालिका",
    "en_name": "Illam Municipality",
    "district_id": 10
  },
  {
    "id": 79,
    "name": "देउमाई नगरपालिका",
    "en_name": "Deumai Municipality",
    "district_id": 10
  },
  {
    "id": 80,
    "name": "फाकफोकथुम गाउँपालिका",
    "en_name": "Fakfokathum Rural Municipality",
    "district_id": 10
  },
  {
    "id": 81,
    "name": "माङसेबुङ गाउँपालिका",
    "en_name": "Mangsebung Rural Municipality",
    "district_id": 10
  },
  {
    "id": 82,
    "name": "चुलाचुली गाउँपालिका",
    "en_name": "Chulachuli Rural Municipality",
    "district_id": 10
  },
  {
    "id": 83,
    "name": "माई नगरपालिका",
    "en_name": "Mai Municipality",
    "district_id": 10
  },
  {
    "id": 84,
    "name": "सूर्योदय नगरपालिका",
    "en_name": "Suryodaya Municipality",
    "district_id": 10
  },
  {
    "id": 85,
    "name": "रोङ गाउँपालिका",
    "en_name": "Rong Rural Municipality",
    "district_id": 10
  },
  {
    "id": 86,
    "name": "मेचीनगर नगरपालिका",
    "en_name": "Mechinagar Municipality",
    "district_id": 11
  },
  {
    "id": 87,
    "name": "बुद्धशान्ति गाउँपालिका",
    "en_name": "Buddhashanti Rural Municipality",
    "district_id": 11
  },
  {
    "id": 88,
    "name": "अर्जुनधारा नगरपालिका",
    "en_name": "Arjundhara Municipality",
    "district_id": 11
  },
  {
    "id": 89,
    "name": "कन्काई नगरपालिका",
    "en_name": "Kankai Municipality",
    "district_id": 11
  },
  {
    "id": 90,
    "name": "शिवसताक्षी नगरपालिका",
    "en_name": "Shivasatakshi Municipality",
    "district_id": 11
  },
  {
    "id": 91,
    "name": "कमल गाउँपालिका",
    "en_name": "Kamal Rural Municipality",
    "district_id": 11
  },
  {
    "id": 92,
    "name": "दमक नगरपालिका",
    "en_name": "Damak Municipality",
    "district_id": 11
  },
  {
    "id": 93,
    "name": "गौरादह नगरपालिका",
    "en_name": "Gauradaha Municipality",
    "district_id": 11
  },
  {
    "id": 94,
    "name": "गौरिगञ्ज गाउँपालिका",
    "en_name": "Gauriganj Rural Municipality",
    "district_id": 11
  },
  {
    "id": 95,
    "name": "झापा गाउँपालिका",
    "en_name": "Jhapa Rural Municipality",
    "district_id": 11
  },
  {
    "id": 96,
    "name": "बाह्रदशी गाउँपालिका",
    "en_name": "Barhadashi Rural Municipality",
    "district_id": 11
  },
  {
    "id": 97,
    "name": "बिर्तामोड नगरपालिका",
    "en_name": "Birtamod Municipality",
    "district_id": 11
  },
  {
    "id": 98,
    "name": "हल्दीबारी गाउँपालिका",
    "en_name": "Haldibari Rural Municipality",
    "district_id": 11
  },
  {
    "id": 99,
    "name": "भद्रपुर नगरपालिका",
    "en_name": "Bhadrapur Municipality",
    "district_id": 11
  },
  {
    "id": 100,
    "name": "कचनकवल गाउँपालिका",
    "en_name": "Kachanakawal Rural Municipality",
    "district_id": 11
  },
  {
    "id": 101,
    "name": "मिक्लाजुङ्ग गाउँपालिका",
    "en_name": "Miklajung Rural Municipality",
    "district_id": 12
  },
  {
    "id": 102,
    "name": "लेटाङ नगरपालिका",
    "en_name": "Letang Municipality",
    "district_id": 12
  },
  {
    "id": 103,
    "name": "केराबारी गाउँपालिका",
    "en_name": "Kerabari Rural Municipality",
    "district_id": 12
  },
  {
    "id": 104,
    "name": "सुन्दरहरैंचा नगरपालिका",
    "en_name": "Sundarharaicha Municipality",
    "district_id": 12
  },
  {
    "id": 105,
    "name": "बेलबारी नगरपालिका",
    "en_name": "Belbari Municipality",
    "district_id": 12
  },
  {
    "id": 106,
    "name": "कानेपोखरी गाउँपालिका",
    "en_name": "Kanepokhari Rural Municipality",
    "district_id": 12
  },
  {
    "id": 107,
    "name": "पथरी शनिश्चरे नगरपालिका",
    "en_name": "Pathari Shanishchare Municipality",
    "district_id": 12
  },
  {
    "id": 108,
    "name": "उर्लाबारी नगरपालिका",
    "en_name": "Urlabari Municipality",
    "district_id": 12
  },
  {
    "id": 109,
    "name": "रतुवामाई नगरपालिका",
    "en_name": "Ratuwamai Municipality",
    "district_id": 12
  },
  {
    "id": 110,
    "name": "सुनवर्षी नगरपालिका",
    "en_name": "Sunwarshi Municipality",
    "district_id": 12
  },
  {
    "id": 111,
    "name": "रंगेली नगरपालिका",
    "en_name": "Rangeli Municipality",
    "district_id": 12
  },
  {
    "id": 112,
    "name": "ग्रामथान गाउँपालिका",
    "en_name": "Gramthan Rural Municipality",
    "district_id": 12
  },
  {
    "id": 113,
    "name": "बुढीगंगा गाउँपालिका",
    "en_name": "Budhiganga Rural Municipality",
    "district_id": 12
  },
  {
    "id": 114,
    "name": "बिराटनगर महानगरपालिका",
    "en_name": "Biratnagar Metropolitian City",
    "district_id": 12
  },
  {
    "id": 115,
    "name": "कटहरी गाउँपालिका",
    "en_name": "Katahari Rural Municipality",
    "district_id": 12
  },
  {
    "id": 116,
    "name": "धनपालथान गाउँपालिका",
    "en_name": "Dhanapalthan Rural Municipality",
    "district_id": 12
  },
  {
    "id": 117,
    "name": "जहदा गाउँपालिका",
    "en_name": "Jahada Rural Municipality",
    "district_id": 12
  },
  {
    "id": 118,
    "name": "धरान उपमहानगरपालिका",
    "en_name": "Dharan Sub-Metropolitian City",
    "district_id": 13
  },
  {
    "id": 119,
    "name": "बराह नगरपालिका",
    "en_name": "Baraha Municipality",
    "district_id": 13
  },
  {
    "id": 120,
    "name": "कोशी गाउँपालिका",
    "en_name": "Koshi Rural Municipality",
    "district_id": 13
  },
  {
    "id": 121,
    "name": "भोक्राहा गाउँपालिका",
    "en_name": "Bhokraha Rural Municipality",
    "district_id": 13
  },
  {
    "id": 122,
    "name": "रामधुनी नगरपालिका",
    "en_name": "Ramdhuni Municipality",
    "district_id": 13
  },
  {
    "id": 123,
    "name": "ईटहरी उपमहानगरपालिका",
    "en_name": "Itahari Sub-Metropolitian City",
    "district_id": 13
  },
  {
    "id": 124,
    "name": "दुहबी नगरपालिका",
    "en_name": "Duhabi Municipality",
    "district_id": 13
  },
  {
    "id": 125,
    "name": "गढी गाउँपालिका",
    "en_name": "Gadhi Rural Municipality",
    "district_id": 13
  },
  {
    "id": 126,
    "name": "इनरुवा नगरपालिका",
    "en_name": "Inaruwa Municipality",
    "district_id": 13
  },
  {
    "id": 127,
    "name": "हरिनगरा गाउँपालिका",
    "en_name": "Harinagara Rural Municipality",
    "district_id": 13
  },
  {
    "id": 128,
    "name": "देवानगन्ज गाउँपालिका",
    "en_name": "Dewangunj Rural Municipality",
    "district_id": 13
  },
  {
    "id": 129,
    "name": "बर्जु गाउँपालिका",
    "en_name": "Barju Rural Municipality",
    "district_id": 13
  },
  {
    "id": 130,
    "name": "बेलका नगरपालिका",
    "en_name": "Belaka Municipality",
    "district_id": 14
  },
  {
    "id": 131,
    "name": "चौदण्डीगढी नगरपालिका",
    "en_name": "Chaudandigadhi Municipality",
    "district_id": 14
  },
  {
    "id": 132,
    "name": "त्रियुगा नगरपालिका",
    "en_name": "Triyuga Municipality",
    "district_id": 14
  },
  {
    "id": 133,
    "name": "रौतामाई गाउँपालिका",
    "en_name": "Rautamai Rural Municipality",
    "district_id": 14
  },
  {
    "id": 134,
    "name": "सुनकोशी गाउँपालिका",
    "en_name": "Sunkoshi Rural Municipality",
    "district_id": 14
  },
  {
    "id": 135,
    "name": "ताप्ली गाउँपालिका",
    "en_name": "Tapli Rural Municipality",
    "district_id": 14
  },
  {
    "id": 136,
    "name": "कटारी नगरपालिका",
    "en_name": "Katari Municipality",
    "district_id": 14
  },
  {
    "id": 137,
    "name": "उदयपुरगढी गाउँपालिका",
    "en_name": "Udayapurgadhi Rural Municipality",
    "district_id": 14
  },
  {
    "id": 138,
    "name": "सप्तकोशी नगरपालिका",
    "en_name": "Saptakoshi Municipality",
    "district_id": 15
  },
  {
    "id": 139,
    "name": "कन्चनरुप नगरपालिका",
    "en_name": "Kanchanrup Municipality",
    "district_id": 15
  },
  {
    "id": 140,
    "name": "अग्निसाइर कृष्ण सवरन गाउँपालिका",
    "en_name": "Agnisair Krishna Sabaran Rural Municipality",
    "district_id": 15
  },
  {
    "id": 141,
    "name": "रुपनी गाउँपालिका",
    "en_name": "Rupani Rural Municipality",
    "district_id": 15
  },
  {
    "id": 142,
    "name": "शम्भुनाथ नगरपालिका",
    "en_name": "Shambhunath Municipality",
    "district_id": 15
  },
  {
    "id": 143,
    "name": "खडक नगरपालिका",
    "en_name": "Khadak Municipality",
    "district_id": 15
  },
  {
    "id": 144,
    "name": "सुरुङ्गा नगरपालिका",
    "en_name": "Surunga Municipality",
    "district_id": 15
  },
  {
    "id": 145,
    "name": "बलान बिहुल गाउँपालिका",
    "en_name": "Balan-Bihul Rural Municipality",
    "district_id": 15
  },
  {
    "id": 146,
    "name": "बोदेबरसाईन नगरपालिका",
    "en_name": "BodeBarsain Municipality",
    "district_id": 15
  },
  {
    "id": 147,
    "name": "डाक्नेश्वरी नगरपालिका",
    "en_name": "Dakneshwori Municipality",
    "district_id": 15
  },
  {
    "id": 148,
    "name": "बेल्ही चपेना गाउँपालिका",
    "en_name": "Belhi Chapena Rural Municipality",
    "district_id": 15
  },
  {
    "id": 149,
    "name": "बिष्णुपुर गाउँपालिका",
    "en_name": "Bishnupur Rural Municipality",
    "district_id": 15
  },
  {
    "id": 150,
    "name": "राजविराज नगरपालिका",
    "en_name": "Rajbiraj Municipality",
    "district_id": 15
  },
  {
    "id": 151,
    "name": "महादेवा गाउँपालिका",
    "en_name": "Mahadewa Rural Municipality",
    "district_id": 15
  },
  {
    "id": 152,
    "name": "तिरहुत गाउँपालिका",
    "en_name": "Tirahut Rural Municipality",
    "district_id": 15
  },
  {
    "id": 153,
    "name": "हनुमाननगर कङ्कालिनी नगरपालिका",
    "en_name": "Hanumannagar Kankalini Municipality",
    "district_id": 15
  },
  {
    "id": 154,
    "name": "तिलाठी कोईलाडी गाउँपालिका",
    "en_name": "Tilathi Koiladi Rural Municipality",
    "district_id": 15
  },
  {
    "id": 155,
    "name": "छिन्नमस्ता गाउँपालिका",
    "en_name": "Chhinnamasta Rural Municipality",
    "district_id": 15
  },
  {
    "id": 156,
    "name": "लहान नगरपालिका",
    "en_name": "Lahan Municipality",
    "district_id": 16
  },
  {
    "id": 157,
    "name": "धनगढीमाई नगरपालिका",
    "en_name": "Dhangadhimai Municipality",
    "district_id": 16
  },
  {
    "id": 158,
    "name": "गोलबजार नगरपालिका",
    "en_name": "Golbazar Municipality",
    "district_id": 16
  },
  {
    "id": 159,
    "name": "मिर्चेया नगरपालिका",
    "en_name": "Mirchaiya Municipality",
    "district_id": 16
  },
  {
    "id": 160,
    "name": "कर्जन्हा नगरपालिका",
    "en_name": "Karjanha Municipality",
    "district_id": 16
  },
  {
    "id": 161,
    "name": "कल्याणपुर नगरपालिका",
    "en_name": "Kalyanpur Municipality",
    "district_id": 16
  },
  {
    "id": 162,
    "name": "नरहा गाउँपालिका",
    "en_name": "Naraha Rural Municipality",
    "district_id": 16
  },
  {
    "id": 163,
    "name": "विष्णुपुर गाउँपालिका",
    "en_name": "Bishnupur Rural Municipality",
    "district_id": 16
  },
  {
    "id": 164,
    "name": "अर्नमा गाउँपालिका",
    "en_name": "Arnama Rural Municipality",
    "district_id": 16
  },
  {
    "id": 165,
    "name": "सुखीपुर नगरपालिका",
    "en_name": "Sukhipur Municipality",
    "district_id": 16
  },
  {
    "id": 166,
    "name": "लक्ष्मीपुर पतारी गाउँपालिका",
    "en_name": "Laxmipur Patari Rural Municipality",
    "district_id": 16
  },
  {
    "id": 167,
    "name": "सखुवानान्कारकट्टी गाउँपालिका",
    "en_name": "Sakhuwa Nankarkatti Rural Municipality",
    "district_id": 16
  },
  {
    "id": 168,
    "name": "भगवानपुर गाउँपालिका",
    "en_name": "Bhagawanpur Rural Municipality",
    "district_id": 16
  },
  {
    "id": 169,
    "name": "नवराजपुर गाउँपालिका",
    "en_name": "Nawarajpur Rural Municipality",
    "district_id": 16
  },
  {
    "id": 170,
    "name": "बरियारपट्टी गाउँपालिका",
    "en_name": "Bariyarpatti Rural Municipality",
    "district_id": 16
  },
  {
    "id": 171,
    "name": "औरही गाउँपालिका",
    "en_name": "Aurahi Rural Municipality",
    "district_id": 16
  },
  {
    "id": 172,
    "name": "सिराहा नगरपालिका",
    "en_name": "Siraha Municipality",
    "district_id": 16
  },
  {
    "id": 173,
    "name": "गणेशमान चारनाथ नगरपालिका",
    "en_name": "Ganeshman Charnath Municipality",
    "district_id": 17
  },
  {
    "id": 174,
    "name": "धनुषाधाम नगरपालिका",
    "en_name": "Dhanushadham Municipality",
    "district_id": 17
  },
  {
    "id": 175,
    "name": "मिथिला नगरपालिका",
    "en_name": "Mithila Municipality",
    "district_id": 17
  },
  {
    "id": 176,
    "name": "बटेश्वर गाउँपालिका",
    "en_name": "Bateshwor Rural Municipality",
    "district_id": 17
  },
  {
    "id": 177,
    "name": "क्षिरेश्वरनाथ नगरपालिका",
    "en_name": "Chhireshwornath Municipality",
    "district_id": 17
  },
  {
    "id": 178,
    "name": "लक्ष्मीनिया गाउँपालिका",
    "en_name": "Laxminiya Rural Municipality",
    "district_id": 17
  },
  {
    "id": 179,
    "name": "मिथिला बिहारी नगरपालिका",
    "en_name": "Mithila Bihari Municipality",
    "district_id": 17
  },
  {
    "id": 180,
    "name": "हंसपुर नगरपालिका",
    "en_name": "Hansapur Municipality",
    "district_id": 17
  },
  {
    "id": 181,
    "name": "सबैला नगरपालिका",
    "en_name": "Sabaila Municipality",
    "district_id": 17
  },
  {
    "id": 182,
    "name": "शहीदनगर नगरपालिका",
    "en_name": "Shahidnagar Municipality",
    "district_id": 17
  },
  {
    "id": 183,
    "name": "कमला नगरपालिका",
    "en_name": "Kamala Municipality",
    "district_id": 17
  },
  {
    "id": 184,
    "name": "जनक नन्दिनी गाउँपालिका",
    "en_name": "Janak Nandini Rural Municipality",
    "district_id": 17
  },
  {
    "id": 185,
    "name": "बिदेह नगरपालिका",
    "en_name": "Bideha Municipality",
    "district_id": 17
  },
  {
    "id": 186,
    "name": "औरही गाउँपालिका",
    "en_name": "Aurahi Rural Municipality",
    "district_id": 17
  },
  {
    "id": 187,
    "name": "जनकपुर उपमहानगरपालिका",
    "en_name": "Janakpur Sub-Metropolitian City",
    "district_id": 17
  },
  {
    "id": 188,
    "name": "धनौजी गाउँपालिका",
    "en_name": "Dhanauji Rural Municipality",
    "district_id": 17
  },
  {
    "id": 189,
    "name": "नगराइन नगरपालिका",
    "en_name": "Nagarain Municipality",
    "district_id": 17
  },
  {
    "id": 190,
    "name": "मुखियापट्टी मुसहरमिया गाउँपालिका",
    "en_name": "Mukhiyapatti Musaharmiya Rural Municipality",
    "district_id": 17
  },
  {
    "id": 191,
    "name": "बर्दिबास नगरपालिका",
    "en_name": "Bardibas Municipality",
    "district_id": 18
  },
  {
    "id": 192,
    "name": "गौशाला नगरपालिका",
    "en_name": "Gaushala Municipality",
    "district_id": 18
  },
  {
    "id": 193,
    "name": "सोनमा गाउँपालिका",
    "en_name": "Sonama Rural Municipality",
    "district_id": 18
  },
  {
    "id": 194,
    "name": "औरही नगरपालिका",
    "en_name": "Aurahi Municipality",
    "district_id": 18
  },
  {
    "id": 195,
    "name": "भँगाहा नगरपालिका",
    "en_name": "Bhangaha Municipality",
    "district_id": 18
  },
  {
    "id": 196,
    "name": "लोहरपट्टी नगरपालिका",
    "en_name": "Loharpatti Municipality",
    "district_id": 18
  },
  {
    "id": 197,
    "name": "बलवा नगरपालिका",
    "en_name": "Balawa Municipality",
    "district_id": 18
  },
  {
    "id": 198,
    "name": "राम गोपालपुर नगरपालिका",
    "en_name": "Ram Gopalpur Municipality",
    "district_id": 18
  },
  {
    "id": 199,
    "name": "साम्सी गाउँपालिका",
    "en_name": "Samsi Rural Municipality",
    "district_id": 18
  },
  {
    "id": 200,
    "name": "मनरा शिसवा नगरपालिका",
    "en_name": "Manara Shisawa Municipality",
    "district_id": 18
  },
  {
    "id": 201,
    "name": "एकडारा गाउँपालिका",
    "en_name": "Ekadara Rural Municipality",
    "district_id": 18
  },
  {
    "id": 202,
    "name": "महोत्तरी गाउँपालिका",
    "en_name": "Mahottari Rural Municipality",
    "district_id": 18
  },
  {
    "id": 203,
    "name": "पिपरा गाउँपालिका",
    "en_name": "Pipara Rural Municipality",
    "district_id": 18
  },
  {
    "id": 204,
    "name": "मटिहानी नगरपालिका",
    "en_name": "Matihani Municipality",
    "district_id": 18
  },
  {
    "id": 205,
    "name": "जलेश्वर नगरपालिका",
    "en_name": "Jaleshwor Municipality",
    "district_id": 18
  },
  {
    "id": 206,
    "name": "लालबन्दी नगरपालिका",
    "en_name": "Lalbandi Municipality",
    "district_id": 19
  },
  {
    "id": 207,
    "name": "हरिवन नगरपालिका",
    "en_name": "Hariwan Municipality",
    "district_id": 19
  },
  {
    "id": 208,
    "name": "बागमती नगरपालिका",
    "en_name": "Bagmati Municipality",
    "district_id": 19
  },
  {
    "id": 209,
    "name": "बरहथवा नगरपालिका",
    "en_name": "Barahathawa Municipality",
    "district_id": 19
  },
  {
    "id": 210,
    "name": "हरिपुर नगरपालिका",
    "en_name": "Haripur Municipality",
    "district_id": 19
  },
  {
    "id": 211,
    "name": "ईश्वरपुर नगरपालिका",
    "en_name": "Ishworpur Municipality",
    "district_id": 19
  },
  {
    "id": 212,
    "name": "हरिपुर्वा नगरपालिका",
    "en_name": "Haripurwa Municipality",
    "district_id": 19
  },
  {
    "id": 213,
    "name": "पर्सा गाउँपालिका",
    "en_name": "Parsa Rural Municipality",
    "district_id": 19
  },
  {
    "id": 214,
    "name": "ब्रह्मपुरी गाउँपालिका",
    "en_name": "Brahmapuri Rural Municipality",
    "district_id": 19
  },
  {
    "id": 215,
    "name": "चन्द्रनगर गाउँपालिका",
    "en_name": "Chandranagar Rural Municipality",
    "district_id": 19
  },
  {
    "id": 216,
    "name": "कविलासी नगरपालिका",
    "en_name": "Kabilashi Municipality",
    "district_id": 19
  },
  {
    "id": 217,
    "name": "चक्रघट्टा गाउँपालिका",
    "en_name": "Chakraghatta Rural Municipality",
    "district_id": 19
  },
  {
    "id": 218,
    "name": "बसबरिया गाउँपालिका",
    "en_name": "Basbariya Rural Municipality",
    "district_id": 19
  },
  {
    "id": 219,
    "name": "धनकौल गाउँपालिका",
    "en_name": "Dhanakaul Rural Municipality",
    "district_id": 19
  },
  {
    "id": 220,
    "name": "रामनगर गाउँपालिका",
    "en_name": "Ramnagar Rural Municipality",
    "district_id": 19
  },
  {
    "id": 221,
    "name": "बलरा नगरपालिका",
    "en_name": "Balara Municipality",
    "district_id": 19
  },
  {
    "id": 222,
    "name": "गोडैटा नगरपालिका",
    "en_name": "Godaita Municipality",
    "district_id": 19
  },
  {
    "id": 223,
    "name": "विष्णु गाउँपालिका",
    "en_name": "Bishnu Rural Municipality",
    "district_id": 19
  },
  {
    "id": 224,
    "name": "कौडेना गाउँपालिका",
    "en_name": "Kaudena Rural Municipality",
    "district_id": 19
  },
  {
    "id": 225,
    "name": "मलंगवा नगरपालिका",
    "en_name": "Malangawa Municipality",
    "district_id": 19
  },
  {
    "id": 226,
    "name": "चन्द्रपुर नगरपालिका",
    "en_name": "Chandrapur Municipality",
    "district_id": 20
  },
  {
    "id": 227,
    "name": "गुजरा नगरपालिका",
    "en_name": "Gujara Municipality",
    "district_id": 20
  },
  {
    "id": 228,
    "name": "फतुवा बिजयपुर नगरपालिका",
    "en_name": "Phatuwa Bijayapur Municipality",
    "district_id": 20
  },
  {
    "id": 229,
    "name": "कटहरिया नगरपालिका",
    "en_name": "Katahariya Municipality",
    "district_id": 20
  },
  {
    "id": 230,
    "name": "बृन्दावन नगरपालिका",
    "en_name": "Brindaban Municipality",
    "district_id": 20
  },
  {
    "id": 231,
    "name": "गढीमाई नगरपालिका",
    "en_name": "Gadhimai Municipality",
    "district_id": 20
  },
  {
    "id": 232,
    "name": "माधव नारायण नगरपालिका",
    "en_name": "Madhav Narayan Municipality",
    "district_id": 20
  },
  {
    "id": 233,
    "name": "गरुडा नगरपालिका",
    "en_name": "Garuda Municipality",
    "district_id": 20
  },
  {
    "id": 234,
    "name": "देवाही गोनाही नगरपालिका",
    "en_name": "Dewahi Gonahi Municipality",
    "district_id": 20
  },
  {
    "id": 235,
    "name": "मौलापुर नगरपालिका",
    "en_name": "Maulapur Municipality",
    "district_id": 20
  },
  {
    "id": 236,
    "name": "बौधीमाई नगरपालिका",
    "en_name": "Boudhimai Municipality",
    "district_id": 20
  },
  {
    "id": 237,
    "name": "परोहा नगरपालिका",
    "en_name": "Paroha Municipality",
    "district_id": 20
  },
  {
    "id": 238,
    "name": "राजपुर नगरपालिका",
    "en_name": "Rajpur Municipality",
    "district_id": 20
  },
  {
    "id": 239,
    "name": "यमुनामाई गाउँपालिका",
    "en_name": "Yamunamai Rural Municipality",
    "district_id": 20
  },
  {
    "id": 240,
    "name": "दुर्गा भगवती गाउँपालिका",
    "en_name": "Durga Bhagawati Rural Municipality",
    "district_id": 20
  },
  {
    "id": 241,
    "name": "राजदेवी नगरपालिका",
    "en_name": "Rajdevi Municipality",
    "district_id": 20
  },
  {
    "id": 242,
    "name": "गौर नगरपालिका",
    "en_name": "Gaur Municipality",
    "district_id": 20
  },
  {
    "id": 243,
    "name": "ईशनाथ नगरपालिका",
    "en_name": "Ishanath Municipality",
    "district_id": 20
  },
  {
    "id": 244,
    "name": "निजगढ नगरपालिका",
    "en_name": "Nijagadh Municipality",
    "district_id": 21
  },
  {
    "id": 245,
    "name": "कोल्हवी नगरपालिका",
    "en_name": "Kolhabi Municipality",
    "district_id": 21
  },
  {
    "id": 246,
    "name": "जीतपुर सिमरा उपमहानगरपालिका",
    "en_name": "Jitpur Simara Sub-Metropolitian City",
    "district_id": 21
  },
  {
    "id": 247,
    "name": "परवानीपुर गाउँपालिका",
    "en_name": "Parawanipur Rural Municipality",
    "district_id": 21
  },
  {
    "id": 248,
    "name": "प्रसौनी गाउँपालिका",
    "en_name": "Prasauni Rural Municipality",
    "district_id": 21
  },
  {
    "id": 249,
    "name": "विश्रामपुर गाउँपालिका",
    "en_name": "Bishrampur Rural Municipality",
    "district_id": 21
  },
  {
    "id": 250,
    "name": "फेटा गाउँपालिका",
    "en_name": "Pheta Rural Municipality",
    "district_id": 21
  },
  {
    "id": 251,
    "name": "कलैया उपमहानगरपालिका",
    "en_name": "Kalaiya Sub-Metropolitian City",
    "district_id": 21
  },
  {
    "id": 252,
    "name": "करैयामाई गाउँपालिका",
    "en_name": "Karaiyamai Rural Municipality",
    "district_id": 21
  },
  {
    "id": 253,
    "name": "बारागढी गाउँपालिका",
    "en_name": "Baragadhi Rural Municipality",
    "district_id": 21
  },
  {
    "id": 254,
    "name": "आदर्श कोटवाल गाउँपालिका",
    "en_name": "Aadarsha Kotwal Rural Municipality",
    "district_id": 21
  },
  {
    "id": 255,
    "name": "सिम्रौनगढ नगरपालिका",
    "en_name": "Simroungadh Municipality",
    "district_id": 21
  },
  {
    "id": 256,
    "name": "पचरौता नगरपालिका",
    "en_name": "Pacharauta Municipality",
    "district_id": 21
  },
  {
    "id": 257,
    "name": "महागढीमाई नगरपालिका",
    "en_name": "Mahagadhimai Municipality",
    "district_id": 21
  },
  {
    "id": 258,
    "name": "देवताल गाउँपालिका",
    "en_name": "Devtal Rural Municipality",
    "district_id": 21
  },
  {
    "id": 259,
    "name": "सुवर्ण गाउँपालिका",
    "en_name": "Subarna Rural Municipality",
    "district_id": 21
  },
  {
    "id": 260,
    "name": "ठोरी (सुवर्णपुर) गाउँपालिका",
    "en_name": "Thori Rural Municipality",
    "district_id": 22
  },
  {
    "id": 261,
    "name": "जिराभवानी गाउँपालिका",
    "en_name": "Jirabhawani Rural Municipality",
    "district_id": 22
  },
  {
    "id": 262,
    "name": "जगरनाथपुर गाउँपालिका",
    "en_name": "Jagarnathpur Rural Municipality",
    "district_id": 22
  },
  {
    "id": 263,
    "name": "पटेर्वा सुगौली गाउँपालिका",
    "en_name": "Paterwa Sugauli Rural Municipality",
    "district_id": 22
  },
  {
    "id": 264,
    "name": "सखुवा प्रसौनी गाउँपालिका",
    "en_name": "Sakhuwa Prasauni Rural Municipality",
    "district_id": 22
  },
  {
    "id": 265,
    "name": "पर्सागढी नगरपालिका",
    "en_name": "Parsagadhi Municipality",
    "district_id": 22
  },
  {
    "id": 266,
    "name": "बिरगन्ज महानगरपालिका",
    "en_name": "Birgunj Metropolitian City",
    "district_id": 22
  },
  {
    "id": 267,
    "name": "बहुदरमाई नगरपालिका",
    "en_name": "Bahudarmai Municipality",
    "district_id": 22
  },
  {
    "id": 268,
    "name": "पोखरिया नगरपालिका",
    "en_name": "Pokhariya Municipality",
    "district_id": 22
  },
  {
    "id": 269,
    "name": "कालिकामाई गाउँपालिका",
    "en_name": "Kalikamai Rural Municipality",
    "district_id": 22
  },
  {
    "id": 270,
    "name": "धोबीनी गाउँपालिका",
    "en_name": "Dhobini Rural Municipality",
    "district_id": 22
  },
  {
    "id": 271,
    "name": "छिपहरमाई गाउँपालिका",
    "en_name": "Chhipaharmai Rural Municipality",
    "district_id": 22
  },
  {
    "id": 272,
    "name": "पकाहा मैनपुर गाउँपालिका",
    "en_name": "Pakaha Mainpur Rural Municipality",
    "district_id": 22
  },
  {
    "id": 273,
    "name": "बिन्दबासिनी गाउँपालिका",
    "en_name": "Bindabasini Rural Municipality",
    "district_id": 22
  },
  {
    "id": 274,
    "name": "गौरिशंकर गाउँपालिका",
    "en_name": "Gaurishankar Rural Municipality",
    "district_id": 23
  },
  {
    "id": 275,
    "name": "बिगु गाउँपालिका",
    "en_name": "Bigu Rural Municipality",
    "district_id": 23
  },
  {
    "id": 276,
    "name": "कालिन्चोक गाउँपालिका",
    "en_name": "Kalinchowk Rural Municipality",
    "district_id": 23
  },
  {
    "id": 277,
    "name": "बैतेधर गाउँपालिका",
    "en_name": "Baitedhar Rural Municipality",
    "district_id": 23
  },
  {
    "id": 278,
    "name": "जिरी नगरपालिका",
    "en_name": "Jiri Municipality",
    "district_id": 23
  },
  {
    "id": 279,
    "name": "तामाकोशी गाउँपालिका",
    "en_name": "Tamakoshi Rural Municipality",
    "district_id": 23
  },
  {
    "id": 280,
    "name": "मेलुङ्ग गाउँपालिका",
    "en_name": "Melung Rural Municipality",
    "district_id": 23
  },
  {
    "id": 281,
    "name": "शैलुड० गाउँपालिका",
    "en_name": "Shailung Rural Municipality",
    "district_id": 23
  },
  {
    "id": 282,
    "name": "भिमेश्वर नगरपालिका",
    "en_name": "Bhimeshwor Municipality",
    "district_id": 23
  },
  {
    "id": 283,
    "name": "भोटेकोशी गाउँपालिका",
    "en_name": "Bhotekoshi Rural Municipality",
    "district_id": 24
  },
  {
    "id": 284,
    "name": "जुगल गाउँपालिका",
    "en_name": "Jugal Rural Municipality",
    "district_id": 24
  },
  {
    "id": 285,
    "name": "पाँचपोखरी थाड०पाल गाउँपालिका",
    "en_name": "Panchpokhari Thangpal Rural Municipality",
    "district_id": 24
  },
  {
    "id": 286,
    "name": "हेलम्बु गाउँपालिका",
    "en_name": "Helambu Rural Municipality",
    "district_id": 24
  },
  {
    "id": 287,
    "name": "मेलम्ची नगरपालिका",
    "en_name": "Melanchi Municipality",
    "district_id": 24
  },
  {
    "id": 288,
    "name": "ईन्द्रावती गाउँपालिका",
    "en_name": "Indrawoti Rural Municipality",
    "district_id": 24
  },
  {
    "id": 289,
    "name": "चौतारा साँगाचोकगढी नगरपालिका",
    "en_name": "Choutara Sangachowkgadhi Municipality",
    "district_id": 24
  },
  {
    "id": 290,
    "name": "बलेफी गाउँपालिका",
    "en_name": "Balephi Rural Municipality",
    "district_id": 24
  },
  {
    "id": 291,
    "name": "बाह्रबिसे नगरपालिका",
    "en_name": "Bahrabise Municipality",
    "district_id": 24
  },
  {
    "id": 292,
    "name": "त्रिपुरासुन्दरी गाउँपालिका",
    "en_name": "Tripurasundari Rural Municipality",
    "district_id": 24
  },
  {
    "id": 293,
    "name": "लिसंखु पाखर गाउँपालिका",
    "en_name": "Lisankhu Pakhar Rural Municipality",
    "district_id": 24
  },
  {
    "id": 294,
    "name": "सुनकोशी गाउँपालिका",
    "en_name": "Sunkoshi Rural Municipality",
    "district_id": 24
  },
  {
    "id": 295,
    "name": "गोसाईकुण्ड गाउँपालिका",
    "en_name": "Gosaikunda Rural Municipality",
    "district_id": 25
  },
  {
    "id": 296,
    "name": "पार्वतीकुण्ड गाउँपालिका",
    "en_name": "Parbatikunda Rural Municipality",
    "district_id": 25
  },
  {
    "id": 297,
    "name": "उत्तरगया गाउँपालिका",
    "en_name": "Uttargaya Rural Municipality",
    "district_id": 25
  },
  {
    "id": 298,
    "name": "कालिका गाउँपालिका",
    "en_name": "Kalika Rural Municipality",
    "district_id": 25
  },
  {
    "id": 299,
    "name": "नौकुण्ड गाउँपालिका",
    "en_name": "Naukunda Rural Municipality",
    "district_id": 25
  },
  {
    "id": 300,
    "name": "रुबी भ्याली गाउँपालिका",
    "en_name": "Rubi Valley Rural Municipality",
    "district_id": 26
  },
  {
    "id": 301,
    "name": "खनियाबास गाउँपालिका",
    "en_name": "Khaniyabas Rural Municipality",
    "district_id": 26
  },
  {
    "id": 302,
    "name": "गंङ्गा जमुना गाउँपालिका",
    "en_name": "Ganga Jamuna Rural Municipality",
    "district_id": 26
  },
  {
    "id": 303,
    "name": "त्रिपुरासुन्दरी गाउँपालिका",
    "en_name": "Tripurasundari Rural Municipality",
    "district_id": 26
  },
  {
    "id": 304,
    "name": "नेत्रावती गाउँपालिका",
    "en_name": "Netrawati Rural Municipality",
    "district_id": 26
  },
  {
    "id": 305,
    "name": "नीलकण्ठ नगरपालिका",
    "en_name": "Nilkhantha Municipality",
    "district_id": 26
  },
  {
    "id": 306,
    "name": "ज्वालामुखी गाउँपालिका",
    "en_name": "Jwalamukhi Rural Municipality",
    "district_id": 26
  },
  {
    "id": 307,
    "name": "सिद्धलेक गाउँपालिका",
    "en_name": "Siddhalek Rural Municipality",
    "district_id": 26
  },
  {
    "id": 308,
    "name": "बेनीघाट रोराङ्ग गाउँपालिका",
    "en_name": "Benighat Rorang Rural Municipality",
    "district_id": 26
  },
  {
    "id": 309,
    "name": "गजुरी गाउँपालिका",
    "en_name": "Gajuri Rural Municipality",
    "district_id": 26
  },
  {
    "id": 310,
    "name": "गल्छी गाउँपालिका",
    "en_name": "Galchhi Rural Municipality",
    "district_id": 26
  },
  {
    "id": 311,
    "name": "थाक्रे गाउँपालिका",
    "en_name": "Thakre Rural Municipality",
    "district_id": 26
  },
  {
    "id": 312,
    "name": "धुनीबेंशी नगरपालिका",
    "en_name": "Dhunibenshi Municipality",
    "district_id": 26
  },
  {
    "id": 313,
    "name": "दुप्चेश्वर गाउँपालिका",
    "en_name": "Dupcheshwor Rural Municipality",
    "district_id": 27
  },
  {
    "id": 314,
    "name": "तादी गाउँपालिका",
    "en_name": "Tadi Rural Municipality",
    "district_id": 27
  },
  {
    "id": 315,
    "name": "सुर्यगढी गाउँपालिका",
    "en_name": "Suryagadhi Rural Municipality",
    "district_id": 27
  },
  {
    "id": 316,
    "name": "बिदुर नगरपालिका",
    "en_name": "Bidur Municipality",
    "district_id": 27
  },
  {
    "id": 317,
    "name": "किस्पाङ्ग गाउँपालिका",
    "en_name": "Kispang Rural Municipality",
    "district_id": 27
  },
  {
    "id": 318,
    "name": "मेघाङ्ग गाउँपालिका",
    "en_name": "Meghang Rural Municipality",
    "district_id": 27
  },
  {
    "id": 319,
    "name": "तारकेश्वर गाउँपालिका",
    "en_name": "Tarakeshwor Rural Municipality",
    "district_id": 27
  },
  {
    "id": 320,
    "name": "बेलकोटगढी नगरपालिका",
    "en_name": "Belkotgadhi Municipality",
    "district_id": 27
  },
  {
    "id": 321,
    "name": "लिखु गाउँपालिका",
    "en_name": "Likhu Rural Municipality",
    "district_id": 27
  },
  {
    "id": 322,
    "name": "पन्चकन्या गाउँपालिका",
    "en_name": "Panchakanya Rural Municipality",
    "district_id": 27
  },
  {
    "id": 323,
    "name": "शिवपुरी गाउँपालिका",
    "en_name": "Shivapuri Rural Municipality",
    "district_id": 27
  },
  {
    "id": 324,
    "name": "ककनी गाउँपालिका",
    "en_name": "Kakani Rural Municipality",
    "district_id": 27
  },
  {
    "id": 325,
    "name": "शंङ्खरापुर नगरपालिका",
    "en_name": "Shankharapur Municipality",
    "district_id": 28
  },
  {
    "id": 326,
    "name": "कागेश्वरी मनहरा नगरपालिका",
    "en_name": "Kageshwori Manahara Municipality",
    "district_id": 28
  },
  {
    "id": 327,
    "name": "गोकर्णेश्वर नगरपालिका",
    "en_name": "Gokarneshwor Municipality",
    "district_id": 28
  },
  {
    "id": 328,
    "name": "बुढानिलकण्ठ नगरपालिका",
    "en_name": "Budhanilkhantha Municipality",
    "district_id": 28
  },
  {
    "id": 329,
    "name": "टोखा नगरपालिका",
    "en_name": "Tokha Municipality",
    "district_id": 28
  },
  {
    "id": 330,
    "name": "तारकेश्वर नगरपालिका",
    "en_name": "Tarakeshwor Municipality",
    "district_id": 28
  },
  {
    "id": 331,
    "name": "नागार्जुन नगरपालिका",
    "en_name": "Nagarjun Municipality",
    "district_id": 28
  },
  {
    "id": 332,
    "name": "काठमाण्डौ महानगरपालिका",
    "en_name": "Kathmandu Metropolitian City",
    "district_id": 28
  },
  {
    "id": 333,
    "name": "किर्तिपुर नगरपालिका",
    "en_name": "Kirtipur Municipality",
    "district_id": 28
  },
  {
    "id": 334,
    "name": "चन्द्रागिरी नगरपालिका",
    "en_name": "Chandragiri Municipality",
    "district_id": 28
  },
  {
    "id": 335,
    "name": "दक्षिणकाली नगरपालिका",
    "en_name": "Dakshinkali Municipality",
    "district_id": 28
  },
  {
    "id": 336,
    "name": "चाँगुनारायण नगरपालिका",
    "en_name": "Changunarayan Municipality",
    "district_id": 29
  },
  {
    "id": 337,
    "name": "भक्तपुर नगरपालिका",
    "en_name": "Bhaktapur Municipality",
    "district_id": 29
  },
  {
    "id": 338,
    "name": "मध्यपुर थिमी नगरपालिका",
    "en_name": "Madhyapur Thimi Municipality",
    "district_id": 29
  },
  {
    "id": 339,
    "name": "सूर्यविनायक नगरपालिका",
    "en_name": "Suryabinayak Municipality",
    "district_id": 29
  },
  {
    "id": 340,
    "name": "महालक्ष्मी नगरपालिका",
    "en_name": "Mahalaxmi Municipality",
    "district_id": 30
  },
  {
    "id": 341,
    "name": "ललितपुर महानगरपालिका",
    "en_name": "Lalitpur Metropolitian City",
    "district_id": 30
  },
  {
    "id": 342,
    "name": "गोदावरी नगरपालिका",
    "en_name": "Godawari Municipality",
    "district_id": 30
  },
  {
    "id": 343,
    "name": "कोन्ज्योसोम गाउँपालिका",
    "en_name": "Konjyosom Rural Municipality",
    "district_id": 30
  },
  {
    "id": 344,
    "name": "महाङ्काल गाउँपालिका",
    "en_name": "Mahankal Rural Municipality",
    "district_id": 30
  },
  {
    "id": 345,
    "name": "बाग्मती गाउँपालिका",
    "en_name": "Bagmati Rural Municipality",
    "district_id": 30
  },
  {
    "id": 346,
    "name": "चौरीदेउराली गाउँपालिका",
    "en_name": "Chauri Deurali Rural Municipality",
    "district_id": 31
  },
  {
    "id": 347,
    "name": "भुम्लु गाउँपालिका",
    "en_name": "Bhumlu Rural Municipality",
    "district_id": 31
  },
  {
    "id": 348,
    "name": "मण्डन देउपुर नगरपालिका",
    "en_name": "Mandan Deupur Municipality",
    "district_id": 31
  },
  {
    "id": 349,
    "name": "बनेपा नगरपालिका",
    "en_name": "Banepa Municipality",
    "district_id": 31
  },
  {
    "id": 350,
    "name": "धुलिखेल नगरपालिका",
    "en_name": "Dhulikhel Municipality",
    "district_id": 31
  },
  {
    "id": 351,
    "name": "पाँचखाल नगरपालिका",
    "en_name": "Panchkhal Municipality",
    "district_id": 31
  },
  {
    "id": 352,
    "name": "तेमाल गाउँपालिका",
    "en_name": "Temal Rural Municipality",
    "district_id": 31
  },
  {
    "id": 353,
    "name": "नमोबुद्ध नगरपालिका",
    "en_name": "Namobuddha Municipality",
    "district_id": 31
  },
  {
    "id": 354,
    "name": "पनौती नगरपालिका",
    "en_name": "Panauti Municipality",
    "district_id": 31
  },
  {
    "id": 355,
    "name": "बेथानचोक गाउँपालिका",
    "en_name": "Bethanchowk Rural Municipality",
    "district_id": 31
  },
  {
    "id": 356,
    "name": "रोशी गाउँपालिका",
    "en_name": "Roshi Rural Municipality",
    "district_id": 31
  },
  {
    "id": 357,
    "name": "महाभारत गाउँपालिका",
    "en_name": "Mahabharat Rural Municipality",
    "district_id": 31
  },
  {
    "id": 358,
    "name": "खानीखोला गाउँपालिका",
    "en_name": "Khanikhola Rural Municipality",
    "district_id": 31
  },
  {
    "id": 359,
    "name": "उमाकुण्ड गाउँपालिका",
    "en_name": "Umakunda Rural Municipality",
    "district_id": 32
  },
  {
    "id": 360,
    "name": "गोकुलगङ्गा गाउँपालिका",
    "en_name": "Gokulganga Rural Municipality",
    "district_id": 32
  },
  {
    "id": 361,
    "name": "लिखु गाउँपालिका",
    "en_name": "Likhu Rural Municipality",
    "district_id": 32
  },
  {
    "id": 362,
    "name": "रामेछाप नगरपालिका",
    "en_name": "Ramechhap Municipality",
    "district_id": 32
  },
  {
    "id": 363,
    "name": "मन्थली नगरपालिका",
    "en_name": "Manthali  Municipality",
    "district_id": 32
  },
  {
    "id": 364,
    "name": "खाँडादेवी गाउँपालिका",
    "en_name": "Khandadevi Rural Municipality",
    "district_id": 32
  },
  {
    "id": 365,
    "name": "दोरम्बा गाउँपालिका",
    "en_name": "Doramba Rural Municipality",
    "district_id": 32
  },
  {
    "id": 366,
    "name": "सुनापती गाउँपालिका",
    "en_name": "Sunapati Rural Municipality",
    "district_id": 32
  },
  {
    "id": 367,
    "name": "दुधौली नगरपालिका",
    "en_name": "Dudhouli Municipality",
    "district_id": 33
  },
  {
    "id": 368,
    "name": "फिक्कल गाउँपालिका",
    "en_name": "Phikkal Rural Municipality",
    "district_id": 33
  },
  {
    "id": 369,
    "name": "तीनपाटन गाउँपालिका",
    "en_name": "Tinpatan Rural Municipality",
    "district_id": 33
  },
  {
    "id": 370,
    "name": "गोलन्जोर गाउँपालिका",
    "en_name": "Golanjor Rural Municipality",
    "district_id": 33
  },
  {
    "id": 371,
    "name": "कमलामाई नगरपालिका",
    "en_name": "Kamalamai Municipality",
    "district_id": 33
  },
  {
    "id": 372,
    "name": "सुनकोशी गाउँपालिका",
    "en_name": "Sunkoshi Rural Municipality",
    "district_id": 33
  },
  {
    "id": 373,
    "name": "ध्याङलेख गाउँपालिका",
    "en_name": "Ghyanglekha Rural Municipality",
    "district_id": 33
  },
  {
    "id": 374,
    "name": "मरिण गाउँपालिका",
    "en_name": "Marin Rural Municipality",
    "district_id": 33
  },
  {
    "id": 375,
    "name": "हरिहरपुरगढी गाउँपालिका",
    "en_name": "Hariharpurgaghi Rural Municipality",
    "district_id": 33
  },
  {
    "id": 376,
    "name": "ईन्द्रसरोवर गाउँपालिका",
    "en_name": "Indrasarowar Rural Municipality",
    "district_id": 34
  },
  {
    "id": 377,
    "name": "थाहा नगरपालिका",
    "en_name": "Thaha Municipality",
    "district_id": 34
  },
  {
    "id": 378,
    "name": "कैलाश गाउँपालिका",
    "en_name": "Kailash Rural Municipality",
    "district_id": 34
  },
  {
    "id": 379,
    "name": "राक्सिराङ्ग गाउँपालिका",
    "en_name": "Raksirang Rural Municipality",
    "district_id": 34
  },
  {
    "id": 380,
    "name": "मनहरी गाउँपालिका",
    "en_name": "Manahari Rural Municipality",
    "district_id": 34
  },
  {
    "id": 381,
    "name": "हेटौडा उपमहानगरपालिका",
    "en_name": "Hetauda Sub-Metropolitian City",
    "district_id": 34
  },
  {
    "id": 382,
    "name": "भिमफेदी गाउँपालिका",
    "en_name": "Bhimphedi Rural Municipality",
    "district_id": 34
  },
  {
    "id": 383,
    "name": "मकवानपुरगढी गाउँपालिका",
    "en_name": "Makawanpurgadhi Rural Municipality",
    "district_id": 34
  },
  {
    "id": 384,
    "name": "बकैया गाउँपालिका",
    "en_name": "Bakaiya Rural Municipality",
    "district_id": 34
  },
  {
    "id": 385,
    "name": "बाग्मती गाउँपालिका",
    "en_name": "Bagmati Rural Municipality",
    "district_id": 34
  },
  {
    "id": 386,
    "name": "राप्ती नगरपालिका",
    "en_name": "Rapti Municipality",
    "district_id": 35
  },
  {
    "id": 387,
    "name": "कालिका नगरपालिका",
    "en_name": "Kalika Municipality",
    "district_id": 35
  },
  {
    "id": 388,
    "name": "इच्छाकामना गाउँपालिका",
    "en_name": "Ichchha Kamana Rural Municipality",
    "district_id": 35
  },
  {
    "id": 389,
    "name": "भरतपुर महानगरपालिका",
    "en_name": "Bharatpur Metropolitian City",
    "district_id": 35
  },
  {
    "id": 390,
    "name": "रत्ननगर नगरपालिका",
    "en_name": "Ratnanagar Municipality",
    "district_id": 35
  },
  {
    "id": 391,
    "name": "खैरहनी नगरपालिका",
    "en_name": "Khairahani Municipality",
    "district_id": 35
  },
  {
    "id": 392,
    "name": "माडी नगरपालिका",
    "en_name": "Madi Municipality",
    "district_id": 35
  },
  {
    "id": 393,
    "name": "चुमनुब्री गाउँपालिका",
    "en_name": "Chumanubri Rural Municipality",
    "district_id": 36
  },
  {
    "id": 394,
    "name": "अजिरकोट गाउँपालिका",
    "en_name": "Ajirkot Rural Municipality",
    "district_id": 36
  },
  {
    "id": 395,
    "name": "सुलीकोट गाउँपालिका",
    "en_name": "Sulikot Rural Municipality",
    "district_id": 36
  },
  {
    "id": 396,
    "name": "धार्चे गाउँपालिका",
    "en_name": "Dharche Rural Municipality",
    "district_id": 36
  },
  {
    "id": 397,
    "name": "आरुघाट गाउँपालिका",
    "en_name": "Aarughat Rural Municipality",
    "district_id": 36
  },
  {
    "id": 398,
    "name": "भिमसेन गाउँपालिका",
    "en_name": "Bhimsen Rural Municipality",
    "district_id": 36
  },
  {
    "id": 399,
    "name": "सिरानचोक गाउँपालिका",
    "en_name": "Siranchowk Rural Municipality",
    "district_id": 36
  },
  {
    "id": 400,
    "name": "पालुङ्गटार नगरपालिका",
    "en_name": "Palungtar Municipality",
    "district_id": 36
  },
  {
    "id": 401,
    "name": "गोरखा नगरपालिका",
    "en_name": "Gorkha Municipality",
    "district_id": 36
  },
  {
    "id": 402,
    "name": "शहीद लखन गाउँपालिका",
    "en_name": "Shahid Lakhan Rural Municipality",
    "district_id": 36
  },
  {
    "id": 403,
    "name": "गण्डकी गाउँपालिका",
    "en_name": "Gandaki Rural Municipality",
    "district_id": 36
  },
  {
    "id": 404,
    "name": "नारफु गाउँपालिका",
    "en_name": "Naraphu Rural Municipality",
    "district_id": 37
  },
  {
    "id": 405,
    "name": "नेस्याङ गाउँपालिका",
    "en_name": "Neshang Rural Municipality",
    "district_id": 37
  },
  {
    "id": 406,
    "name": "चामे गाउँपालिका",
    "en_name": "Chame Rural Municipality",
    "district_id": 37
  },
  {
    "id": 407,
    "name": "नाशोङ गाउँपालिका",
    "en_name": "Nashong Rural Municipality",
    "district_id": 37
  },
  {
    "id": 408,
    "name": "दालोमे गाउँपालिका",
    "en_name": "Dalome Rural Municipality",
    "district_id": 38
  },
  {
    "id": 409,
    "name": "घरपझोङ गाउँपालिका",
    "en_name": "Gharpajhong Rural Municipality",
    "district_id": 38
  },
  {
    "id": 410,
    "name": "बाह्रगाउँ मुक्तिक्षेत्र गाउँपालिका",
    "en_name": "Bahragaun Muktikshetra Rural Municipality",
    "district_id": 38
  },
  {
    "id": 411,
    "name": "लोमन्थाङ गाउँपालिका",
    "en_name": "Lomanthang Rural Municipality",
    "district_id": 38
  },
  {
    "id": 412,
    "name": "थासाङ गाउँपालिका",
    "en_name": "Thasang Rural Municipality",
    "district_id": 38
  },
  {
    "id": 413,
    "name": "अन्नपूर्ण गाउँपालिका",
    "en_name": "Annapurna Rural Municipality",
    "district_id": 39
  },
  {
    "id": 414,
    "name": "रघुगंगा गाउँपालिका",
    "en_name": "Raghuganga Rural Municipality",
    "district_id": 39
  },
  {
    "id": 415,
    "name": "धवलागिरी गाउँपालिका",
    "en_name": "Dhawalagiri Rural Municipality",
    "district_id": 39
  },
  {
    "id": 416,
    "name": "मालिका गाउँपालिका",
    "en_name": "Malika Rural Municipality",
    "district_id": 39
  },
  {
    "id": 417,
    "name": "मंगला गाउँपालिका",
    "en_name": "Mangala Rural Municipality",
    "district_id": 39
  },
  {
    "id": 418,
    "name": "बेनी नगरपालिका",
    "en_name": "Beni Municipality",
    "district_id": 39
  },
  {
    "id": 419,
    "name": "मादी गाउँपालिका",
    "en_name": "Madi Rural Municipality",
    "district_id": 40
  },
  {
    "id": 420,
    "name": "माछापुच्छ्र्े गाउँपालिका",
    "en_name": "Machhapuchchhre Rural Municipality",
    "district_id": 40
  },
  {
    "id": 421,
    "name": "अन्नपूर्ण गाउँपालिका",
    "en_name": "Annapurna Rural Municipality",
    "district_id": 40
  },
  {
    "id": 422,
    "name": "पोखरा लेखनाथ महानगरपालिका",
    "en_name": "Pokhara Lekhnath Metropolitian City",
    "district_id": 40
  },
  {
    "id": 423,
    "name": "रूपा गाउँपालिका",
    "en_name": "Rupa Rural Municipality",
    "district_id": 40
  },
  {
    "id": 424,
    "name": "दोर्दी गाउँपालिका",
    "en_name": "Dordi Rural Municipality",
    "district_id": 41
  },
  {
    "id": 425,
    "name": "मस्र्याङ्गदी गाउँपालिका",
    "en_name": "Marshyangdi Rural Municipality",
    "district_id": 41
  },
  {
    "id": 426,
    "name": "क्ब्होलासोथार गाउँपालिका",
    "en_name": "Kwhola Sothar Rural Municipality",
    "district_id": 41
  },
  {
    "id": 427,
    "name": "मध्यनेपाल नगरपालिका",
    "en_name": "Madhya Nepal Municipality",
    "district_id": 41
  },
  {
    "id": 428,
    "name": "बेंसीशहर नगरापालिका",
    "en_name": "Bensi Shahar Municipality",
    "district_id": 41
  },
  {
    "id": 429,
    "name": "सुन्दरबजार नगरपालिका",
    "en_name": "Sundarbazar Municipality",
    "district_id": 41
  },
  {
    "id": 430,
    "name": "राईनास नगरपालिका",
    "en_name": "Rainas Municipality",
    "district_id": 41
  },
  {
    "id": 431,
    "name": "दुधपोखरी गाउँपालिका",
    "en_name": "Dudhapokhari Rural Municipality",
    "district_id": 41
  },
  {
    "id": 432,
    "name": "भानु नगरपालिका",
    "en_name": "Bhanu Municipality",
    "district_id": 42
  },
  {
    "id": 433,
    "name": "ब्यास नगरपालिका",
    "en_name": "Byas Municipality",
    "district_id": 42
  },
  {
    "id": 434,
    "name": "म्याग्दे गाउँपालिका",
    "en_name": "Myagde Rural Municipality",
    "district_id": 42
  },
  {
    "id": 435,
    "name": "शुक्लागण्डकी नगरपालिका",
    "en_name": "Shuklagandaki Municipality",
    "district_id": 42
  },
  {
    "id": 436,
    "name": "भिमाद नगरपालिका",
    "en_name": "Bhimad Municipality",
    "district_id": 42
  },
  {
    "id": 437,
    "name": "घिरिङ्ग गाउँपालिका",
    "en_name": "Ghiring Rural Municipality",
    "district_id": 42
  },
  {
    "id": 438,
    "name": "ऋषिङ्ग गाउँपालिका",
    "en_name": "Rhishing Rural Municipality",
    "district_id": 42
  },
  {
    "id": 439,
    "name": "देवघाट गाउँपालिका",
    "en_name": "Devghat Rural Municipality",
    "district_id": 42
  },
  {
    "id": 440,
    "name": "बन्दिपुर गाउँपालिका",
    "en_name": "Bandipur Rural Municipality",
    "district_id": 42
  },
  {
    "id": 441,
    "name": "आँबुखैरेनी गाउँपालिका",
    "en_name": "Aanbu Khaireni Rural Municipality",
    "district_id": 42
  },
  {
    "id": 442,
    "name": "गैडाकोट नगरपालिका",
    "en_name": "Gaidakot Municipality",
    "district_id": 43
  },
  {
    "id": 443,
    "name": "बुलिङ्गटार गाउँपालिका",
    "en_name": "Bulingtar Rural Municipality",
    "district_id": 43
  },
  {
    "id": 444,
    "name": "बुङ्दीकाली गाउँपालिका",
    "en_name": "Bungdikali Rural Municipality",
    "district_id": 43
  },
  {
    "id": 445,
    "name": "हुप्सेकोट गाउँपालिका",
    "en_name": "Hupsekot Rural Municipality",
    "district_id": 43
  },
  {
    "id": 446,
    "name": "देवचुली नगरपालिका",
    "en_name": "Devchuli Municipality",
    "district_id": 43
  },
  {
    "id": 447,
    "name": "कावासोती नगरपालिका",
    "en_name": "Kawasoti Municipality",
    "district_id": 43
  },
  {
    "id": 448,
    "name": "मध्यबिन्दु नगरपालिका",
    "en_name": "Madhya Bindu Municipality",
    "district_id": 43
  },
  {
    "id": 449,
    "name": "बिनयी त्रिवेणी गाउँपालिका",
    "en_name": "Binayi Tribeni Rural Municipality",
    "district_id": 43
  },
  {
    "id": 450,
    "name": "पुतलीबजार नगरपालिका",
    "en_name": "Putalibazar Municipality",
    "district_id": 44
  },
  {
    "id": 451,
    "name": "फेदीखोला गाउँपालिका",
    "en_name": "Phedikhola Rural Municipality",
    "district_id": 44
  },
  {
    "id": 452,
    "name": "आँधिखोला गाउँपालिका",
    "en_name": "Aandhikhola Rural Municipality",
    "district_id": 44
  },
  {
    "id": 453,
    "name": "अर्जुनचौपारी गाउँपालिका",
    "en_name": "Arjun Choupari Rural Municipality",
    "district_id": 44
  },
  {
    "id": 454,
    "name": "भीरकोट नगरपालिका",
    "en_name": "Bhirkot Municipaity",
    "district_id": 44
  },
  {
    "id": 455,
    "name": "बिरुवा गाउँपालिका",
    "en_name": "Biruwa Rural Municipality",
    "district_id": 44
  },
  {
    "id": 456,
    "name": "हरिनास गाउँपालिका",
    "en_name": "Harinas Rural Municipality",
    "district_id": 44
  },
  {
    "id": 457,
    "name": "चापाकोट नगरपालिका",
    "en_name": "Chapakot Municipality",
    "district_id": 44
  },
  {
    "id": 458,
    "name": "वालिङ्ग नगरपालिका",
    "en_name": "Walling Municipality",
    "district_id": 44
  },
  {
    "id": 459,
    "name": "गल्याङ नगरपालिका",
    "en_name": "Galyang Municipality",
    "district_id": 44
  },
  {
    "id": 460,
    "name": "कालीगण्डकी गाउँपालिका",
    "en_name": "Kaligandaki Rural Municipality",
    "district_id": 44
  },
  {
    "id": 461,
    "name": "मोदी गाउँपालिका",
    "en_name": "Modi Rural Municipality",
    "district_id": 45
  },
  {
    "id": 462,
    "name": "जलजला गाउँपालिका",
    "en_name": "Jaljala Rural Municipality",
    "district_id": 45
  },
  {
    "id": 463,
    "name": "कुश्मा नगरपालिका",
    "en_name": "Kushma Municipality",
    "district_id": 45
  },
  {
    "id": 464,
    "name": "फलेबास नगरपालिका",
    "en_name": "Phalebas Municipality",
    "district_id": 45
  },
  {
    "id": 465,
    "name": "महाशिला गाउँपालिका",
    "en_name": "Mahashila Rural Municipality",
    "district_id": 45
  },
  {
    "id": 466,
    "name": "बिहादी गाउँपालिका",
    "en_name": "Bihadi Rural Municipality",
    "district_id": 45
  },
  {
    "id": 467,
    "name": "पैयुं गाउँपालिका",
    "en_name": "Paiyu Rural Municipality",
    "district_id": 45
  },
  {
    "id": 468,
    "name": "बाग्लुङ्ग नगरपालिका",
    "en_name": "Baglung Municipality",
    "district_id": 46
  },
  {
    "id": 469,
    "name": "काठेखोला गाउँपालिका",
    "en_name": "Kathekhola Rural Municipality",
    "district_id": 46
  },
  {
    "id": 470,
    "name": "ताराखोला गाउँपालिका",
    "en_name": "Tarakhola Rural Municipality",
    "district_id": 46
  },
  {
    "id": 471,
    "name": "तमानखोला गाउँपालिका",
    "en_name": "Tamankhola Rural Municipality",
    "district_id": 46
  },
  {
    "id": 472,
    "name": "ढोरपाटन नगरपालिका",
    "en_name": "Dhorpatan Municipality",
    "district_id": 46
  },
  {
    "id": 473,
    "name": "निसीखोला गाउँपालिका",
    "en_name": "Nisikhola Rural Municipality",
    "district_id": 46
  },
  {
    "id": 474,
    "name": "बडिगाड गाउँपालिका",
    "en_name": "Badigad Rural Municipality",
    "district_id": 46
  },
  {
    "id": 475,
    "name": "गल्कोट नगरपालिका",
    "en_name": "Galkot Municipality",
    "district_id": 46
  },
  {
    "id": 476,
    "name": "बरेङ गाउँपालिका",
    "en_name": "Bareng Rural Municipality",
    "district_id": 46
  },
  {
    "id": 477,
    "name": "जैमुनी नगरपालिका",
    "en_name": "Jaimuni Municipality",
    "district_id": 46
  },
  {
    "id": 478,
    "name": "पुथा उत्तरगंगा गाउँपालिका",
    "en_name": "Putha Uttanganga Rural Municipality",
    "district_id": 47
  },
  {
    "id": 479,
    "name": "सिस्ने गाउँपालिका",
    "en_name": "Sisne Rural Municipality",
    "district_id": 47
  },
  {
    "id": 480,
    "name": "भूमे गाउँपालिका",
    "en_name": "Bhoome Rural Municipality",
    "district_id": 47
  },
  {
    "id": 481,
    "name": "सुनछहरी गाउँपालिका",
    "en_name": "Sunchhahari Rural Municipality",
    "district_id": 48
  },
  {
    "id": 482,
    "name": "थबाङ्ग गाउँपालिका",
    "en_name": "Thawang Rural Municipality",
    "district_id": 48
  },
  {
    "id": 483,
    "name": "दुईखोली गाउँपालिका",
    "en_name": "Duikholi Rural Municipality",
    "district_id": 48
  },
  {
    "id": 484,
    "name": "सुकिदह गाउँपालिका",
    "en_name": "Sukidaha Rural Municipality",
    "district_id": 48
  },
  {
    "id": 485,
    "name": "माडी गाउँपालिका",
    "en_name": "Madi Rural Municipality",
    "district_id": 48
  },
  {
    "id": 486,
    "name": "त्रिवेणी गाउँपालिका",
    "en_name": "Tribeni Rural Municipality",
    "district_id": 48
  },
  {
    "id": 487,
    "name": "रोल्पा नगरपालिका",
    "en_name": "Rolpa Municipality",
    "district_id": 48
  },
  {
    "id": 488,
    "name": "रुन्टीगढी गाउँपालिका",
    "en_name": "Runtigadhi Rural Municipality",
    "district_id": 48
  },
  {
    "id": 489,
    "name": "सुवर्णावती गाउँपालिका",
    "en_name": "Subarnabati Rural Municipality",
    "district_id": 48
  },
  {
    "id": 490,
    "name": "लुङ्ग्री गाउँपालिका",
    "en_name": "Lungri Rural Municipality",
    "district_id": 48
  },
  {
    "id": 491,
    "name": "गौमुखी गाउँपालिका",
    "en_name": "Gaumukhi Rural Municipality",
    "district_id": 49
  },
  {
    "id": 492,
    "name": "नौबहिनी गाउँपालिका",
    "en_name": "Naubahini Rural Municipality",
    "district_id": 49
  },
  {
    "id": 493,
    "name": "झिमरुक गाउँपालिका",
    "en_name": "Jhimaruk Rural Municipality",
    "district_id": 49
  },
  {
    "id": 494,
    "name": "प्यूठान नगरपालिका",
    "en_name": "Pyuthan Municipality",
    "district_id": 49
  },
  {
    "id": 495,
    "name": "स्वर्गद्धारी नगरपालिका",
    "en_name": "Sworgadwari Municipality",
    "district_id": 49
  },
  {
    "id": 496,
    "name": "माण्डवी गाउँपालिका",
    "en_name": "Mandavi Rural Municipality",
    "district_id": 49
  },
  {
    "id": 497,
    "name": "मल्लरानी गाउँपालिका",
    "en_name": "Mallarani Rural Municipality",
    "district_id": 49
  },
  {
    "id": 498,
    "name": "ऐरावती गाउँपालिका",
    "en_name": "Aairawati Rural Municipality",
    "district_id": 49
  },
  {
    "id": 499,
    "name": "सरुमारानी गाउँपालिका",
    "en_name": "Sarumarani Rural Municipality",
    "district_id": 49
  },
  {
    "id": 500,
    "name": "कालिगण्डकी गाउँपालिका",
    "en_name": "Kali Gandaki Rural Municipality",
    "district_id": 50
  },
  {
    "id": 501,
    "name": "सत्यवती गाउँपालिका",
    "en_name": "Satyawoti Rural Municipality",
    "district_id": 50
  },
  {
    "id": 502,
    "name": "चन्द्रकोट गाउँपालिका",
    "en_name": "Chandrakot Rural Municipality",
    "district_id": 50
  },
  {
    "id": 503,
    "name": "मुसिकोट नगरपालिका",
    "en_name": "Musikot Municipality",
    "district_id": 50
  },
  {
    "id": 504,
    "name": "ईस्मा गाउँपालिका",
    "en_name": "Isma Rural Municipality",
    "district_id": 50
  },
  {
    "id": 505,
    "name": "मालिका गाउँपालिका",
    "en_name": "Malika Rural Municipality",
    "district_id": 50
  },
  {
    "id": 506,
    "name": "मदाने गाउँपालिका",
    "en_name": "Madane Rural Municipality",
    "district_id": 50
  },
  {
    "id": 507,
    "name": "धुर्कोट गाउँपालिका",
    "en_name": "Dhurkot Rural Municipality",
    "district_id": 50
  },
  {
    "id": 508,
    "name": "रेसुङ्गा नगरपालिका",
    "en_name": "Resunga Municipality",
    "district_id": 50
  },
  {
    "id": 509,
    "name": "गुल्मी दरबार गाउँपालिका",
    "en_name": "Gulmi Durbar Gaunpaika",
    "district_id": 50
  },
  {
    "id": 510,
    "name": "छत्रकोट गाउँपालिका",
    "en_name": "Chhatrakot Rural Municipality",
    "district_id": 50
  },
  {
    "id": 511,
    "name": "रूरू गाउँपालिका",
    "en_name": "Ruru Rural Municipality",
    "district_id": 50
  },
  {
    "id": 512,
    "name": "छत्रदेव गाउँपालिका",
    "en_name": "Chhatradev Rural Municipality",
    "district_id": 51
  },
  {
    "id": 513,
    "name": "मालारानी गाउँपालिका",
    "en_name": "Malarani Rural Municipality",
    "district_id": 51
  },
  {
    "id": 514,
    "name": "भुमिकास्थान नगरपालिका",
    "en_name": "Bhumikasthan Municipality",
    "district_id": 51
  },
  {
    "id": 515,
    "name": "सन्धिखर्क नगरपालिका",
    "en_name": "Sandhikharka Municipality",
    "district_id": 51
  },
  {
    "id": 516,
    "name": "पाणिनी गाउँपालिका",
    "en_name": "Panini Rural Municipality",
    "district_id": 51
  },
  {
    "id": 517,
    "name": "शितगंगा नगरपालिका",
    "en_name": "Shitaganga Municipality",
    "district_id": 51
  },
  {
    "id": 518,
    "name": "रामपुर नगरपालिका",
    "en_name": "Rampur Municipality",
    "district_id": 52
  },
  {
    "id": 519,
    "name": "पुर्वखोला गाउँपालिका",
    "en_name": "Purbakhola Rural Municipality",
    "district_id": 52
  },
  {
    "id": 520,
    "name": "रम्भा गाउँपालिका",
    "en_name": "Rambha Rural Municipality",
    "district_id": 52
  },
  {
    "id": 521,
    "name": "बगनासकाली गाउँपालिका",
    "en_name": "Baganaskali Rural Municipality",
    "district_id": 52
  },
  {
    "id": 522,
    "name": "तानसेन नगरपालिका",
    "en_name": "Tansen Municipality",
    "district_id": 52
  },
  {
    "id": 523,
    "name": "रिब्दीकोट गाउँपालिका",
    "en_name": "Ribdikot Rural Municipality",
    "district_id": 52
  },
  {
    "id": 524,
    "name": "रैनादेवी छहरा गाउँपालिका",
    "en_name": "Rainadevi Chhahara Rural Municipality",
    "district_id": 52
  },
  {
    "id": 525,
    "name": "तिनाउ गाउँपालिका",
    "en_name": "Tinau Rural Municipality",
    "district_id": 52
  },
  {
    "id": 526,
    "name": "माथागढी गाउँपालिका",
    "en_name": "Mathagadhi Rural Municipality",
    "district_id": 52
  },
  {
    "id": 527,
    "name": "निस्दी गाउँपालिका",
    "en_name": "Nisdi Rural Municipality",
    "district_id": 52
  },
  {
    "id": 528,
    "name": "बर्दघाट नगरपालिका",
    "en_name": "Bardaghat Municipality",
    "district_id": 53
  },
  {
    "id": 529,
    "name": "सुनवल नगरपालिका",
    "en_name": "Sunawal Municipality",
    "district_id": 53
  },
  {
    "id": 530,
    "name": "रामग्राम नगरपालिका",
    "en_name": "Ramgram Municipality",
    "district_id": 53
  },
  {
    "id": 531,
    "name": "पाल्हीनन्दन गाउँपालिका",
    "en_name": "Palhinandan Rural Municipality",
    "district_id": 53
  },
  {
    "id": 532,
    "name": "सरावल गाउँपालिका",
    "en_name": "Sarawal Rural Municipality",
    "district_id": 53
  },
  {
    "id": 533,
    "name": "प्रतापपुर गाउँपालिका",
    "en_name": "Pratapapur Rural Municipality",
    "district_id": 53
  },
  {
    "id": 534,
    "name": "सुस्ता गाउँपालिका",
    "en_name": "Susta Rural Municipality",
    "district_id": 53
  },
  {
    "id": 535,
    "name": "देबदह नगरपालिका",
    "en_name": "Devdaha Municipality",
    "district_id": 54
  },
  {
    "id": 536,
    "name": "बुटवल उपमहानगरपालिका",
    "en_name": "Butwal Sub-Metropolitian City",
    "district_id": 54
  },
  {
    "id": 537,
    "name": "सैनामैना नगरपालिका",
    "en_name": "Sainamaina Municipality",
    "district_id": 54
  },
  {
    "id": 538,
    "name": "कन्चन गाउँपालिका",
    "en_name": "Kanchan Rural Municipality",
    "district_id": 54
  },
  {
    "id": 539,
    "name": "गैडहवा गाउँपालिका",
    "en_name": "Gaidahawa Rural Municipality",
    "district_id": 54
  },
  {
    "id": 540,
    "name": "सुद्धोधन गाउँपालिका",
    "en_name": "Suddhodhan Rural Municipality",
    "district_id": 54
  },
  {
    "id": 541,
    "name": "सियारी गाउँपालिका",
    "en_name": "Siyari Rural Municipality",
    "district_id": 54
  },
  {
    "id": 542,
    "name": "तिलोत्तमा नगरापालिका",
    "en_name": "Tilottama Municipality",
    "district_id": 54
  },
  {
    "id": 543,
    "name": "ओमसतिया गाउँपालिका",
    "en_name": "Om Satiya Rural Municipality",
    "district_id": 54
  },
  {
    "id": 544,
    "name": "रोहिणी गाउँपालिका",
    "en_name": "Rohini Rural Municipality",
    "district_id": 54
  },
  {
    "id": 545,
    "name": "सिद्धार्थनगर नगरपालिका",
    "en_name": "Siddharthanagar Municipality",
    "district_id": 54
  },
  {
    "id": 546,
    "name": "मायादेवी गाउँपालिका",
    "en_name": "Mayadevi Rural Municipality",
    "district_id": 54
  },
  {
    "id": 547,
    "name": "लुम्बिनी साँस्कृतिक नगरपालिका",
    "en_name": "Lumbini Sanskritik Municipality",
    "district_id": 54
  },
  {
    "id": 548,
    "name": "कोटहीमाई गाउँपालिका",
    "en_name": "Kotahimai Rural Municipality",
    "district_id": 54
  },
  {
    "id": 549,
    "name": "सम्मरीमाई गाउँपालिका",
    "en_name": "Sammarimai Rural Municipality",
    "district_id": 54
  },
  {
    "id": 550,
    "name": "मर्चवारी गाउँपालिका",
    "en_name": "Marchawari Rural Municipality",
    "district_id": 54
  },
  {
    "id": 551,
    "name": "बाणगंगा नगरपालिका",
    "en_name": "Banganga Municipality",
    "district_id": 55
  },
  {
    "id": 552,
    "name": "बुद्धभूमी नगरपालिका",
    "en_name": "Buddhabhumi Municipality",
    "district_id": 55
  },
  {
    "id": 553,
    "name": "शिवराज नगरपालिका",
    "en_name": "Shivaraj Municipality",
    "district_id": 55
  },
  {
    "id": 554,
    "name": "बिजयनगर गाउँपालिका",
    "en_name": "Bijayanagar Rural Municipality",
    "district_id": 55
  },
  {
    "id": 555,
    "name": "कृष्णनगर नगरपालिका",
    "en_name": "Krishnanagar Municipality",
    "district_id": 55
  },
  {
    "id": 556,
    "name": "महाराजगन्ज नगरपालिका",
    "en_name": "Maharajganj Municipality",
    "district_id": 55
  },
  {
    "id": 557,
    "name": "कपिलबस्तु नगरपालिका",
    "en_name": "Kapilvastu Municipality",
    "district_id": 55
  },
  {
    "id": 558,
    "name": "यसोधरा गाउँपालिका",
    "en_name": "Yasodhara Rural Municipality",
    "district_id": 55
  },
  {
    "id": 559,
    "name": "मायादेवी गाउँपालिका",
    "en_name": "Mayadevi Rural Municipality",
    "district_id": 55
  },
  {
    "id": 560,
    "name": "शुद्धोधन गाउँपालिका",
    "en_name": "Shuddhodhan Rural Municipality",
    "district_id": 55
  },
  {
    "id": 561,
    "name": "बंगलाचुली गाउँपालिका",
    "en_name": "Bangalachuli Rural Municipality",
    "district_id": 56
  },
  {
    "id": 562,
    "name": "घोराही उपमहानगरपालिका",
    "en_name": "Ghorahi Sub-Metropolitian City",
    "district_id": 56
  },
  {
    "id": 563,
    "name": "तुल्सीपुर उपमहानगरपालिका",
    "en_name": "Tulsipur Sub-Metropolitian City",
    "district_id": 56
  },
  {
    "id": 564,
    "name": "शान्तिनगर गाउँपालिका",
    "en_name": "Shantinagar Rural Municipality",
    "district_id": 56
  },
  {
    "id": 565,
    "name": "बबई गाउँपालिका",
    "en_name": "Babai Rural Municipality",
    "district_id": 56
  },
  {
    "id": 566,
    "name": "दंगीशरण गाउँपालिका",
    "en_name": "Dangisharan Rural Municipality",
    "district_id": 56
  },
  {
    "id": 567,
    "name": "लमही नगरपालिका",
    "en_name": "Lamahi Municipality",
    "district_id": 56
  },
  {
    "id": 568,
    "name": "राप्ती गाउँपालिका",
    "en_name": "Rapti Rural Municipality",
    "district_id": 56
  },
  {
    "id": 569,
    "name": "गढवा गाउँपालिका",
    "en_name": "Gadhawa Rural Municipality",
    "district_id": 56
  },
  {
    "id": 570,
    "name": "राजपुर गाउँपालिका",
    "en_name": "Rajpur Rural Municipality",
    "district_id": 56
  },
  {
    "id": 571,
    "name": "राप्ती सोनारी गाउँपालिका",
    "en_name": "Rapti Sonari Rural Municipality",
    "district_id": 57
  },
  {
    "id": 572,
    "name": "कोहलपुर नगरपालिका",
    "en_name": "Kohalpur Municipality",
    "district_id": 57
  },
  {
    "id": 573,
    "name": "बैजनाथ गाउँपालिका",
    "en_name": "Baijanath Rural Municipality",
    "district_id": 57
  },
  {
    "id": 574,
    "name": "खजुरा गाउँपालिका",
    "en_name": "Khajura Rural Municipality",
    "district_id": 57
  },
  {
    "id": 575,
    "name": "जानकी गाउँपालिका",
    "en_name": "Janaki Rural Municipality",
    "district_id": 57
  },
  {
    "id": 576,
    "name": "नेपालगञ्ज उपमहानगरपालिका",
    "en_name": "Nepalganj Sub-Metropolitian City",
    "district_id": 57
  },
  {
    "id": 577,
    "name": "डुडुवा गाउँपालिका",
    "en_name": "Duduwa Rural Municipality",
    "district_id": 57
  },
  {
    "id": 578,
    "name": "नरैनापुर गाउँपालिका",
    "en_name": "Narainapur Rural Municipality",
    "district_id": 57
  },
  {
    "id": 579,
    "name": "बाँसगढी नगरपालिका",
    "en_name": "Bansgadhi Municipality",
    "district_id": 58
  },
  {
    "id": 580,
    "name": "बारबर्दिया नगरपालिका",
    "en_name": "Barbardiya Municipality",
    "district_id": 58
  },
  {
    "id": 581,
    "name": "ठाकुरबाबा नगरपालिका",
    "en_name": "Thakurbaba Municipality",
    "district_id": 58
  },
  {
    "id": 582,
    "name": "गेरुवा गाउँपालिका",
    "en_name": "Geruwa Rural Municipality",
    "district_id": 58
  },
  {
    "id": 583,
    "name": "राजापुर नगरपालिका",
    "en_name": "Rajapur Municipality",
    "district_id": 58
  },
  {
    "id": 584,
    "name": "मधुवन नगरपालिका",
    "en_name": "Madhuwan Municipality",
    "district_id": 58
  },
  {
    "id": 585,
    "name": "गुलरीया नगरपालिका",
    "en_name": "Gulariya Municipality",
    "district_id": 58
  },
  {
    "id": 586,
    "name": "बढैयाताल गाउँपालिका",
    "en_name": "Badhaiyatal Rural Municipality",
    "district_id": 58
  },
  {
    "id": 587,
    "name": "डोल्पो बुद्ध गाउँपालिका",
    "en_name": "Dolpo Buddha Rural Municipality",
    "district_id": 59
  },
  {
    "id": 588,
    "name": "शे फोक्सुण्डो गाउँपालिका",
    "en_name": "Shey Phoksundo Rural Municipality",
    "district_id": 59
  },
  {
    "id": 589,
    "name": "जगदुल्ला गाउँपालिका",
    "en_name": "Jagadulla Rural Municipality",
    "district_id": 59
  },
  {
    "id": 590,
    "name": "मुड्केचुला गाउँपालिका",
    "en_name": "Mudkechula Rural Municipality",
    "district_id": 59
  },
  {
    "id": 591,
    "name": "त्रिपुरासुन्दरी नगरपालिका",
    "en_name": "Tripurasundari Municipality",
    "district_id": 59
  },
  {
    "id": 592,
    "name": "ठुलीभेरी नगरपालिका",
    "en_name": "Thulibheri Municipality",
    "district_id": 59
  },
  {
    "id": 593,
    "name": "काइके गाउँपालिका",
    "en_name": "Kaike Rural Municipality",
    "district_id": 59
  },
  {
    "id": 594,
    "name": "छार्का ताङसोङ गाउँपालिका",
    "en_name": "Chharka Tangsong Rural Municipality",
    "district_id": 59
  },
  {
    "id": 595,
    "name": "मुगुमकार्मारोग गाउँपालिका",
    "en_name": "Mugumakarmarog Rural Municipality",
    "district_id": 60
  },
  {
    "id": 596,
    "name": "छायाँनाथ रारा नगरपालिका",
    "en_name": "Chhayanath Rara Municipality",
    "district_id": 60
  },
  {
    "id": 597,
    "name": "सोरु गाउँपालिका",
    "en_name": "Soru Rural Municipality",
    "district_id": 60
  },
  {
    "id": 598,
    "name": "खत्याड गाउँपालिका",
    "en_name": "Khatyad Rural Municipality",
    "district_id": 60
  },
  {
    "id": 599,
    "name": "चंखेली गाउँपालिका",
    "en_name": "Chankheli Rural Municipality",
    "district_id": 61
  },
  {
    "id": 600,
    "name": "खार्पुनाथ गाउँपालिका",
    "en_name": "Kharpunath Rural Municipality",
    "district_id": 61
  },
  {
    "id": 601,
    "name": "सिमकोट गाउँपालिका",
    "en_name": "Simkot Rural Municipality",
    "district_id": 61
  },
  {
    "id": 602,
    "name": "नाम्खा गाउँपालिका",
    "en_name": "Namkha Rural Municipality",
    "district_id": 61
  },
  {
    "id": 603,
    "name": "सर्केगाड गाउँपालिका",
    "en_name": "Sarkegad Rural Municipality",
    "district_id": 61
  },
  {
    "id": 604,
    "name": "अदानचुली गाउँपालिका",
    "en_name": "Adanchuli Rural Municipality",
    "district_id": 61
  },
  {
    "id": 605,
    "name": "ताँजाकोट गाउँपालिका",
    "en_name": "Tanjakot Rural Municipality",
    "district_id": 61
  },
  {
    "id": 606,
    "name": "पातारासी गाउँपालिका",
    "en_name": "Patarasi Rural Municipality",
    "district_id": 62
  },
  {
    "id": 607,
    "name": "कनका सुन्दरी गाउँपालिका",
    "en_name": "Kanaka Sundari Gaun Palika",
    "district_id": 62
  },
  {
    "id": 608,
    "name": "सिंजा गाउँपालिका",
    "en_name": "Sinja Rural Municipality",
    "district_id": 62
  },
  {
    "id": 609,
    "name": "चन्दननाथ नगरपालिका",
    "en_name": "Chandannath Municipality",
    "district_id": 62
  },
  {
    "id": 610,
    "name": "गुठिचौर गाउँपालिका",
    "en_name": "Guthichaur Rural Municipality",
    "district_id": 62
  },
  {
    "id": 611,
    "name": "तातोपानी गाउँपालिका",
    "en_name": "Tatopani Rural Municipality",
    "district_id": 62
  },
  {
    "id": 612,
    "name": "तिला गाउँपालिका",
    "en_name": "Tila Rural Municipality",
    "district_id": 62
  },
  {
    "id": 613,
    "name": "हिमा गाउँपालिका",
    "en_name": "Hima Rural Municipality",
    "district_id": 62
  },
  {
    "id": 614,
    "name": "पलाता गाउँपालिका",
    "en_name": "Palata Rural Municipality",
    "district_id": 63
  },
  {
    "id": 615,
    "name": "पचाल झरना गाउँपालिका",
    "en_name": "Pachal Jharana Rural Municipality",
    "district_id": 63
  },
  {
    "id": 616,
    "name": "रास्कोट नगरपालिका",
    "en_name": "Raskot Municipality",
    "district_id": 63
  },
  {
    "id": 617,
    "name": "सान्नी त्रिवेणी गाउँपालिका",
    "en_name": "Sanni Tribeni Rural Municipality",
    "district_id": 63
  },
  {
    "id": 618,
    "name": "नरहरिनाथ गाउँपालिका",
    "en_name": "Naraharinath Rural Municipality",
    "district_id": 63
  },
  {
    "id": 619,
    "name": "खाँडाचक्र नगरपालिका",
    "en_name": "Khandachakra Municipality",
    "district_id": 63
  },
  {
    "id": 620,
    "name": "तिलागुफा नगरपालिका",
    "en_name": "Tilagupha Municipality",
    "district_id": 63
  },
  {
    "id": 621,
    "name": "महावै गाउँपालिका",
    "en_name": "Mahawai Rural Municipality",
    "district_id": 63
  },
  {
    "id": 622,
    "name": "कालिका गाउँपालिका",
    "en_name": "Kalika Rural Municipality",
    "district_id": 63
  },
  {
    "id": 623,
    "name": "नौमुले गाउँपालिका",
    "en_name": "Naumule Rural Municipality",
    "district_id": 64
  },
  {
    "id": 624,
    "name": "महाबु गाउँपालिका",
    "en_name": "Mahabu Rural Municipality",
    "district_id": 64
  },
  {
    "id": 625,
    "name": "भैरवी गाउँपालिका",
    "en_name": "Bhairabi Rural Municipality",
    "district_id": 64
  },
  {
    "id": 626,
    "name": "ठाँटीकाँध गाउँपालिका",
    "en_name": "Thantikandh Rural Municipality",
    "district_id": 64
  },
  {
    "id": 627,
    "name": "आठबीस नगरपालिका",
    "en_name": "Aathbis Municipality",
    "district_id": 64
  },
  {
    "id": 628,
    "name": "चामुण्डा बिन्द्रासैनी नगरपालिका",
    "en_name": "Chamunda Bindrasaini Municipality",
    "district_id": 64
  },
  {
    "id": 629,
    "name": "दुल्लु नगरपालिका",
    "en_name": "Dullu Municipality",
    "district_id": 64
  },
  {
    "id": 630,
    "name": "नारायण नगरपालिका",
    "en_name": "Narayan Municipality",
    "district_id": 64
  },
  {
    "id": 631,
    "name": "भगवतीमाई गाउँपालिका",
    "en_name": "Bhagawatimai Rural Municipality",
    "district_id": 64
  },
  {
    "id": 632,
    "name": "डुङ्गेश्वर गाउँपालिका",
    "en_name": "Dungeshwor Rural Municipality",
    "district_id": 64
  },
  {
    "id": 633,
    "name": "गुराँस गाउँपालिका",
    "en_name": "Gurans Rural Municipality",
    "district_id": 64
  },
  {
    "id": 634,
    "name": "बारेकोट गाउँपालिका",
    "en_name": "Barekot Rural Municipality",
    "district_id": 65
  },
  {
    "id": 635,
    "name": "कुसे गाउँपालिका",
    "en_name": "Kuse Rural Municipality",
    "district_id": 65
  },
  {
    "id": 636,
    "name": "जुनीचाँदे गाउँपालिका",
    "en_name": "Junichande Rural Municipality",
    "district_id": 65
  },
  {
    "id": 637,
    "name": "छेडागाड नगरपालिका",
    "en_name": "Chhedagad Municipality",
    "district_id": 65
  },
  {
    "id": 638,
    "name": "शिवालय गाउँपालिका",
    "en_name": "Shivalaya Rural Municipality",
    "district_id": 65
  },
  {
    "id": 639,
    "name": "भेरीमालिका नगरपालिका",
    "en_name": "Bheri Malika Municipality",
    "district_id": 65
  },
  {
    "id": 640,
    "name": "त्रिवेणी नलगाड नगरपालिका",
    "en_name": "Tribeni Nalagad Municipality",
    "district_id": 65
  },
  {
    "id": 641,
    "name": "आठबिसकोट नगरपालिका",
    "en_name": "Aathabisakot Municipality",
    "district_id": 66
  },
  {
    "id": 642,
    "name": "सानीभेरी गाउँपालिका",
    "en_name": "Sanibheri Rural Municipality",
    "district_id": 66
  },
  {
    "id": 643,
    "name": "बाँफिकोट गाउँपालिका",
    "en_name": "Banphikot Rural Municipality",
    "district_id": 66
  },
  {
    "id": 644,
    "name": "मुसिकोट नगरपालिका",
    "en_name": "Musikot Municipality",
    "district_id": 66
  },
  {
    "id": 645,
    "name": "त्रिवेणी गाउँपालिका",
    "en_name": "Tribeni Rural Municipality",
    "district_id": 66
  },
  {
    "id": 646,
    "name": "चौरजहारी नगरपालिका",
    "en_name": "Chaurjahari Municipality",
    "district_id": 66
  },
  {
    "id": 647,
    "name": "दार्मा गाउँपालिका",
    "en_name": "Darma Rural Municipality",
    "district_id": 67
  },
  {
    "id": 648,
    "name": "कुमाख मालिका गाउँपालिका",
    "en_name": "Kumakh Malika Rural Municipality",
    "district_id": 67
  },
  {
    "id": 649,
    "name": "बनगाड कुपिण्डे नगरपालिका",
    "en_name": "Banagad Kupinde Municipality",
    "district_id": 67
  },
  {
    "id": 650,
    "name": "ढोरचौर गाउँपालिका",
    "en_name": "Dhorchaur Rural Municipality",
    "district_id": 67
  },
  {
    "id": 651,
    "name": "बागचौर नगरपालिका",
    "en_name": "Bagachour Municipality",
    "district_id": 67
  },
  {
    "id": 652,
    "name": "छत्रेश्वरी गाउँपालिका",
    "en_name": "Chhatreshwori Rural Municipality",
    "district_id": 67
  },
  {
    "id": 653,
    "name": "शारदा नगरपालिका",
    "en_name": "Sharada Municipality",
    "district_id": 67
  },
  {
    "id": 654,
    "name": "कालिमाटी गाउँपालिका",
    "en_name": "Kalimati Rural Municipality",
    "district_id": 67
  },
  {
    "id": 655,
    "name": "त्रिवेणी गाउँपालिका",
    "en_name": "Tribeni Rural Municipality",
    "district_id": 67
  },
  {
    "id": 656,
    "name": "कपुरकोट गाउँपालिका",
    "en_name": "Kapurkot Rural Municipality",
    "district_id": 67
  },
  {
    "id": 657,
    "name": "सिम्ता गाउँपालिका",
    "en_name": "Simta Rural Municipality",
    "district_id": 68
  },
  {
    "id": 658,
    "name": "चिङ्गगाड गाउँपालिका",
    "en_name": "Chingad Rural Municipality",
    "district_id": 68
  },
  {
    "id": 659,
    "name": "लेकबेशी नगरपालिका",
    "en_name": "Lekabeshi Municipality",
    "district_id": 68
  },
  {
    "id": 660,
    "name": "गुर्भाकोट नगरपालिका",
    "en_name": "Gurbhakot Municipality",
    "district_id": 68
  },
  {
    "id": 661,
    "name": "भेरीगंगा नगरपालिका",
    "en_name": "Bheriganga Municipality",
    "district_id": 68
  },
  {
    "id": 662,
    "name": "बीरेन्द्रनगर नगरपालिका",
    "en_name": "Birendranagar Municipality",
    "district_id": 68
  },
  {
    "id": 663,
    "name": "बराहताल गाउँपालिका",
    "en_name": "Barahatal Rural Municipality",
    "district_id": 68
  },
  {
    "id": 664,
    "name": "पञ्चपुरी नगरपालिका",
    "en_name": "Panchapuri Municipality",
    "district_id": 68
  },
  {
    "id": 665,
    "name": "चौकुने गाउँपालिका",
    "en_name": "Chaukune Rural Municipality",
    "district_id": 68
  },
  {
    "id": 666,
    "name": "हिमाली गाउँपालिका",
    "en_name": "Himali Rural Municipality",
    "district_id": 69
  },
  {
    "id": 667,
    "name": "गौमुल गाउँपालिका",
    "en_name": "Gaumul Rural Municipality",
    "district_id": 69
  },
  {
    "id": 668,
    "name": "बुढीनन्दा नगरपालिका",
    "en_name": "Budhinanda Municipality",
    "district_id": 69
  },
  {
    "id": 669,
    "name": "स्वामी कार्तिक गाउँपालिका",
    "en_name": "Swami Kartik Rural Municipality",
    "district_id": 69
  },
  {
    "id": 670,
    "name": "पाण्डव गुफा गाउँपालिका",
    "en_name": "Pandab Gufa Rural Municipality",
    "district_id": 69
  },
  {
    "id": 671,
    "name": "बडिमालिका नगरपालिका",
    "en_name": "Badimalika Municipality",
    "district_id": 69
  },
  {
    "id": 672,
    "name": "छेडेदह गाउँपालिका",
    "en_name": "Chhededaha Rural Municipality",
    "district_id": 69
  },
  {
    "id": 673,
    "name": "बुढीगंगा नगरपालिका",
    "en_name": "Budhiganga Municipality",
    "district_id": 69
  },
  {
    "id": 674,
    "name": "त्रिवेणी नगरपालिका",
    "en_name": "Tribeni Municipality",
    "district_id": 69
  },
  {
    "id": 675,
    "name": "काँडा गाउँपालिका",
    "en_name": "Kanda Rural Municipality",
    "district_id": 70
  },
  {
    "id": 676,
    "name": "बुंगल नगरपालिका",
    "en_name": "Bungal Municipality",
    "district_id": 70
  },
  {
    "id": 677,
    "name": "सूर्मा गाउँपालिका",
    "en_name": "Surma Rural Municipality",
    "district_id": 70
  },
  {
    "id": 678,
    "name": "तालकोट गाउँपालिका",
    "en_name": "Talkot Rural Municipality",
    "district_id": 70
  },
  {
    "id": 679,
    "name": "मष्टा गाउँपालिका",
    "en_name": "Masta Rural Municipality",
    "district_id": 70
  },
  {
    "id": 680,
    "name": "जयपृथ्वी नगरपालिका",
    "en_name": "Jayaprithbi Municipality",
    "district_id": 70
  },
  {
    "id": 681,
    "name": "छबिस पाथिभरा गाउँपालिका",
    "en_name": "Chhabis Pathibhara Rural Municipality",
    "district_id": 70
  },
  {
    "id": 682,
    "name": "दुर्गाथली गाउँपालिका",
    "en_name": "Durgathali Rural Municipality",
    "district_id": 70
  },
  {
    "id": 683,
    "name": "केदारस्युँ गाउँपालिका",
    "en_name": "Kedarsyun Rural Municipality",
    "district_id": 70
  },
  {
    "id": 684,
    "name": "बित्थडचिर गाउँपालिका",
    "en_name": "Bitthadchir Rural Municipality",
    "district_id": 70
  },
  {
    "id": 685,
    "name": "थलारा गाउँपालिका",
    "en_name": "Thalara Rural Municipality",
    "district_id": 70
  },
  {
    "id": 686,
    "name": "खप्तडछान्ना गाउँपालिका",
    "en_name": "Khaptad Chhanna Rural Municipality",
    "district_id": 70
  },
  {
    "id": 687,
    "name": "ब्याँस गाउँपालिका",
    "en_name": "Byas Rural Municipality",
    "district_id": 71
  },
  {
    "id": 688,
    "name": "दुहुँ गाउँपालिका",
    "en_name": "Duhun Rural Municipality",
    "district_id": 71
  },
  {
    "id": 689,
    "name": "महाकाली नगरपालिका",
    "en_name": "Mahakali Municipality",
    "district_id": 71
  },
  {
    "id": 690,
    "name": "नौगाड गाउँपालिका",
    "en_name": "Naugad  Rural Municipality",
    "district_id": 71
  },
  {
    "id": 691,
    "name": "अपिहिमाल गाउँपालिका",
    "en_name": "Apihimal Rural Municipality",
    "district_id": 71
  },
  {
    "id": 692,
    "name": "मार्मा गाउँपालिका",
    "en_name": "Marma Rural Municipality",
    "district_id": 71
  },
  {
    "id": 693,
    "name": "शैल्यशिखर नगरपालिका",
    "en_name": "Shailyashikhar Municipality",
    "district_id": 71
  },
  {
    "id": 694,
    "name": "मालिकार्जुन गाउँपालिका",
    "en_name": "Malikarjun Rural Municipality",
    "district_id": 71
  },
  {
    "id": 695,
    "name": "लेकम गाउँपालिका",
    "en_name": "Lekam Rural Municipality",
    "district_id": 71
  },
  {
    "id": 696,
    "name": "डीलासैनी गाउँपालिका",
    "en_name": "Dilasaini Rural Municipality",
    "district_id": 72
  },
  {
    "id": 697,
    "name": "दोगडाकेदार गाउँपालिका",
    "en_name": "Dogada Kedar Rural Municipality",
    "district_id": 72
  },
  {
    "id": 698,
    "name": "पुचौंडी नगरपालिका",
    "en_name": "Puchaundi Municipality",
    "district_id": 72
  },
  {
    "id": 699,
    "name": "सुर्नया गाउँपालिका",
    "en_name": "Surnaya Rural Municipality",
    "district_id": 72
  },
  {
    "id": 700,
    "name": "दशरथचन्द नगरपालिका",
    "en_name": "Dasharathchand Municipality",
    "district_id": 72
  },
  {
    "id": 701,
    "name": "पन्चेश्वर गाउँपालिका",
    "en_name": "Pancheshwor Rural Municipality",
    "district_id": 72
  },
  {
    "id": 702,
    "name": "शिवनाथ गाउँपालिका",
    "en_name": "Shivanath Rural Municipality",
    "district_id": 72
  },
  {
    "id": 703,
    "name": "मेलौली नगरपालिका",
    "en_name": "Melauli Municipality",
    "district_id": 72
  },
  {
    "id": 704,
    "name": "पाटन नगरपालिका",
    "en_name": "Patam Municipality",
    "district_id": 72
  },
  {
    "id": 705,
    "name": "सिगास गाउँपालिका",
    "en_name": "Sigas Rural Municipality",
    "district_id": 72
  },
  {
    "id": 706,
    "name": "नवदुर्गा गाउँपालिका",
    "en_name": "Nawadurga Rural Municipality",
    "district_id": 73
  },
  {
    "id": 707,
    "name": "अमरगढी नगरपालिका",
    "en_name": "Amargadhi Municipality",
    "district_id": 73
  },
  {
    "id": 708,
    "name": "अजयमेरु गाउँपालिका",
    "en_name": "Ajayameru Rural Municipality",
    "district_id": 73
  },
  {
    "id": 709,
    "name": "भागेश्वर गाउँपालिका",
    "en_name": "Bhageshwor Rural Municipality",
    "district_id": 73
  },
  {
    "id": 710,
    "name": "परशुराम नगरपालिका",
    "en_name": "Parashuram Municipality",
    "district_id": 73
  },
  {
    "id": 711,
    "name": "आलिताल गाउँपालिका",
    "en_name": "Aalital Rural Municipality",
    "district_id": 73
  },
  {
    "id": 712,
    "name": "गन्यापधुरा गाउँपालिका",
    "en_name": "Ganyapdhura Rural Municipality",
    "district_id": 73
  },
  {
    "id": 713,
    "name": "पुर्विचौकी गाउँपालिका",
    "en_name": "Purbichouki Rural Municipality",
    "district_id": 74
  },
  {
    "id": 714,
    "name": "सायल गाउँपालिका",
    "en_name": "Sayal Rural Municipality",
    "district_id": 74
  },
  {
    "id": 715,
    "name": "आदर्श गाउँपालिका",
    "en_name": "Aadarsha Rural Municipality",
    "district_id": 74
  },
  {
    "id": 716,
    "name": "शिखर नगरपालिका",
    "en_name": "Shikhar Municipality",
    "district_id": 74
  },
  {
    "id": 717,
    "name": "दिपायल सिलगढी नगरपालिका",
    "en_name": "Dipayal Silgadhi Municipality",
    "district_id": 74
  },
  {
    "id": 718,
    "name": "के.आई.सिं. गाउँपालिका",
    "en_name": "K.I. Singh Rural Municipality",
    "district_id": 74
  },
  {
    "id": 719,
    "name": "बोगटान गाउँपालिका",
    "en_name": "Bogatan Rural Municipality",
    "district_id": 74
  },
  {
    "id": 720,
    "name": "बडीकेदार गाउँपालिका",
    "en_name": "Badi Kedar Rural Municipality",
    "district_id": 74
  },
  {
    "id": 721,
    "name": "जोरायल गाउँपालिका",
    "en_name": "Jorayal Rural Municipality",
    "district_id": 74
  },
  {
    "id": 722,
    "name": "पंचदेवल बिनायक नगरपालिका",
    "en_name": "Panchdebal Binayak Municipality",
    "district_id": 75
  },
  {
    "id": 723,
    "name": "रामारोशन गाउँपालिका",
    "en_name": "Ramaroshan Rural Municipality",
    "district_id": 75
  },
  {
    "id": 724,
    "name": "मेल्लेख गाउँपालिका",
    "en_name": "Mellekh Rural Municipality",
    "district_id": 75
  },
  {
    "id": 725,
    "name": "साँफेबगर नगरपालिका",
    "en_name": "Sanphebagar Municipality",
    "district_id": 75
  },
  {
    "id": 726,
    "name": "चौरपाटी गाउँपालिका",
    "en_name": "Chaurpati Rural Municipality",
    "district_id": 75
  },
  {
    "id": 727,
    "name": "मंगलसेन नगरपालिका",
    "en_name": "Mangalsen Municipality",
    "district_id": 75
  },
  {
    "id": 728,
    "name": "बान्नीगढी जयगढ गाउँपालिका",
    "en_name": "Bannigadhi Jayagadh Rural Municipality",
    "district_id": 75
  },
  {
    "id": 729,
    "name": "कमलबजार नगरपालिका",
    "en_name": "Kamal Bazar Municipality",
    "district_id": 75
  },
  {
    "id": 730,
    "name": "ढकारी गाउँपालिका",
    "en_name": "Dhakari Rural Municipality",
    "district_id": 75
  },
  {
    "id": 731,
    "name": "तुर्माखाँद गाउँपालिका",
    "en_name": "Turmakhand Rural Municipality",
    "district_id": 75
  },
  {
    "id": 732,
    "name": "मोहन्याल गाउँपालिका",
    "en_name": "Mohanyal Rural Municipality",
    "district_id": 76
  },
  {
    "id": 733,
    "name": "चुरे गाउँपालिका",
    "en_name": "Chure Rural Municipality",
    "district_id": 76
  },
  {
    "id": 734,
    "name": "गोदावरी नगरपालिका",
    "en_name": "Godawari Municipality",
    "district_id": 76
  },
  {
    "id": 735,
    "name": "गौरीगंगा नगरपालिका",
    "en_name": "Gauriganga Municipality",
    "district_id": 76
  },
  {
    "id": 736,
    "name": "घोडाघोडी नगरपालिका",
    "en_name": "Ghodaghodi Municipality",
    "district_id": 76
  },
  {
    "id": 737,
    "name": "बर्दगोरिया गाउँपालिका",
    "en_name": "Bardagoriya Rural Municipality",
    "district_id": 76
  },
  {
    "id": 738,
    "name": "लम्कि चुहा नगरपालिका",
    "en_name": "Lamki Chuha Municipality",
    "district_id": 76
  },
  {
    "id": 739,
    "name": "जानकी गाउँपालिका",
    "en_name": "Janaki Rural Municipality",
    "district_id": 76
  },
  {
    "id": 740,
    "name": "जोशीपुर गाउँपालिका",
    "en_name": "Joshipur Rural Municipality",
    "district_id": 76
  },
  {
    "id": 741,
    "name": "टिकापुर नगरपालिका",
    "en_name": "Tikapur Municipality",
    "district_id": 76
  },
  {
    "id": 742,
    "name": "भजनी नगरपालिका",
    "en_name": "Bhajani Municipality",
    "district_id": 76
  },
  {
    "id": 743,
    "name": "कैलारी गाउँपालिका",
    "en_name": "Kailari Rural Municipality",
    "district_id": 76
  },
  {
    "id": 744,
    "name": "धनगढी उपमहानगरपालिका",
    "en_name": "Dhangadhi Sub-Metropolitian City",
    "district_id": 76
  },
  {
    "id": 745,
    "name": "कृष्णपुर नगरपालिका",
    "en_name": "Krishnapur Municipality",
    "district_id": 77
  },
  {
    "id": 746,
    "name": "शुक्लाफाँटा नगरपालिका",
    "en_name": "Shuklaphanta Municipality",
    "district_id": 77
  },
  {
    "id": 747,
    "name": "बेदकोट नगरपालिका",
    "en_name": "Bedkot Municipality",
    "district_id": 77
  },
  {
    "id": 748,
    "name": "भिमदत्त नगरपालिका",
    "en_name": "Bhimdatta Municipality",
    "district_id": 77
  },
  {
    "id": 749,
    "name": "माहाकाली नगरपालिका",
    "en_name": "Mahakali Municipality",
    "district_id": 77
  },
  {
    "id": 750,
    "name": "लालझाडी गाउँपालिका",
    "en_name": "Laljhadi Rural Municipality",
    "district_id": 77
  },
  {
    "id": 751,
    "name": "पुनर्वास नगरपालिका",
    "en_name": "Punarbas Municipality",
    "district_id": 77
  },
  {
    "id": 752,
    "name": "बेलौरी नगरपालिका",
    "en_name": "Belouri Municipality",
    "district_id": 77
  },
  {
    "id": 753,
    "name": "बेलडाँडी गाउँपालिका",
    "en_name": "Beldandi Rural Municipality",
    "district_id": 77
  },
];
