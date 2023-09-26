import '../model/general.dart';

class EjercicioHelper {
  static List<Ejercicio> featuredEjercicio = featuredEjercicioRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();

  static List<Ejercicio> recommendationEjercicio = recommendationEjercicioRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();

  static List<Ejercicio> newlyPostedEjercicio = newlyPostedEjercicioRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();

  static List<Ejercicio> sweetFoodRecommendationEjercicio = sweetFoodRecommendationEjercicioRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();

  static Ejercicio popularEjercicio = Ejercicio(
    title: popularEjercicioRawData['title'],
    photo: popularEjercicioRawData['photo'],
    calories: popularEjercicioRawData['calories'],
    time: popularEjercicioRawData['time'],
    description: popularEjercicioRawData['description'],
  );

  static List<Ejercicio> sarchResultEjercicio = recipeSearchResultRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();

  static List<Ejercicio> bookmarkedEjercicio = bookmarkedEjercicioRawData
      .map((data) => Ejercicio(
            title: data['title'],
            photo: data['photo'],
            calories: '',
            time: '',
            description: data['description'],
          ))
      .toList();
}

var popularEjercicioRawData = {
  'title': 'Elige el tipo de rutina que quieras',
  'photo': 'assets/images/rutinas.png',
  'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
  'ingridients': [
    {
      'name': 'Spinach',
      'size': '250 g',
    },
    {
      'name': 'Noodles',
      'size': '1000 g',
    },
    {
      'name': 'Chili',
      'size': '50 g',
    },
    {
      'name': 'Chocolatte',
      'size': '1000 g',
    },
    {
      'name': 'Brocolli',
      'size': '150 g',
    }
  ],
  'tutorial': [
    {
      'step': '1. Tuangkan Air.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '2. Masukkan Mie.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '3. Cuci Piringnya.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '4. Tambahkan Nasi.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
    {
      'step': '5. Buang semua isi piring.',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    },
  ],
  'reviews': [
    {
      'username': '@username',
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': '@username',
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': '@username',
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'username': '@username',
      'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
  ]
};

var featuredEjercicioRawData = [
  {
    'title': 'Green Leafy Vegetable Dish.',
    'photo': 'assets/images/featured2.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Noodles With Vegetable in Bowl.',
    'photo': 'assets/images/featured1.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Levantar pesas',
    'photo': 'assets/images/caminadora.png',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Mancuernas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Poleas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  }
];

var recommendationEjercicioRawData = [
  {
    'title': 'Brown Chopstick Bowl',
    'photo': 'assets/images/recom2.jpg',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Delicious Salad with Egg.',
    'photo': 'assets/images/recom1.jpg',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
];

var newlyPostedEjercicioRawData = [
  {
    'title': 'Levantar pesas',
    'photo': 'assets/images/caminadora.png',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Mancuernas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Poleas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Caminadora',
    'photo': 'assets/images/caminadora.png',
    'calories': '1200 Cal',
    'time': '40 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Bicicleta',
    'photo': 'assets/images/bicicleta_estatica.png',
    'calories': '1100 Cal',
    'time': '30 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Elíptica',
    'photo': 'assets/images/caminadora.png',
    'calories': '1450 Cal',
    'time': '120 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Bicicleta estática',
    'photo': 'assets/images/bicicleta_estatica.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Caminadora',
    'photo': 'assets/images/caminadora.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
];

var sweetFoodRecommendationEjercicioRawData = [
  {
    'title': 'Bicicleta estática',
    'photo': 'assets/images/bicicleta_estatica.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Caminadora',
    'photo': 'assets/images/caminadora.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
];

var popularEjercicioKeyword = ['Noodles', 'Bakso', 'Kwetiaw', 'Nasi Goreng', 'Spaghetti', 'Rujak', 'Chicken', 'Nugget', 'Ice Cream', 'Bakmi'];

var recipeSearchResultRawData = [
  {
    'title': 'Levantar pesas',
    'photo': 'assets/images/caminadora.png',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Mancuernas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Caminadora',
    'photo': 'assets/images/caminadora.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Bicicleta',
    'photo': 'assets/images/caminadora.png',
    'calories': '1100 Cal',
    'time': '30 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Elíptica',
    'photo': 'assets/images/caminadora.png',
    'calories': '1450 Cal',
    'time': '120 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Poleas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
];

var bookmarkedEjercicioRawData = [
  {
    'title': 'Levantar pesas',
    'photo': 'assets/images/caminadora.png',
    'calories': '1500 Cal',
    'time': '25 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Mancuernas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Caminadora',
    'photo': 'assets/images/caminadora.png',
    'calories': '1200 Cal',
    'time': '40 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Bicicleta',
    'photo': 'assets/images/caminadora.png',
    'calories': '1100 Cal',
    'time': '30 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Elíptica',
    'photo': 'assets/images/caminadora.png',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
  {
    'title': 'Poleas',
    'photo': 'assets/images/caminadora.png',
    'calories': '870 Cal',
    'time': '32 min',
    'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'ingridients': [
      {
        'name': 'Spinach',
        'size': '250 g',
      },
      {
        'name': 'Noodles',
        'size': '1000 g',
      },
      {
        'name': 'Chili',
        'size': '50 g',
      },
      {
        'name': 'Chocolatte',
        'size': '1000 g',
      },
      {
        'name': 'Brocolli',
        'size': '150 g',
      }
    ],
    'tutorial': [
      {
        'step': '1. Tuangkan Air.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '2. Masukkan Mie.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '3. Cuci Piringnya.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '4. Tambahkan Nasi.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
      {
        'step': '5. Buang semua isi piring.',
        'description':
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      },
    ],
    'reviews': [
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
      {
        'username': '@username',
        'review': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      },
    ]
  },
];
