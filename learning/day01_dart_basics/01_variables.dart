// ============================================================================
// DAY 1: DART BASICS - VARIABLES AND DATA TYPES
// ============================================================================
// Welcome to your first Dart program! 
// This file will teach you the absolute basics of programming in Dart.
//
// HOW TO RUN THIS FILE:
// 1. Open terminal in VS Code (Terminal → New Terminal)
// 2. Navigate here: cd learning/day01_dart_basics
// 3. Run: dart 01_variables.dart
// ============================================================================

// === WHAT IS A PROGRAM? ===
// A program is a set of instructions for the computer to follow.
// Think of it like a recipe - you follow steps in order to make something.

// === THE main() FUNCTION ===
// Every Dart program starts with a main() function.
// This is the "entry point" - where the program begins running.
// Think of it as the front door to your house.

void main() {
  // This is where our code goes!
  // The curly braces { } mark the beginning and end of main()
  
  // =========================================================================
  // LESSON 1: PRINTING TO CONSOLE
  // =========================================================================
  
  // print() displays text in the terminal
  // It's like writing on a blackboard so you can see what's happening
  
  print('🎉 Welcome to Day 1 of MindShield Development!');
  print('Today we learn: Variables and Data Types');
  print(''); // Empty line for spacing
  
  // =========================================================================
  // LESSON 2: COMMENTS
  // =========================================================================
  
  // Lines starting with // are COMMENTS
  // Comments are notes for humans - the computer ignores them
  // Use comments to explain what your code does!
  
  /*
    You can also write multi-line comments like this.
    Everything between the slash-star and star-slash is a comment.
    Great for longer explanations!
  */
  
  // =========================================================================
  // LESSON 3: VARIABLES
  // =========================================================================
  
  // WHAT IS A VARIABLE?
  // Think of a variable as a labeled box where you store something.
  // - The LABEL is the variable name (e.g., "age")
  // - What's INSIDE is the value (e.g., 25)
  
  // SYNTAX: type variableName = value;
  
  // =========================================================================
  // DATA TYPE 1: int (INTEGER - Whole Numbers)
  // =========================================================================
  
  // 'int' means "integer" - whole numbers with no decimal point
  // Use for: counting things, ages, quantities
  
  int age = 23;                    // Age in years
  int phoneChecksPerDay = 144;     // Average phone checks (the problem we're solving!)
  int stakAmount = 500;            // Money in rupees
  
  print('=== INTEGERS (Whole Numbers) ===');
  print('My age: $age');           // $ lets you insert variable values
  print('Phone checks per day: $phoneChecksPerDay');
  print('Stake amount: ₹$stakAmount');
  print('');
  
  // =========================================================================
  // DATA TYPE 2: double (DECIMAL NUMBERS)
  // =========================================================================
  
  // 'double' means numbers with decimal points
  // Use for: measurements, percentages, money calculations
  
  double successRate = 0.65;       // 65% as a decimal (0.65)
  double height = 5.9;             // Height in feet
  double pi = 3.14159;             // Mathematical constant
  
  print('=== DOUBLES (Decimal Numbers) ===');
  print('Success rate: ${successRate * 100}%');  // ${} for calculations
  print('Height: $height feet');
  print('Value of pi: $pi');
  print('');
  
  // =========================================================================
  // DATA TYPE 3: String (TEXT)
  // =========================================================================
  
  // 'String' means text - words, sentences, anything in quotes
  // Can use single quotes 'text' or double quotes "text"
  
  String name = 'Raj Roy';
  String projectName = 'MindShield';
  String greeting = 'Welcome to $projectName!';  // Variables work in strings!
  String quote = "Breaking phone addiction, one session at a time.";
  
  print('=== STRINGS (Text) ===');
  print('Name: $name');
  print('Project: $projectName');
  print(greeting);
  print(quote);
  print('');
  
  // =========================================================================
  // DATA TYPE 4: bool (BOOLEAN - True/False)
  // =========================================================================
  
  // 'bool' means boolean - only two possible values: true or false
  // Use for: yes/no questions, on/off states, conditions
  
  bool isLoggedIn = true;
  bool hasCompletedSession = false;
  bool isPremiumUser = false;
  bool isPhoneAddictionReal = true;  // Definitely true! 📱
  
  print('=== BOOLEANS (True/False) ===');
  print('Logged in: $isLoggedIn');
  print('Session completed: $hasCompletedSession');
  print('Premium user: $isPremiumUser');
  print('Phone addiction is real: $isPhoneAddictionReal');
  print('');
  
  // =========================================================================
  // LESSON 4: VARIABLE RULES
  // =========================================================================
  
  // NAMING RULES:
  // ✅ CAN use: letters, numbers, underscores
  // ✅ MUST start with: a letter or underscore (not a number)
  // ✅ Convention: use camelCase (first word lowercase, rest capitalized)
  // ❌ CANNOT use: spaces, special characters (@, #, %, etc.)
  // ❌ CANNOT use: Dart keywords (int, if, for, etc.)
  
  // Good variable names (descriptive, clear):
  int totalSessions = 10;
  double averageSuccessRate = 0.72;
  String userName = 'devKiNGCRiC';
  bool isSessionActive = true;
  
  // Bad variable names (avoid these):
  // int x = 10;              // ❌ Not descriptive
  // int 2users = 5;          // ❌ Can't start with number
  // String user name = 'Raj'; // ❌ Can't have spaces
  // double money$ = 500;      // ❌ Can't use special chars
  
  print('=== GOOD VARIABLE NAMES ===');
  print('Total sessions: $totalSessions');
  print('Average success rate: ${averageSuccessRate * 100}%');
  print('Username: $userName');
  print('Session active: $isSessionActive');
  print('');
  
  // =========================================================================
  // LESSON 5: CONSTANTS (Variables That Don't Change)
  // =========================================================================
  
  // Use 'final' or 'const' for values that never change
  // final = set once at runtime (when program runs)
  // const = set once at compile time (before program runs)
  
  final String appName = 'MindShield';
  final int minimumStake = 200;
  
  const double charityPercentage = 0.52;  // 52% - never changes
  const double opsPercentage = 0.28;      // 28% - never changes
  const double feePercentage = 0.20;      // 20% - never changes
  
  print('=== CONSTANTS (Never Change) ===');
  print('App name: $appName');
  print('Minimum stake: ₹$minimumStake');
  print('Charity percentage: ${charityPercentage * 100}%');
  print('Operations percentage: ${opsPercentage * 100}%');
  print('Fee percentage: ${feePercentage * 100}%');
  print('');
  
  // =========================================================================
  // LESSON 6: TYPE INFERENCE (var keyword)
  // =========================================================================
  
  // Dart can GUESS the type based on the value you assign
  // Use 'var' and Dart figures out if it's int, String, etc.
  
  var autoAge = 25;              // Dart knows: this is an int
  var autoName = 'Raj';          // Dart knows: this is a String
  var autoIsActive = true;       // Dart knows: this is a bool
  var autoPrice = 99.99;         // Dart knows: this is a double
  
  // But explicit types are CLEARER for beginners!
  // Recommended: Use int, String, bool, double explicitly when learning
  
  print('=== TYPE INFERENCE (var) ===');
  print('Auto age: $autoAge (type: ${autoAge.runtimeType})');
  print('Auto name: $autoName (type: ${autoName.runtimeType})');
  print('Auto active: $autoIsActive (type: ${autoIsActive.runtimeType})');
  print('Auto price: $autoPrice (type: ${autoPrice.runtimeType})');
  print('');
  
  // =========================================================================
  // LESSON 7: NULL SAFETY (Dart 3.x Feature)
  // =========================================================================
  
  // Dart 3 has "null safety" - variables can't be null unless you allow it
  // null = nothing, empty, no value
  
  // Regular variable (CANNOT be null):
  String userName2 = 'Raj';
  // userName2 = null;  // ❌ ERROR! Can't assign null
  
  // Nullable variable (CAN be null):
  String? optionalPhone;  // The ? means "this might be null"
  optionalPhone = null;   // ✅ OK! Null is allowed
  optionalPhone = '+91 9876543210';  // ✅ Also OK!
  
  print('=== NULL SAFETY ===');
  print('Username: $userName2');
  print('Optional phone: $optionalPhone');
  print('');
  
  // =========================================================================
  // PRACTICAL EXAMPLE: MindShield User Profile
  // =========================================================================
  
  print('=== 📱 MINDSHIELD USER PROFILE ===');
  
  // User information
  String mindshieldUser = 'Raj Roy';
  int userAge = 23;
  String userEmail = 'kingcric28@gmail.com';
  bool isPremium = false;
  
  // Session statistics
  int totalSessionsCompleted = 25;
  int successfulSessions = 18;
  int failedSessions = 7;
  
  // Financial data
  int totalStaked = 12500;
  int totalEarned = 9000;
  int charityContribution = 1820;
  
  // Calculate success rate
  double userSuccessRate = successfulSessions / totalSessionsCompleted;
  
  // Display profile
  print('👤 User: $mindshieldUser ($userAge years old)');
  print('📧 Email: $userEmail');
  print('⭐ Premium: $isPremium');
  print('');
  print('📊 Statistics:');
  print('   Total Sessions: $totalSessionsCompleted');
  print('   Successful: $successfulSessions ✅');
  print('   Failed: $failedSessions ❌');
  print('   Success Rate: ${(userSuccessRate * 100).toStringAsFixed(1)}%');
  print('');
  print('💰 Financial:');
  print('   Total Staked: ₹$totalStaked');
  print('   Total Earned: ₹$totalEarned');
  print('   Net Result: ₹${totalEarned - totalStaked}');
  print('   Charity Impact: ₹$charityContribution 💚');
  print('');
  
  // =========================================================================
  // LESSON 8: UPDATING VARIABLES
  // =========================================================================
  
  // You can CHANGE the value of a variable (but not final/const)
  
  int score = 0;
  print('=== UPDATING VARIABLES ===');
  print('Initial score: $score');
  
  score = 10;  // Update to 10
  print('After update: $score');
  
  score = score + 5;  // Add 5 to current value
  print('After adding 5: $score');
  
  score += 3;  // Shortcut: add 3 (same as score = score + 3)
  print('After += 3: $score');
  
  score++;  // Shortcut: add 1 (same as score = score + 1)
  print('After ++: $score');
  print('');
  
  // =========================================================================
  // 🎯 CHECKPOINT QUESTIONS (Answer mentally)
  // =========================================================================
  
  print('=== 🎯 CHECKPOINT QUIZ ===');
  print('1. What are the 4 basic data types in Dart?');
  print('   Answer: int, double, String, bool');
  print('');
  print('2. What\'s the difference between int and double?');
  print('   Answer: int = whole numbers, double = decimal numbers');
  print('');
  print('3. How do you insert a variable value in a string?');
  print('   Answer: Use \$ before variable name (e.g., "\$name")');
  print('');
  print('4. What does bool mean?');
  print('   Answer: Boolean - true or false value');
  print('');
  print('5. What does final mean?');
  print('   Answer: Variable that can only be set once (constant)');
  print('');
  
  // =========================================================================
  // 🎉 CONGRATULATIONS!
  // =========================================================================
  
  print('=== 🎉 CONGRATULATIONS! ===');
  print('You\'ve completed your first Dart lesson!');
  print('You learned:');
  print('  ✅ How to write and run Dart code');
  print('  ✅ Variables and data types (int, double, String, bool)');
  print('  ✅ How to print output');
  print('  ✅ Constants with final and const');
  print('  ✅ Type inference with var');
  print('  ✅ Null safety basics');
  print('');
  print('Next: Run 02_operators.dart to learn math and comparisons!');
  print('');
}

// ============================================================================
// 📝 PRACTICE EXERCISES
// ============================================================================
// Try these on your own! Create a new file called "practice_01.dart"
//
// Exercise 1: Create Your Profile
// Create variables for:
// - Your name (String)
// - Your age (int)
// - Your height in feet (double)
// - Whether you're a student (bool)
// Print them all!
//
// Exercise 2: Calculate MindShield Stats
// Create variables for:
// - Total sessions: 15
// - Successful sessions: 11
// - Calculate and print success rate as percentage
//
// Exercise 3: Financial Calculator
// Create variables for:
// - Stake amount: 1000
// - Calculate charity amount (52%)
// - Calculate ops amount (28%)
// - Calculate fees (20%)
// - Print all amounts
//
// ============================================================================
