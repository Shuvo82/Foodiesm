class FoodDataSource {
  static List<Map?>foods = [
    {
      "id": "1",
      "name": "Apple",
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAMRxq6k47wjlZ34GoJL0_SLH9bfIpLTF4Rd2Dh_yP35IdTPv20UyoWpwlq8Deb13ssdw&usqp=CAU",
      "type":["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamin": ["C", "B6", "d"],
      "calories": "52",
      "tests":"Sweet",
      "calcium":"0%",
      "details": "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",


    },
    {
      "id": "2",
      "name": "Avocado",
      "img": "https://img.freepik.com/premium-photo/avocado-with-cut-halfand-green-leaves-isolated_252965-586.jpg",
      "type":["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamin": ["C", "B6", "E", "K"],
      "calories": "240",
      "tests":"Creamy, and almost buttery",
      "calcium":"1%",
      "details": "An avocado is a bright green fruit with a large pit and dark leathery skin. They're also known as alligator pears or butter fruit. Avocados are a favorite of the produce section. They're the go-to ingredient for guacamole dips",


    },
    {
      "id": "3",
      "name": "Banana",
      "img": "data:image/jpeg;base64,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",
      "type":["Fruit","Vegetable"],
      //this information is for per 100 gram of this fruit
      "vitamin": ["C", "D", "B6"],
      "calories": "89",
      "tests":"Sweet",
      "calcium":"0%",
      "details": "Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.",


    },
    // {
    //   "id": "1",
    //   "name": "Apple",
    //   "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
    //   "type":["Fruit","Vegetable"],
    //   //this information is for per 100 gram of this fruit
    //   "vitamin": ["C", "D", "E"],
    //   "calories": "52",
    //   "tests":"Sweet",
    //   "calcium":"0%",
    //   "details": "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
    //
    //
    // },
    // {
    //   "id": "1",
    //   "name": "Apple",
    //   "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
    //   "type":["Fruit","Vegetable"],
    //   //this information is for per 100 gram of this fruit
    //   "vitamin": ["C", "D", "E"],
    //   "calories": "52",
    //   "tests":"Sweet",
    //   "calcium":"0%",
    //   "details": "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
    //
    //
    // },
    // {
    //   "id": "1",
    //   "name": "Apple",
    //   "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
    //   "type":["Fruit","Vegetable"],
    //   //this information is for per 100 gram of this fruit
    //   "vitamin": ["C", "D", "E"],
    //   "calories": "52",
    //   "tests":"Sweet",
    //   "calcium":"0%",
    //   "details": "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
    //
    //
    // },
    // {
    //   "id": "1",
    //   "name": "Apple",
    //   "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
    //   "type":["Fruit","Vegetable"],
    //   //this information is for per 100 gram of this fruit
    //   "vitamin": ["C", "D", "E"],
    //   "calories": "52",
    //   "tests":"Sweet",
    //   "calcium":"0%",
    //   "details": "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
    //
    //
    // },

    //other food info will be added here

  ];
}
