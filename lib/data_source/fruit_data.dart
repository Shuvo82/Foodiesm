class FruitDataSource {
  static List<Map?> fruits = [
    {
      "id": "1",
      "name": "Apple",
      "img": "https://lh6.googleusercontent.com/B04jaZddFiKNqTDJ5TDXwSgDOHGh5dAJ9Xw-nMMlqdS1Zj7hKb1sSy7J4clouUEtdvs=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6", "d"],
      "calorie": "52",
      "test": "Sweet",
      "calcium": "0%",
      "iron": "0%",
      "magnesium": "1%",
      "about":
          "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus",
    },
    {
      "id": "2",
      "name": "Avocado",
      "img":"https://lh6.googleusercontent.com/EcAlKvm5NKEeuAfs2stY0bxFrCmWZx0bCCrgtQzVpK5a0JdcRIvY3j_IkrW12HonJYI=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6", "E", "K"],
      "calorie": "240",
      "test": "Creamy, and almost buttery",
      "calcium": "1%",
      "iron": "0%",
      "magnesium": "0%",
      "about":
      "An avocado is a bright green fruit with a large pit and dark leathery skin.  Avocados are a favorite of the produce section. They're the go-to ingredient for guacamole dips",
    },
    {
      "id": "3",
      "name": "Banana",
      "img":
          " https://lh5.googleusercontent.com/j1OjLhTY90k4b8lcy5siRPqkPem2L1rUbNXiMNdgYoBYW20s9Flo0MRCwaDr46kzBi0=w2400",
      "type": ["Fruit", "Vegetable"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "D", "B6"],
      "calorie": "89",
      "test": "Sweet",
      "calcium": "0%",
      "iron": "1%",
      "magnesium": "6%",
      "about":
          "Bananas are one of the most popular fruits worldwide. They contain essential nutrients that can have a protective impact on health.",
    },
    {
      "id": "4",
      "name": "Blueberry",
      "img":
      "https://lh3.googleusercontent.com/qaWFLRMKZpGQzIhDy46kmwnP2Qi8GJfnA9-UP52f9LMZzNYOB5kuJUIpy3AImwbOUoY=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["A", "C"],
      "calorie": "57",
      "test": "Sour-sweet",
      "calcium": "1%",
      "iron": "2%",
      "magnesium": "2%",
      "about":
      "Blueberries can help heart health, bone strength, skin health, blood pressure, diabetes management, cancer prevention, and mental health.",
    },
    {
      "id": "5",
      "name": "Cherry",
      "img":"https://lh3.googleusercontent.com/k7O-8PNqtU3kpoaaLwAiU3QEWRZe7KLllwr0770WWgwXScPbCHyxnuoBrVPE1VUdfP4=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C"],
      "calorie": "50",
      "test": "sweet and sour",
      "calcium": "1%",
      "iron": "1%",
      "magnesium": "2%",
      "about":
      "A cherry is a fruit that grows on a tree or a bush. It belongs to the genus Prunus. It is red in color, with a seed in the middle. It tastes slightly sour, and is often used to flavour cakes and ice cream, or is baked in a pie or cobbler.",
    },
    {
      "id": "6",
      "name": "Coconut",
      "img":"https://lh3.googleusercontent.com/sCTuEMH46Z0JQ4hMETIwJkYjDgs9F_DtlY2ZrayP2602PUejEoXOo3G7XJsmI7qyolU=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6"],
      "calorie": "354",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "13%",
      "magnesium": "8%",
      "about":
      "Coconut is the fruit of a tropical palm plant. It has a hard shell, edible white flesh and clear liquid, sometimes referred to as “water,” which is often used as a beverage.",
    },
    {
      "id": "7",
      "name": "Dragon",
      "img":"https://lh4.googleusercontent.com/vngcSd3t4ul6YguGrn1_yzCBdxhfwAWblX1ULvEU_mdTOMXd3WKBQ4swspRAX2fTuKk=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C"],
      "calorie": "60",
      "test": "Nutural",
      "calcium": "11%",
      "iron": "0.1%",
      "magnesium": "0%",
      "about":
      "Dragon fruit, also known as pitahaya or strawberry pear, is a tropical fruit known for its vibrant red skin and sweet, seed-speckled pulp. Its unique look and acclaimed superfood powers have made it popular among foodies and the health-conscious.",
    },
    {
      "id": "8",
      "name": "Grapes",
      "img":"https://lh4.googleusercontent.com/8xf3SLDTcr745weQmGgZeGadrK8IqGg_zVLfClzb8-lVc_gSl3L2EeQb4WSdS9r3VFc=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["B6","C"],
      "calorie": "67",
      "test": "sweet and sour",
      "calcium": "1%",
      "iron": "1%",
      "magnesium": "1%",
      "about":
      "The nutrients in grapes may help protect against cancer, eye problems, cardiovascular disease, and other health conditions. Resveratrol is a key nutrient in grapes that may offer health benefits.",
    },
    {
      "id": "9",
      "name": "Guava",
      "img":"https://lh6.googleusercontent.com/jJdvjJfH4KISkEXg2oOvQiFB05CFzAEv4Zso8KEFfaE_X5yU1Pta7CCpC5NJ4SVAcM8=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["B6","C"],
      "calorie": "68",
      "test": "sweet and sour",
      "calcium": "1%",
      "iron": "1%",
      "magnesium": "5%",
      "about":
      " Guava trees are native to tropical America and are grown in tropical and subtropical areas worldwide. Guava fruits are processed into jams, jellies, and preserves and are common pastry fillings.",
    },
    {
      "id": "10",
      "name": "Kiwi",
      "img":"https://lh6.googleusercontent.com/X_v489yz1cGUhhazIbtYZ1LssLA7Y17rsA7fURtDNVYj3Bx0rh-O4ngTH6iwW9T8UU4=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["B6","C"],
      "calorie": "61",
      "test": "tangy and sweet",
      "calcium": "3%",
      "iron": "1%",
      "magnesium": "4%",
      "about":
      "The Kiwi fruit has a distinct tangy and sweet taste. Its taste is similar to that of pineapple and strawberry with its acidic essence. Kiwi tends to be slightly citric but the sweetness increases as the fruit continue to ripen.",
    },
    {
      "id": "11",
      "name": "Lemon",
      "img":"https://lh4.googleusercontent.com/UaY_PZ4BFZ_HXjFgIOL3bWjCKPXU9YnM4cTU0iVsi51UgCAh2hE628NfKwtCngH0Dgc=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6"],
      "calorie": "29",
      "test": "Sour",
      "calcium": "2%",
      "iron": "3%",
      "magnesium": "2%",
      "about":
      "Lemons give flavor to baked goods, sauces, salad dressings, marinades, drinks, and desserts, and they are also a good source of vitamin C.",
    },
    {
      "id": "12",
      "name": "Mango",
      "img":"https://lh6.googleusercontent.com/M05OIQQd4wr8hEodnfMwAtogcnANsgqYofXdrQRNG0eKYJFw6V7oIvjDHPcEQesqQmA=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6", "A"],
      "calorie": "65",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "1%",
      "magnesium": "2%",
      "about":
      "A ripe fresh mango can be described as tasting sweet, citrus, and almost melon flavor all in one.",
    },
    {
      "id": "13",
      "name": "Orange",
      "img":"https://lh6.googleusercontent.com/q21M78ErPyAqW1KSqof4boT_x3NoahutwlbkKkMTnZx-gUemGJu14obSFqFZVz99YjY=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6"],
      "calorie": "47",
      "test": "Sweet",
      "calcium": "4%",
      "iron": "0%",
      "magnesium": "2%",
      "about":
      "Oranges are a type of low calorie, highly nutritious citrus fruit. As part of a healthful and varied diet, oranges contribute to strong, clear skin.",
    },
    {
      "id": "14",
      "name": "Papaya",
      "img":"https://lh4.googleusercontent.com/ydAOoi4v55jUv7leLjjaEW14P6y_Y1t-g-wzsQeB-CRfzUokRxcG3SSBBwIT5gqEnPQ=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["A","C", "E", "K"],
      "calorie": "32",
      "test": "Sweet",
      "calcium": "2%",
      "iron": "2%",
      "magnesium": "6%",
      "about":
      "Papayas are rich in water and low in calories, providing with minerals like calcium, phosphorus and iron and vitamin A and C. It contains papain, an enzyme that favours digestion.",
    },
    {
      "id": "15",
      "name": "Pears",
      "img":"https://lh3.googleusercontent.com/GFUdoVhHKfa4yh8SWFc8SkMTbHck63Og945x_nSLbCIBExyYyC3Sefy4y1hRjw6MNws=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "E", "K"],
      "calorie": "57",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "1%",
      "magnesium": "2%",
      "about":
      "A pear is a mild, sweet fruit with a fibrous center. They are rich in essential antioxidants, plant compounds, and dietary fiber. Pears pack all of these nutrients in a fat free, cholesterol free fruit that is around 100 calories.",
    },
    {
      "id": "16",
      "name": "Pineapple",
      "img":"https://lh3.googleusercontent.com/yjqfFAY1PlnCXDFm7-ZgtrG-XJYRuKEKlTyZcZ6HpFlmeiDolzd29q40YZttEH1XBRs=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6"],
      "calorie": "50",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "2%",
      "magnesium": "3%",
      "about":
      "Pineapples are tropical fruits that are rich in vitamins, enzymes and antioxidants. They may help boost the immune system, build strong bones and aid indigestion.",
    },
    {
      "id": "17",
      "name": "Peaches",
      "img":"https://lh4.googleusercontent.com/pzbey2gXll5cenQpTTOcOG4Sfcr80W9pvQh92AMmVDRMOemRvI5I5lUOzQ1eI7Tgvn0=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "A", "K"],
      "calorie": "34",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "2%",
      "magnesium": "3%",
      "about":
      "Peaches are a summertime favorite throughout the nation. The fuzzy fruit is a great source of vitamin C, A, low in calories, and free of cholesterol,",
    },

    {
      "id": "18",
      "name": "Raspberries",
      "img":"https://lh3.googleusercontent.com/9EcTnuCIhWMu8yWB3pXN59jxNVocVSSH_93Hie7MM2pYJlknwu7Dl4wVHmg6PA3CajQ=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6"],
      "calorie": "53",
      "test": "Sweet and sour ",
      "calcium": "2%",
      "iron": "3%",
      "magnesium": "5%",
      "about":
      "Raspberries are a popular berry with a rich color and sweet juicy taste. They are a good source of vitamins, minerals, and antioxidants.",
    },
    {
      "id": "19",
      "name": "Strawberries",
      "img":"https://lh6.googleusercontent.com/RWlT2bs8WCYiLGZN5CrTiorbYJGi4U_dyUz_d8zGGgjo3lNFlPvcogmV9VGWtL4FdEI=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "E", "K"],
      "calorie": "32",
      "test": "Sweet",
      "calcium": "2%",
      "iron": "3%",
      "magnesium": "4%",
      "about":
      "Strawberries, like other berries, are rich in vitamins, minerals, fiber, and compounds with antioxidant and anti-inflammatory properties.",
    },
    {
      "id": "20",
      "name": "Watermelon",
      "img":"https://lh6.googleusercontent.com/gi6kvj5pVlkEyE2TOWfMaUG7PNMqqnU34tVuTHsKWmj2kga4tXOYRObbtImVQ-qsJo0=w2400",
      "type": ["Fruit"],
      //this information is for per 100 gram of this fruit
      "vitamins": ["C", "B6", "A"],
      "calorie": "30",
      "test": "Sweet",
      "calcium": "1%",
      "iron": "2%",
      "magnesium": "3%",
      "about":
      "Watermelon is a sweet and refreshing low calorie summer snack. It provides hydration and also essential nutrients, including vitamins, minerals.",
    },





  ];
}
