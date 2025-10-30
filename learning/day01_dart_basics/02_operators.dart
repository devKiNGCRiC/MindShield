/*
 * ===========================================
 *  DAY 1 - DART BASICS: OPERATORS
 * ===========================================
 * 
 * Learning Objective: Understand how to perform operations on data
 * Time Required: 30 minutes
 * 
 * 🎯 What You'll Learn:
 * 1. Arithmetic Operators (math operations)
 * 2. Comparison Operators (comparing values)
 * 3. Logical Operators (AND, OR, NOT)
 * 4. Assignment Operators (storing values)
 * 5. Type Test Operators (checking types)
 * 6. Conditional Expressions (shortcuts)
 * 
 * 💡 Why Important for MindShield:
 * - Calculate stake amounts and penalties
 * - Compare timer values
 * - Validate user inputs
 * - Make decisions in app logic
 */

void main() {
  print('═══════════════════════════════════════════════════════');
  print('🎯 DAY 1: DART OPERATORS - COMPLETE GUIDE');
  print('═══════════════════════════════════════════════════════\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 1: ARITHMETIC OPERATORS                   │
   * │  Used for: Math calculations                       │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Think of arithmetic operators like a calculator.
   *    They help you add, subtract, multiply, and divide numbers.
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Calculate total stakes (₹200 + ₹500 = ₹700)
   *    - Find remaining time (60 - 10 = 50 minutes)
   *    - Calculate charity amount (52% of total)
   * 
   * 🎓 Technical: Arithmetic operators perform mathematical operations
   *    on numeric operands and return a numeric result.
   */
  
  print('📌 ARITHMETIC OPERATORS');
  print('─────────────────────────────────────────────────────');
  
  int stakeAmount = 200;        // User's initial stake
  int additionalStake = 500;    // Additional stake added
  int dailyGoalMinutes = 120;   // 2 hours goal
  int usedMinutes = 45;         // Time already used
  
  // Addition (+)
  int totalStake = stakeAmount + additionalStake;
  print('Addition: ₹$stakeAmount + ₹$additionalStake = ₹$totalStake');
  
  // Subtraction (-)
  int remainingMinutes = dailyGoalMinutes - usedMinutes;
  print('Subtraction: $dailyGoalMinutes - $usedMinutes = $remainingMinutes minutes left');
  
  // Multiplication (*)
  int days = 7;
  int weeklyGoal = dailyGoalMinutes * days;
  print('Multiplication: $dailyGoalMinutes × $days = $weeklyGoal weekly minutes');
  
  // Division (/)
  double charityPercentage = 52 / 100;  // Converts to 0.52
  print('Division: 52 / 100 = $charityPercentage (for percentage)');
  
  // Integer Division (~/)
  int groupsOfTen = 127 ~/ 10;  // Only whole number, no decimals
  print('Integer Division: 127 ~/ 10 = $groupsOfTen (ignores remainder)');
  
  // Modulo (%) - Remainder after division
  int remainder = 127 % 10;  // What's left after dividing by 10
  print('Modulo: 127 % 10 = $remainder (the remainder)');
  
  // Practical Example: Calculate charity amount
  double charityAmount = totalStake * 0.52;  // 52% goes to charity
  print('💰 Charity Calculation: ₹$totalStake × 0.52 = ₹${charityAmount.toStringAsFixed(2)}');
  
  // Increment (++) and Decrement (--)
  int counter = 10;
  counter++;  // Same as: counter = counter + 1
  print('After counter++: $counter');
  counter--;  // Same as: counter = counter - 1
  print('After counter--: $counter\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 2: COMPARISON OPERATORS                   │
   * │  Used for: Comparing values                        │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Comparison operators are like asking questions.
   *    "Is this bigger than that?" "Are these equal?"
   *    They always answer with true or false.
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Check if stake amount is valid (>= ₹200)
   *    - See if time limit exceeded (usedTime > goalTime)
   *    - Validate user age (age >= 18)
   * 
   * 🎓 Technical: Comparison operators compare two values
   *    and return a boolean result (true or false).
   */
  
  print('📌 COMPARISON OPERATORS');
  print('─────────────────────────────────────────────────────');
  
  int minStake = 200;
  int userStake = 500;
  int maxStake = 2000;
  
  // Equal to (==)
  bool isExactMin = (userStake == minStake);
  print('Equal (==): Is ₹$userStake == ₹$minStake? $isExactMin');
  
  // Not equal to (!=)
  bool isDifferent = (userStake != minStake);
  print('Not Equal (!=): Is ₹$userStake != ₹$minStake? $isDifferent');
  
  // Greater than (>)
  bool isAboveMin = (userStake > minStake);
  print('Greater Than (>): Is ₹$userStake > ₹$minStake? $isAboveMin');
  
  // Less than (<)
  bool isBelowMax = (userStake < maxStake);
  print('Less Than (<): Is ₹$userStake < ₹$maxStake? $isBelowMax');
  
  // Greater than or equal to (>=)
  bool isValidMin = (userStake >= minStake);
  print('Greater/Equal (>=): Is ₹$userStake >= ₹$minStake? $isValidMin');
  
  // Less than or equal to (<=)
  bool isValidMax = (userStake <= maxStake);
  print('Less/Equal (<=): Is ₹$userStake <= ₹$maxStake? $isValidMax');
  
  // Practical Validation Example
  bool isStakeValid = (userStake >= minStake && userStake <= maxStake);
  print('✅ Is stake valid (₹200-₹2000)? $isStakeValid\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 3: LOGICAL OPERATORS                      │
   * │  Used for: Combining conditions                    │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Logical operators combine multiple yes/no questions.
   *    "Is this true AND that true?" "Is this true OR that true?"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Check multiple conditions: "Is stake valid AND user verified?"
   *    - Check either condition: "Is it weekend OR holiday?"
   *    - Reverse a condition: "Is NOT premium user?"
   * 
   * 🎓 Technical: Logical operators perform boolean logic operations
   *    on boolean expressions, returning a boolean result.
   */
  
  print('📌 LOGICAL OPERATORS');
  print('─────────────────────────────────────────────────────');
  
  bool isEmailVerified = true;
  bool isPhoneVerified = true;
  bool isPremiumUser = false;
  int userAge = 25;
  int accountBalance = 1500;
  
  // AND (&&) - Both conditions must be true
  bool canStartChallenge = isEmailVerified && (accountBalance >= 200);
  print('AND (&&): Email verified AND balance ≥ ₹200? $canStartChallenge');
  print('  → isEmailVerified: $isEmailVerified');
  print('  → accountBalance >= 200: ${accountBalance >= 200}');
  
  // OR (||) - At least one condition must be true
  // Note: Even if first is true, we show the example
  bool hasVerification = isEmailVerified || isPhoneVerified;
  print('OR (||): Email OR Phone verified? $hasVerification');
  print('  → isEmailVerified: $isEmailVerified');
  print('  → isPhoneVerified: $isPhoneVerified');
  // Ignore: dead_code - This is for educational demonstration
  
  // NOT (!) - Reverses the boolean value
  bool needsUpgrade = !isPremiumUser;
  print('NOT (!): NOT premium user? $needsUpgrade');
  print('  → isPremiumUser: $isPremiumUser');
  print('  → !isPremiumUser: $needsUpgrade');
  
  // Complex Example: Full validation
  bool canStartPremiumChallenge = 
      isEmailVerified &&           // Must have verified email
      (userAge >= 18) &&           // Must be adult
      (accountBalance >= 500) &&   // Must have enough balance
      !isPremiumUser;              // Must NOT be premium (upgrade check)
  
  print('\n💡 Complex Check: Can start premium challenge?');
  print('   Result: $canStartPremiumChallenge');
  print('   Conditions:');
  print('   - Email verified? $isEmailVerified ✓');
  print('   - Age ≥ 18? ${userAge >= 18} ✓');
  print('   - Balance ≥ ₹500? ${accountBalance >= 500} ✓');
  print('   - Not premium? $needsUpgrade ✓\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 4: ASSIGNMENT OPERATORS                   │
   * │  Used for: Storing and updating values             │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Assignment operators put values into variables.
   *    Some also do math while storing the value.
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Store initial stake: stake = 500
   *    - Add to total: totalStake += 200
   *    - Reduce time: remainingMinutes -= 10
   * 
   * 🎓 Technical: Assignment operators assign values to variables,
   *    optionally performing an operation before assignment.
   */
  
  print('📌 ASSIGNMENT OPERATORS');
  print('─────────────────────────────────────────────────────');
  
  // Basic Assignment (=)
  int userBalance = 1000;
  print('Basic (=): userBalance = $userBalance');
  
  // Add and Assign (+=)
  userBalance += 500;  // Same as: userBalance = userBalance + 500
  print('Add & Assign (+=): userBalance += 500 → $userBalance');
  
  // Subtract and Assign (-=)
  userBalance -= 200;  // Same as: userBalance = userBalance - 200
  print('Subtract & Assign (-=): userBalance -= 200 → $userBalance');
  
  // Multiply and Assign (*=)
  int points = 10;
  points *= 3;  // Same as: points = points * 3
  print('Multiply & Assign (*=): points *= 3 → $points');
  
  // Divide and Assign (/=)
  double price = 100.0;
  price /= 2;  // Same as: price = price / 2
  print('Divide & Assign (/=): price /= 2 → $price');
  
  // Integer Divide and Assign (~/=)
  int total = 127;
  total ~/= 10;  // Same as: total = total ~/ 10
  print('Int Divide & Assign (~/=): total ~/= 10 → $total');
  
  // Modulo and Assign (%=)
  int number = 17;
  number %= 5;  // Same as: number = number % 5
  print('Modulo & Assign (%=): number %= 5 → $number\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 5: TYPE TEST OPERATORS                    │
   * │  Used for: Checking variable types                 │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Type test operators check "what kind of thing is this?"
   *    Like asking "Is this a number?" or "Is this text?"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Validate input types before processing
   *    - Debug type-related issues
   *    - Handle different data types safely
   * 
   * 🎓 Technical: Type test operators check if an object is of
   *    a specific type or can be treated as that type.
   */
  
  print('📌 TYPE TEST OPERATORS');
  print('─────────────────────────────────────────────────────');
  
  dynamic value = 42;  // Can hold any type
  
  // is - Checks if value IS of a specific type
  print('is operator:');
  print('  value is int? ${value is int}');      // true
  print('  value is String? ${value is String}'); // false
  print('  value is double? ${value is double}'); // false
  
  // is! - Checks if value is NOT of a specific type
  print('is! operator:');
  print('  value is! String? ${value is! String}'); // true (NOT a String)
  print('  value is! int? ${value is! int}\n');     // false (IS an int)
  
  // Practical Example: Safe Type Handling
  dynamic userInput = "500";  // User entered text
  
  if (userInput is String) {
    print('✓ Input is String, converting to number...');
    int? converted = int.tryParse(userInput);
    if (converted != null) {
      print('  Successfully converted: $converted');
    }
  }
  
  if (userInput is! int) {
    print('⚠ Input is NOT an integer directly\n');
  }

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 6: CONDITIONAL EXPRESSIONS                │
   * │  Used for: Short if-else statements                │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Conditional expressions are shortcuts for simple decisions.
   *    Instead of writing full if-else, you write it in one line.
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Show messages: "Goal met" or "Keep going"
   *    - Set default values: Use 200 if stake is null
   *    - Quick status checks: "Active" or "Inactive"
   * 
   * 🎓 Technical: Conditional expressions provide concise syntax
   *    for conditional evaluation and default value assignment.
   */
  
  print('📌 CONDITIONAL EXPRESSIONS');
  print('─────────────────────────────────────────────────────');
  
  // Ternary Operator (condition ? ifTrue : ifFalse)
  int goalMinutes = 60;
  int completedMinutes = 45;
  
  String status = (completedMinutes >= goalMinutes) ? 'Goal Met! 🎉' : 'Keep Going! 💪';
  print('Ternary (?:): $status');
  print('  Condition: $completedMinutes >= $goalMinutes? ${completedMinutes >= goalMinutes}');
  
  // More Examples
  int score = 85;
  String grade = (score >= 90) ? 'A' : (score >= 80) ? 'B' : 'C';
  print('  Grade: $grade (score: $score)');
  
  // Ignore: dead_code - Educational example
  bool isPremium = false;
  String userType = isPremium ? 'Premium User' : 'Free User';
  print('  User Type: $userType');
  
  // Null-aware Operator (??) - Provides default if null
  int? maybeStake = null;  // User didn't enter stake
  int actualStake = maybeStake ?? 200;  // Use 200 if null
  print('\nNull-aware (??): $actualStake');
  print('  maybeStake: $maybeStake');
  print('  Fallback: 200');
  print('  Result: Uses 200 because maybeStake is null');
  
  // With non-null value
  // Ignore: dead_code - Educational comparison
  int? definedStake = 500;
  int finalStake = definedStake ?? 200;  // Ignore: dead_null_aware_expression
  print('  definedStake: $definedStake');
  print('  Result: $finalStake (uses defined value)\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 7: OPERATOR PRECEDENCE                    │
   * │  Understanding which operations happen first       │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: Just like in math class, some operations happen before others.
   *    Multiplication before addition: 2 + 3 × 4 = 14 (not 20!)
   * 
   * 📚 Practical: Understanding precedence prevents calculation errors
   *    in stake amounts, time calculations, and percentage calculations.
   * 
   * 🎓 Technical: Operator precedence determines the order of evaluation
   *    when multiple operators appear in an expression.
   */
  
  print('📌 OPERATOR PRECEDENCE');
  print('─────────────────────────────────────────────────────');
  
  // Without parentheses - follows precedence rules
  int result1 = 10 + 5 * 2;  // Multiplication first: 10 + 10 = 20
  print('Without parentheses: 10 + 5 * 2 = $result1');
  print('  Step 1: 5 * 2 = 10');
  print('  Step 2: 10 + 10 = 20');
  
  // With parentheses - force order
  int result2 = (10 + 5) * 2;  // Addition first: 15 * 2 = 30
  print('With parentheses: (10 + 5) * 2 = $result2');
  print('  Step 1: 10 + 5 = 15');
  print('  Step 2: 15 * 2 = 30');
  
  // MindShield Example: Calculate final penalty
  int baseStake = 500;
  double failurePenalty = 0.8;  // Lose 80%
  int bonusSaved = 50;
  
  // Wrong way (without parentheses)
  double wrong = baseStake * failurePenalty + bonusSaved;
  print('\n❌ Wrong: baseStake * failurePenalty + bonusSaved = $wrong');
  print('   (Calculated 500 * 0.8 + 50 = 400 + 50 = 450)');
  
  // Right way (with parentheses)
  double correct = (baseStake - bonusSaved) * failurePenalty;
  print('✓ Correct: (baseStake - bonusSaved) * failurePenalty = $correct');
  print('   (Calculated (500 - 50) * 0.8 = 450 * 0.8 = 360)\n');
  
  print('💡 Precedence Order (high to low):');
  print('   1. Parentheses ()');
  print('   2. Multiplication *, Division /, Modulo %');
  print('   3. Addition +, Subtraction -');
  print('   4. Comparison <, >, <=, >=');
  print('   5. Equality ==, !=');
  print('   6. Logical AND &&');
  print('   7. Logical OR ||');
  print('   8. Conditional ?:');
  print('   9. Assignment =, +=, -=, etc.\n');

  /*
   * ═══════════════════════════════════════════════════════
   * 📝 PRACTICE EXERCISES
   * ═══════════════════════════════════════════════════════
   */
  
  print('═══════════════════════════════════════════════════════');
  print('📝 PRACTICE EXERCISES - Try These!');
  print('═══════════════════════════════════════════════════════\n');
  
  print('Exercise 1: Calculate total donation');
  print('─────────────────────────────────────────────────────');
  int totalCollected = 5000;
  double charityPercent = 0.52;  // 52%
  // TODO: Calculate how much goes to charity
  double donation = totalCollected * charityPercent;
  print('Total: ₹$totalCollected, Charity (52%): ₹${donation.toStringAsFixed(2)}\n');
  
  print('Exercise 2: Check if user can start challenge');
  print('─────────────────────────────────────────────────────');
  int age = 22;
  bool verified = true;
  int balance = 300;
  // TODO: Check all conditions: age >= 18 AND verified AND balance >= 200
  bool canStart = (age >= 18) && verified && (balance >= 200);
  print('Can start? $canStart');
  print('  Age ≥ 18: ${age >= 18}');
  print('  Verified: $verified');
  print('  Balance ≥ ₹200: ${balance >= 200}\n');
  
  print('Exercise 3: Set default stake amount');
  print('─────────────────────────────────────────────────────');
  int? userChoice = null;  // User didn't choose
  // TODO: Use 500 as default if userChoice is null
  int stake = userChoice ?? 500;
  print('User chose: $userChoice');
  print('Actual stake: ₹$stake (used default)\n');
  
  print('Exercise 4: Calculate remaining time');
  print('─────────────────────────────────────────────────────');
  int targetMinutes = 120;
  int spentMinutes = 75;
  // TODO: Calculate remaining minutes and check if goal met
  int remaining = targetMinutes - spentMinutes;
  bool goalAchieved = spentMinutes >= targetMinutes;
  print('Target: $targetMinutes minutes');
  print('Spent: $spentMinutes minutes');
  print('Remaining: $remaining minutes');
  print('Goal achieved: $goalAchieved\n');
  
  /*
   * ═══════════════════════════════════════════════════════
   * 🎯 KEY TAKEAWAYS
   * ═══════════════════════════════════════════════════════
   * 
   * 1. ARITHMETIC (+, -, *, /, ~/, %)
   *    → Use for calculations: stakes, time, percentages
   * 
   * 2. COMPARISON (==, !=, <, >, <=, >=)
   *    → Use for validation: check ranges, compare values
   * 
   * 3. LOGICAL (&&, ||, !)
   *    → Use for conditions: combine multiple checks
   * 
   * 4. ASSIGNMENT (=, +=, -=, *=, /=)
   *    → Use for storage: save and update values
   * 
   * 5. TYPE TEST (is, is!)
   *    → Use for safety: verify data types
   * 
   * 6. CONDITIONAL (?:, ??)
   *    → Use for defaults: quick if-else, null handling
   * 
   * 7. PRECEDENCE
   *    → Use parentheses () to control order!
   * 
   * ═══════════════════════════════════════════════════════
   * 🚀 NEXT STEPS
   * ═══════════════════════════════════════════════════════
   * 
   * ✓ You've learned: How to perform operations on data
   * → Next file: 03_control_flow.dart (if/else, loops)
   * → Practice: Modify the exercise values and run again!
   * 
   * 💪 Challenge: Try creating your own stake calculator
   *    using arithmetic and comparison operators!
   * 
   * ═══════════════════════════════════════════════════════
   */
}
