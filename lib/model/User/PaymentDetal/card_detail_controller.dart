import 'package:flutter/material.dart';

class CardDetailController {
  final cardHolderName = TextEditingController();
  final cardNumber = TextEditingController();
  final expiryDate = TextEditingController();
  final cvv = TextEditingController();
  List cardDetail = [
    // //demo data
    // {
    //   'cardHolderName': 'Shammas Khan',
    //   'cardNumber': '9876 1234 7654 3210',
    //   'expiryDate': '01/24',
    //   'cvv': '420',
    // }
  ];
  void addCardDetail() {
    cardDetail.add({
      'cardHolderName': cardHolderName.text,
      'cardNumber': cardNumber.text,
      'expiryDate': expiryDate.text,
      'cvv': cvv.text,
    });
  }

  // setCardDetail() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String encodedCardDetail = json.encode(cardDetail);
  //   prefs.setString('cardDetail', encodedCardDetail);
  // }

  // fetchCardDetail() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? encodedCardDetail = prefs.getString('cardDetail');
  //   if (encodedCardDetail != null) {
  //     List decodedCardDetail = json.decode(encodedCardDetail);
  //     cardDetail = decodedCardDetail;
  //   }
  // }
}
