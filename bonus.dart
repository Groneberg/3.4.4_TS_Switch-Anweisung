import 'dart:math';

enum CharacterClass { warrior, mage, archer }

enum TimeOfDay { morning, noon, evening, night }

enum Weather { sunny, rainy, stormy }

void main() {
  Random random = Random();

  // CharacterClass chosenClass = CharacterClass.warrior;
  CharacterClass chosenClass = CharacterClass.archer;
  TimeOfDay currentTime = TimeOfDay.evening;
  Weather currentWeather = Weather.rainy;

  int baseDamage = 50;
  int damageModifier =  0;
  int damage =  0;

  switch (chosenClass) {
    case CharacterClass.warrior:
      switch (currentTime) {
        case TimeOfDay.morning:
        case TimeOfDay.noon:
        case TimeOfDay.evening:
          damageModifier =  random.nextInt(50);
          damage = baseDamage + damageModifier;
        case TimeOfDay.night:
          damageModifier =  random.nextInt(50);
          damage = baseDamage - damageModifier;
      }
    case CharacterClass.mage:
      switch (currentWeather) {
        case Weather.sunny:
          damageModifier =  random.nextInt(50);
          damage = baseDamage - damageModifier;                     
        case Weather.rainy:
          damageModifier =  random.nextInt(50);
          damage = baseDamage - 25 + damageModifier; 
        case Weather.stormy:
          damageModifier =  random.nextInt(50);
          damage = baseDamage + damageModifier;
      }
    case CharacterClass.archer:
      switch (currentWeather) {
        case Weather.sunny:
          damageModifier =  random.nextInt(50);
          damage = baseDamage + damageModifier;         
        case Weather.rainy:
          damageModifier =  random.nextInt(50);
          damage = baseDamage - damageModifier;            
        case Weather.stormy:
          damageModifier =  random.nextInt(50);
          damage = baseDamage - 25 + damageModifier;        
      }
  }
  String ratingString = "";
  switch (damage) {
      case <=25:
        ratingString = "How weak!";
      case <=50:
        ratingString = "Nothing special";
      case <=75:
        ratingString = "Heavy attack!!";
      case <=100:
        ratingString = "Very dangerous!!!";
    }
  String text = "The weather is ${currentWeather.name}. \nIt is ${currentTime.name} and the ${chosenClass.name} deals a damage of $damage! \n";    
  print(text + ratingString);
}
