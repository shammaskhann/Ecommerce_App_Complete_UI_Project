class LocationController {
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
}
