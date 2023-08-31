import 'dart:core';
import '../../resources/AppItemsImage.dart';

class Items {
  List ItemList = [
    {
      'name': 'Sliced Tuna',
      'description':
          'Tuna is a saltwater fish belonging to the mackerel family. Its highly popular worldwide and is a rich source of nutrients, including omega-3 fatty acids, vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium',
      'img': [
        AppItemImage.fishSlicedFish,
        AppItemImage.fishSlicedFish2,
      ],
      'nurtrionalFact':
          'Tuna is a good source of protein and omega-3 fatty acids. It is also a good source of vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium.',
      'starRating': 4.5,
      'review': [
        {
          'reviewername': 'David',
          'review': 'Average Quality',
          'starRating': 3.5
        },
        {'reviewername': 'Ronaldo', 'review': 'Siiiiiiii', 'starRating': 5},
      ],
      'price': 90,
      'tagline': 'From Sea',
      'category': 'Fishes',
      'tags': ['Fresh', 'Low Delivery', 'Free Delivery', 'Popular']
    },
    {
      'name': "Salmon",
      'description':
          "Salmon is a popular fish that is consumed all over the world. It is a good source of protein and omega-3 fatty acids. It is also a good source of vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium. Salmon is a versatile fish that can be used in a variety of dishes. It can be eaten raw, canned, or cooked.",
      'img': [
        AppItemImage.fishStack,
        AppItemImage.fishStack2,
      ],
      'nurtrionalFact':
          "Salmon is a good source of protein and omega-3 fatty acids. It is also a good source of vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium.",
      'starRating': 3,
      'review': [
        {
          'reviewername': 'starBoy',
          'review': 'Good Quality',
          'starRating': 3.5
        },
        {
          'reviewername': 'Papu',
          'review': 'Fastest Delivery Ever',
          'starRating': 5
        },
        {
          'reviewername': 'Ikhlaq',
          'review': 'Not Recommended',
          'starRating': 1
        },
      ],
      'price': 150,
      'tagline': 'From Sea',
      'category': 'Fishes',
      'tags': ['Fresh', 'Halal']
    },
    {
      'name': 'Tilapia',
      'description':
          "Tilapia is a popular fish that is consumed all over the world. It is a good source of protein and omega-3 fatty acids. It is also a good source of vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium. Tilapia is a versatile fish that can be used in a variety of dishes. It can be eaten raw, canned, or cooked.",
      'img': [
        AppItemImage.fishqueueFish,
        AppItemImage.fishqueueFish2,
      ],
      'nurtrionalFact':
          "Tilapia is a good source of protein and omega-3 fatty acids. It is also a good source of vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium.",
      'starRating': 3.5,
      'review': [
        {
          'reviewername': 'George',
          'review': 'Fastest Delivery Ever',
          'starRating': 5
        },
        {
          'reviewername': 'Hannah',
          'review': 'Not Recommended',
          'starRating': 1
        },
        {
          'reviewername': 'Isabella',
          'review': 'Good Quality',
          'starRating': 3.5
        },
      ],
      'price': 100,
      'tagline': 'From Sea',
      'category': 'Fishes',
      'tags': ['Fresh', 'Halal', 'Low Price']
    },
    {
      'name': 'Crab',
      'description':
          "Crab is a seafood delight relished across the globe. Packed with protein, omega-3 fatty acids, vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium, crab offers both flavor and nutrition.",
      'img': [
        AppItemImage.fishCrab,
        AppItemImage.fishCrab2,
      ],
      'nurtrionalFact':
          "Crab is a seafood delight relished across the globe. Packed with protein, omega-3 fatty acids, vitamin B12, vitamin D, selenium, niacin, phosphorus, magnesium, and potassium, crab offers both flavor and nutrition.",
      'starRating': 4.5,
      'review': [
        {'reviewername': 'Bhutto', 'review': 'Fresh Food', 'starRating': 4},
        {'reviewername': 'Alex', 'review': 'Good Quality', 'starRating': 5},
        {
          'reviewername': 'Beth',
          'review': 'Fastest Delivery Ever',
          'starRating': 5
        },
        {
          'reviewername': 'Catherine',
          'review': 'Not Recommended',
          'starRating': 1
        },
      ],
      'price': 180,
      'tagline': 'From Sea',
      'category': 'Fishes',
      'tags': ['Fresh', 'Halal', 'Popular']
    },
    {
      'name': 'Fresh Beef',
      'category': 'Meat',
      'tagline': 'Organic',
      'description':
          "Beef is meat sourced from cattle, commonly used for culinary purposes. It's rich in protein and nutrients. Various cuts can be enjoyed through different cooking methods, offering a diverse range of culinary options.",
      'img': [
        AppItemImage.beefMeatSteak,
        AppItemImage.beefMeatSteak2,
        AppItemImage.beefMeatSteak3,
      ],
      'nurtrionalFact':
          "Beef is meat sourced from cattle, commonly used for culinary purposes. It's rich in protein and nutrients. Various cuts can be enjoyed through different cooking methods, offering a diverse range of culinary options.",
      'starRating': 3.5,
      'review': [
        {'reviewername': 'Alex', 'review': 'Good Quality', 'starRating': 5},
        {
          'reviewername': 'Beth',
          'review': 'Fastest Delivery Ever',
          'starRating': 5
        },
        {
          'reviewername': 'Catherine',
          'review': 'Not Recommended',
          'starRating': 1
        },
      ],
      'price': 100,
      'tags': ['Fresh', 'Halal', 'Free Delivery']
    },
    {
      'name': 'Chopped Beef',
      'category': 'Meat',
      'tagline': 'Organic',
      'description':
          "Chopped beef is a versatile meat derived from cattle. It's appreciated for its protein content and nutrient profile. Different cuts cater to various dishes, showcasing beef's adaptability in diverse cuisines.",
      'img': [
        AppItemImage.beefMeatChopped,
        AppItemImage.beefMeatChopped2,
      ],
      'nurtrionalFact':
          "Chopped beef is a versatile meat derived from cattle. It's appreciated for its protein content and nutrient profile. Different cuts cater to various dishes, showcasing beef's adaptability in diverse cuisines.",
      'starRating': 4,
      'review': [
        {'reviewername': 'David', 'review': 'Good', 'starRating': 3.5},
        {'reviewername': 'Emily', 'review': 'Very Good', 'starRating': 4.5},
        {'reviewername': 'Frank', 'review': 'Good', 'starRating': 3.5},
      ],
      'price': 90,
      'tags': ['Fresh', 'Halal', 'Low Price']
    },
    {
      'name': 'Chicken DrumStick',
      'category': 'Chicken',
      'tagline': 'Fresh & Organic',
      'description':
          "Chicken is a prevalent poultry type worldwide, known for its ease of raising and adaptability to various cuisines. Prepared through a multitude of cooking methods, chicken is often considered a healthier alternative to red meat due to lower cholesterol and saturated fat levels.",
      'img': [
        AppItemImage.chickenLolipop,
        AppItemImage.chickenLolipop2,
      ],
      'nurtrionalFact':
          "Chicken is a prevalent poultry type worldwide, known for its ease of raising and adaptability to various cuisines. Prepared through a multitude of cooking methods, chicken is often considered a healthier alternative to red meat due to lower cholesterol and saturated fat levels.",
      'starRating': 4.5,
      'review': [
        {'reviewername': 'Alice', 'review': 'Good', 'starRating': 3.5},
        {'reviewername': 'Bob', 'review': 'Very Good', 'starRating': 4.5},
        {
          'reviewername': 'Charlie',
          'review': 'Very Very Good',
          'starRating': 5
        },
      ],
      'price': 100,
      'tags': ['Halal', 'Free Delivery', 'Popular']
    },
    {
      'name': 'Grounded Chicken',
      'category': 'Chicken',
      'tagline': 'Fresh & Organic',
      'description':
          "Chicken is a common poultry variety found in cuisines across the globe. Its versatility in cooking methods has made it a staple in fast food and various dishes. It's sometimes considered a healthier option than red meat due to its reduced cholesterol and saturated fat content",
      'img': [
        AppItemImage.chickenGroundedMeat,
        AppItemImage.chickenGroundedMeat2,
      ],
      'nurtrionalFact':
          "Chicken is a common poultry variety found in cuisines across the globe. Its versatility in cooking methods has made it a staple in fast food and various dishes. It's sometimes considered a healthier option than red meat due to its reduced cholesterol and saturated fat content",
      'starRating': 3.5,
      'review': [
        {'reviewername': 'David', 'review': 'Organic', 'starRating': 3.5},
        {
          'reviewername': 'Frank',
          'review': 'Daado Mazo Ayo',
          'starRating': 3.5
        },
      ],
      'price': 70,
      'tags': ['Fresh', 'Halal', 'Low Price']
    },
    {
      'name': 'Fresh Apple',
      'category': 'Fruits',
      'tagline': 'Fresh & Organic',
      'description':
          "The apple is a pome fruit appreciated for its round shape and varying colors. It's a rich source of vitamins and antioxidants. Used in both raw and cooked dishes.",
      'img': [
        AppItemImage.fruitApple,
        AppItemImage.fruitApple2,
      ],
      'nurtrionalFact':
          "The apple is a pome fruit appreciated for its round shape and varying colors. It's a rich source of vitamins and antioxidants. Used in both raw and cooked dishes.",
      'starRating': 4.5,
      'review': [
        {
          'reviewername': 'Junejo',
          'review': 'Dil sy awaz sy nhi ai',
          'starRating': 2
        },
        {'reviewername': 'Emily', 'review': 'Very Good', 'starRating': 4.5},
        {'reviewername': 'Frank', 'review': 'Good', 'starRating': 3.5},
      ],
      'price': 100,
      'tags': ['Fresh', 'Halal', 'Free Delivery']
    },
    {
      'name': 'Juicy Lemon',
      'category': 'Fruits',
      'tagline': 'Fresh & Organic',
      'description':
          "The lemon is a small citrus tree producing oval yellow fruits with a sour taste. Its juice is used in culinary and cleaning purposes, while its distinctive flavor enhances various foods and drinks.",
      'img': [
        AppItemImage.fruitLemon,
        AppItemImage.fruitLemon2,
      ],
      'nurtrionalFact':
          "The lemon is a small citrus tree producing oval yellow fruits with a sour taste. Its juice is used in culinary and cleaning purposes, while its distinctive flavor enhances various foods and drinks.",
      'starRating': 2,
      'review': [
        {
          'reviewername': 'GanjiSwag',
          'review': 'Khali Wali Raas hi nhi Niimbo mai',
          'starRating': 1
        },
        {'reviewername': 'Emily', 'review': 'Very Good', 'starRating': 4.5},
      ],
      'price': 50,
      'tags': ['Fresh', 'Low Price', 'Popular']
    },
    {
      'name': 'Fresh Strawberry',
      'category': 'Fruits',
      'tagline': 'Fresh & Organic',
      'description':
          "The garden strawberry (Fragaria × ananassa) is a widely grown hybrid fruit cherished for its aroma, red color, juicy texture, and sweetness. It's enjoyed fresh or in various preparations like jams and desserts.",
      'img': [
        AppItemImage.fruitStrawberry,
        AppItemImage.fruitStrawberry2,
      ],
      'nurtrionalFact':
          "The garden strawberry (Fragaria × ananassa) is a widely grown hybrid fruit cherished for its aroma, red color, juicy texture, and sweetness. It's enjoyed fresh or in various preparations like jams and desserts.",
      'starRating': 4.5,
      'review': [
        {'reviewername': 'Grace', 'review': 'Good', 'starRating': 5},
        {'reviewername': 'Henry', 'review': 'Very Very Good', 'starRating': 5},
        {'reviewername': 'Isabella', 'review': 'Very Good', 'starRating': 4},
      ],
      'price': 80,
      'tags': ['Fresh', 'Low Price', 'Popular']
    },
    {
      'name': 'Fresh Tomato',
      'category': 'Vegetable',
      'tagline': 'Organic',
      'description':
          "The tomato (Solanum lycopersicum) is an edible berry originating from South America. It's known for its use in various dishes worldwide and is rich in vitamins and antioxidants.",
      'img': [
        AppItemImage.vegTomato,
        AppItemImage.vegTomato2,
      ],
      'nurtrionalFact':
          "The tomato (Solanum lycopersicum) is an edible berry originating from South America. It's known for its use in various dishes worldwide and is rich in vitamins and antioxidants.",
      'starRating': 2.5,
      'review': [
        {'reviewername': 'Grace', 'review': 'Good', 'starRating': 2},
        {'reviewername': 'Henry', 'review': 'Very Very Good', 'starRating': 4},
        {'reviewername': 'Isabella', 'review': 'Very Good', 'starRating': 3},
      ],
      'price': 100,
      'tags': ['Fresh', 'Free Delivery', 'Popular']
    },
    {
      'name': 'Garlic',
      'category': 'Vegetable',
      'tagline': 'Organic',
      'description':
          "The onion (Allium cepa) is a widely cultivated vegetable closely related to garlic and other Allium species. It's renowned for its culinary versatility and pungent flavor, used in various cuisines globally.",
      'img': [
        AppItemImage.vegGarlic,
        AppItemImage.vegGarlic2,
      ],
      'nurtrionalFact':
          "The onion (Allium cepa) is a widely cultivated vegetable closely related to garlic and other Allium species. It's renowned for its culinary versatility and pungent flavor, used in various cuisines globally.",
      'starRating': 3.5,
      'review': [
        {'reviewername': 'Grace', 'review': 'Good', 'starRating': 5},
        {'reviewername': 'Henry', 'review': 'Very Very Good', 'starRating': 5},
        {'reviewername': 'Isabella', 'review': 'Very Good', 'starRating': 4},
      ],
      'price': 50,
      'tags': ['Low Price', 'Popular']
    },
    {
      'name': 'Fresh Onion',
      'category': 'Vegetable',
      'tagline': 'Organic',
      'description':
          "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
      'img': [
        AppItemImage.vegOnion,
        AppItemImage.vegOnion2,
        AppItemImage.vegOnion3,
      ],
      'nurtrionalFact':
          "The onion (Allium cepa) is a widely cultivated vegetable, closely related to garlic, shallots, leeks, and chives. It's known for its culinary versatility and is part of the Allium genus, which includes various onion varieties like scallions and shallots.",
      'starRating': 4.5,
      'review': [
        {'reviewername': 'Grace', 'review': 'Good', 'starRating': 5},
        {'reviewername': 'Henry', 'review': 'Very Very Good', 'starRating': 5},
        {'reviewername': 'Isabella', 'review': 'Very Good', 'starRating': 4},
      ],
      'price': 80,
      'tags': ['Fresh', 'Free Delivery'],
    }
  ];
}
