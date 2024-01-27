import 'dart:io';

void main() {
  while (true) {
    print("Conversion App");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Time Conversion");
    print("Enter your choice: ");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        LengthConversion();
        break;
      case 2:
        TemperatureConversion();
        break;
      case 3:
        TimeConversion();
        break;
      default:
        print("Invalid choice!");
    }
    print("Do you want to continue?");
    print("1. yes");
    print("2. no");
    int continueChoice = int.parse(stdin.readLineSync()!);
    if (continueChoice != 1) {
      break;
    }
  }
}


void LengthConversion() {
  print("Length Conversion");
  print("1. Meters to Kilometers");
  print("2. Kilometers to Meters");
  print("3. Feets to Inches");
  print("4. Inches to Feets");
  print("5. Centimeters to Meters");
  print("6. Meters to Centimeterws");

  int lengthchoice = int.parse(stdin.readLineSync()!);

  switch (lengthchoice) {
    case 1:
    meterstokilometers();
    break;
    case 2:
    kilometerstometers();
    break;
    case 3:
    feetstoinches();
    break;
    case 4:
    inchestofeets();
    break;
    case 5:
    centimeterstometers();
    break;
    case 6:
    meterstocentimeters();
    break;
    default:
    print("Invalid choice!");
  }
}

void meterstokilometers(){
  print("Enter Meter:");
  num meter = num.parse(stdin.readLineSync()!);
  num Kilometers = meter/1000;
  print("Meters : Kilometers");
  print("$meter : $Kilometers");
}

void kilometerstometers(){
  print("Enter Kilometer:");
  num kilometer = num.parse(stdin.readLineSync()!);
  num meter = kilometer*1000; 
  print("Kilometers : Meters");
  print("$kilometer : $meter");
}

void feetstoinches(){
print("Enter Feet:");
num feet = num.parse(stdin.readLineSync()!);
num inches = feet*12;
print("Feets : Inches");
print("$feet : $inches");
}

void inchestofeets(){
print("Enter Inches:");
num inches = num.parse(stdin.readLineSync()!);
num feet =inches/12;
print("Inches : Feets");
print("$inches : $feet");
}

void centimeterstometers(){
  print("Enter Centimeters:");
  num centimeter = num.parse(stdin.readLineSync()!);
  num meter = centimeter/100;
  print("Centimeters : Meters");
  print("$centimeter : $meter"); 
}

void meterstocentimeters(){
  print("Enter Meters:");
  num meter = num.parse(stdin.readLineSync()!);
  num centimeter =meter*100;
  print("Meter : Centimeter");
  print("$meter : $centimeter");
}

void TemperatureConversion() {
  print("Temperature Conversion");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

 int temperaturechoice = int.parse(stdin.readLineSync()!);

 switch (temperaturechoice) {
  case 1:
  fahrenheittocelsius();
  break;
  case 2:
  celsiustofahrenheit();
  break;
  default:
  print("Invalid choice!");
 }
}

void fahrenheittocelsius(){
  print("Enter Fahrenheit:");
  num fahrenheit = num.parse(stdin.readLineSync()!);
  num celsius = (fahrenheit-32)*5/9;
  print("Fahrenheit : Celsius");
  print("$fahrenheit : $celsius");
}

void celsiustofahrenheit(){
print("Enter Celsius:");
num celsius =num.parse(stdin.readLineSync()!);
num fahrenheit = (celsius*9/5)+32;
print("Celsius : Fahrenheit");
print("$celsius : $fahrenheit");
}

void TimeConversion() {
  print("Time Conversion");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes ");
  print("6. Milliseconds to Hours");

  int timeChoice = int.parse(stdin.readLineSync()!);

  switch (timeChoice) {
    case 1:
      secondsToMinutes();
      break;
    case 2:
      minutesToSeconds();
      break;
    case 3:
     minutestohours();
    break;  
    case 4:
     secondstohours();
    break;
    case 5:
     millisecondstominutes();
    break;
    case 6:
    millisecondsToHours();
    break;
    default:
      print("Invalid choice!");
  }
}

void secondsToMinutes() {
  print("Enter Seconds: ");
 num seconds = num.parse(stdin.readLineSync()!);
  num minutes = seconds / 60;
  print("Seconds : Minutes");
  print("$seconds : $minutes ");
}

void minutesToSeconds() {
   print("Enter Minutes: ");
 num minutes = num.parse(stdin.readLineSync()!);
  num seconds =  minutes*60;
  print("Minutes : Seconds");
  print("$minutes : $seconds ");
}

void minutestohours(){
  print("Enter Minutes:");
num minutes = num.parse(stdin.readLineSync()!);
num hours = minutes/60;
print("Minutes : Hours");
print("$minutes:$hours");
}

void secondstohours(){
  print("Enter Seconds:");
  num seconds = num.parse(stdin.readLineSync()!);
  num hours = seconds/3600;
  print("Seconds : Hours");
  print("$seconds:$hours");
}

void millisecondstominutes(){
   print("Enter Milliseconds:");
   num milliseconds = num.parse(stdin.readLineSync()!);
   num minutes =milliseconds/60000;
   print("Milliseconds : Minutes");
   print("$milliseconds:$minutes");      
}

void millisecondsToHours() {
  print("Enter Milliseconds: ");
  num milliseconds = num.parse(stdin.readLineSync()!);
  num hours = milliseconds/3600000;
  print("Milliseconds : Hours");
  print("$milliseconds : $hours");
}