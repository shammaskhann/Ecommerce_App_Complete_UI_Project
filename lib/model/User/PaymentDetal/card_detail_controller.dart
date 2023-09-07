import 'package:flutter/material.dart';

class CardDetailController {
  final cardHolderName = TextEditingController();
  final cardNumber = TextEditingController();
  final expiryDate = TextEditingController();
  final cvv = TextEditingController();

  Map addCardDetail() {
    Map cardDetail = {};
    cardDetail['cardHolderName'] = cardHolderName.text;
    cardDetail['cardNumber'] = cardNumber.text;
    cardDetail['expiryDate'] = expiryDate.text;
    cardDetail['cvv'] = cvv.text;
    return cardDetail;
  }

  void dispose() {
    cardHolderName.dispose();
    cardNumber.dispose();
    expiryDate.dispose();
    cvv.dispose();
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
