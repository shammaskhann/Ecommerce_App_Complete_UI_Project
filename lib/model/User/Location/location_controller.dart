import 'package:flutter/cupertino.dart';

class LocationController {
  var orginController = TextEditingController();
  var addressController = TextEditingController();
  var cityController = TextEditingController();
  List Location = [
    {
      'origin': 'Home',
      'address': 'House # 1, Road # 1, Block # A',
      'city': 'Karachi, Pakistan',
      'isSelected': 'true'
    },
    {
      'origin': 'Office',
      'address': 'House # 2, Road # 2, Block # B',
      'city': 'Karachi, Pakistan',
      'isSelected': 'false',
    },
    {
      'origin': 'Other',
      'address': 'House # 3, Road # 1, Block # A',
      'city': ' Lahore, Pakistan',
      'isSelected': 'false'
    },
  ];
  locationSelect(index) {
    for (var element in Location) {
      element['isSelected'] = 'false';
    }
    Location[index]['isSelected'] = 'true';
  }

  Map getSelectedLocation() {
    Map selectedLocationInfo = {};
    for (var element in Location) {
      if (element['isSelected'] == 'true') {
        selectedLocationInfo = element;
      }
    }
    return selectedLocationInfo;
  }

  addLocation() {
    Map newLocation = {
      'origin': orginController.text,
      'address': addressController.text,
      'city': cityController.text,
      'isSelected': 'false'
    };
    Location.add(newLocation);
  }

  controllerCler() {
    orginController.clear();
    addressController.clear();
    cityController.clear();
  }
}
