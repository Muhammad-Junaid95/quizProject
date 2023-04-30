import 'dart:io';

void main() {
  print("Welcome To Quiz Program");
  print("Please Select Category (1-3)");
  print("<1> General Knowledge");
  print("<2> Geography");
  print("<3> Science");
  String input = stdin.readLineSync() as String;
  if (input == "1") {
    generalKnowledge();
  } else if (input == "2") {
    geography();
  } else if (input == "3") {
    science();
  } else {
    print("Wrong Selection");
  }
  print("Hope you Enjoy it...");
  print("Come back again, THANK YOU..");
}

void generalKnowledge() {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "What is the capital of France?",
      "options": ["Paris", "Marseille", "Lyon", "Toulouse"],
      "answer": "Paris",
    },
    {
      "question": "What is the currency of the United States?",
      "options": ["Pound", "Dollar", "Euro", "Yen"],
      "answer": "Dollar",
    },
    {
      "question": "What is the largest organ in the human body?",
      "options": ["Liver", "Lungs", "Heart", "Skin"],
      "answer": "Skin",
    },
    {
      "question": "What is the smallest country in the world?",
      "options": ["Monaco", "Nauru", "Tuvalu", "Vatican City"],
      "answer": "Vatican City",
    },
    {
      "question": "What is the highest mountain in the world?",
      "options": [
        "Mount Everest",
        "Mount Kilimanjaro",
        "Mount McKinley",
        "Mount Fuji"
      ],
      "answer": "Mount Everest",
    },
  ];
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    final Map<String, dynamic> question = questions[i];
    print("Question ${i + 1}: ${question["question"]}");
    for (int j = 0; j < question["options"].length; j++) {
      print("${j + 1}. ${question["options"][j]}");
    }
    print("Enter your answer (1-4):");
    int answer = int.parse(stdin.readLineSync()!);
    if (question["options"][answer - 1] == question["answer"]) {
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }
  print("Your score is: $score/${questions.length}");
}

void geography() {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "Instrument used to measure earthquake is known as?",
      "options": [
        "seismograph",
        "quake meter",
        "barometer",
        "none of the above"
      ],
      "answer": "seismograph",
    },
    {
      "question": "Which country is known as the Land of Thousand Lakes?",
      "options": ["Ireland", "Norway", "Finland", "Canada"],
      "answer": "Finland",
    },
    {
      "question":
          "Which one of the following country is known as the Land of Thunderbolt?",
      "options": ["Bhutan", "Nepal", "Bolivia", "Belgium"],
      "answer": "Bhutan",
    },
    {
      "question": "Name the sea whose boundaries touch three Continents",
      "options": [
        "Red Sea",
        "Caspian Sea",
        "Caribbean Sea",
        "Mediterranean Sea"
      ],
      "answer": "Caribbean Sea",
    },
    {
      "question":
          "Among the following planets, which is the brightest planet ?",
      "options": ["Mercury", "Venus", "Mars", "Jupiter"],
      "answer": "Venus",
    },
  ];
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    final Map<String, dynamic> question = questions[i];
    print("Question ${i + 1}: ${question["question"]}");
    for (int j = 0; j < question["options"].length; j++) {
      print("${j + 1}. ${question["options"][j]}");
    }
    print("Enter your answer (1-4):");
    int answer = int.parse(stdin.readLineSync()!);
    if (question["options"][answer - 1] == question["answer"]) {
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }
  print("Your score is: $score/${questions.length}");
}

void science() {
  final List<Map<String, dynamic>> questions = [
    {
      "question": "The liquid metal is?",
      "options": ["Bismuth", "Magnesium", "Mercury", "Sodium"],
      "answer": "Mercury",
    },
    {
      "question": "Which country is known as the Land of Thousand Lakes?",
      "options": ["Ireland", "Norway", "Finland", "Canada"],
      "answer": "Finland",
    },
    {
      "question": "Which of the following is not a primary color?",
      "options": ["Red", "Green", "Blue", "Yellow"],
      "answer": "Green",
    },
    {
      "question": "Endothermic reactions are those in which?",
      "options": [
        "Heat is evolved",
        "Heat is absorbed",
        "Temprature increases",
        "Light is produced"
      ],
      "answer": "Heat is absorbed",
    },
    {
      "question": "Acid represent in gastric juice is?",
      "options": [
        "Hydrochloric Acid",
        "Citric Acid",
        "Sulphuric Acid",
        "Acetic Acid"
      ],
      "answer": "Hydrochloric Acid",
    },
  ];
  int score = 0;
  for (int i = 0; i < questions.length; i++) {
    final Map<String, dynamic> question = questions[i];
    print("Question ${i + 1}: ${question["question"]}");
    for (int j = 0; j < question["options"].length; j++) {
      print("${j + 1}. ${question["options"][j]}");
    }
    print("Enter your answer (1-4):");
    int answer = int.parse(stdin.readLineSync()!);
    if (question["options"][answer - 1] == question["answer"]) {
      print("Correct!");
      score++;
    } else {
      print("Incorrect!");
    }
  }
  print("Your score is: $score/${questions.length}");
}
