/*
 * ===========================================
 *  DAY 1 - DART BASICS: CONTROL FLOW
 * ===========================================
 * 
 * Learning Objective: Control program flow with decisions and loops
 * Time Required: 45 minutes
 * 
 * 🎯 What You'll Learn:
 * 1. if/else Statements (making decisions)
 * 2. switch/case Statements (multiple choices)
 * 3. for Loops (repeat with counter)
 * 4. while Loops (repeat with condition)
 * 5. do-while Loops (execute at least once)
 * 6. break and continue (loop control)
 * 
 * 💡 Why Important for MindShield:
 * - Validate user inputs (if/else)
 * - Handle different challenge types (switch)
 * - Process multiple stakes (loops)
 * - Calculate time tracking (iteration)
 */

void main() {
  print('═══════════════════════════════════════════════════════');
  print('🎯 DAY 1: CONTROL FLOW - COMPLETE GUIDE');
  print('═══════════════════════════════════════════════════════\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 1: IF/ELSE STATEMENTS                     │
   * │  Used for: Making decisions                        │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: if/else is like asking a question and taking different
   *    paths based on the answer. "If it's raining, take umbrella.
   *    Else, wear sunglasses."
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Validate stake amounts: if (stake >= 200)
   *    - Check user status: if (isVerified)
   *    - Handle success/failure: if (goalMet)
   * 
   * 🎓 Technical: if/else provides conditional execution of code blocks
   *    based on boolean expressions. Executes one branch based on condition.
   */
  
  print('📌 IF/ELSE STATEMENTS');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: Simple if
  print('Example 1: Simple if');
  int stake = 500;
  if (stake >= 200) {  // Condition is true
    print('✓ Stake is valid! You can start the challenge.');
  }
  print('');
  
  // Example 2: if-else
  print('Example 2: if-else');
  int userAge = 16;
  if (userAge >= 18) {  // Condition is false
    print('✓ You are eligible to use MindShield.');
  } else {
    print('✗ You must be 18 or older.');
  }
  print('');
  
  // Example 3: if-else if-else
  print('Example 3: if-else if-else (Multiple conditions)');
  int completedMinutes = 45;
  int goalMinutes = 60;
  
  if (completedMinutes >= goalMinutes) {
    print('🎉 Goal achieved! You earned your stake back.');
  } else if (completedMinutes >= goalMinutes * 0.75) {
    print('💪 Almost there! 75% completed.');
  } else if (completedMinutes >= goalMinutes * 0.50) {
    print('⚡ Halfway done! Keep going.');
  } else {
    print('🔥 Just getting started. Push harder!');
  }
  print('Progress: $completedMinutes/$goalMinutes minutes\n');
  
  // Example 4: Nested if (if inside if)
  print('Example 4: Nested if');
  bool isVerified = true;
  int accountBalance = 600;
  int challengeStake = 500;
  
  if (isVerified) {
    print('✓ Account is verified.');
    if (accountBalance >= challengeStake) {
      print('✓ Sufficient balance.');
      print('🎯 Challenge can start!');
    } else {
      print('✗ Insufficient balance. Need ₹$challengeStake');
    }
  } else {
    print('✗ Please verify your account first.');
  }
  print('');
  
  // Example 5: Practical stake validation
  print('Example 5: Complete stake validation');
  int userStake = 350;
  int minStake = 200;
  int maxStake = 2000;
  
  if (userStake < minStake) {
    print('✗ Stake too low! Minimum: ₹$minStake');
  } else if (userStake > maxStake) {
    print('✗ Stake too high! Maximum: ₹$maxStake');
  } else {
    print('✓ Stake ₹$userStake is valid!');
    double charityAmount = userStake * 0.52;
    print('  If you fail, ₹${charityAmount.toStringAsFixed(2)} goes to charity.');
  }
  print('');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 2: SWITCH/CASE STATEMENTS                 │
   * │  Used for: Multiple specific choices               │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: switch/case is like a menu. You pick one option
   *    from many. Like choosing "1 for English, 2 for Hindi, 3 for Tamil"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Handle challenge types: Daily, Weekly, Custom
   *    - Process payment methods: UPI, Card, Wallet
   *    - Set difficulty levels: Easy, Medium, Hard
   * 
   * 🎓 Technical: switch evaluates an expression once and compares
   *    it against multiple case values, executing matching code block.
   */
  
  print('📌 SWITCH/CASE STATEMENTS');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: Basic switch
  print('Example 1: Challenge type selection');
  String challengeType = 'weekly';
  
  switch (challengeType) {
    case 'daily':
      print('📅 Daily Challenge: 24 hours phone-free');
      print('   Reward: 2x your stake');
      break;  // Exit switch after this case
    
    case 'weekly':
      print('📆 Weekly Challenge: 7 days phone-free');
      print('   Reward: 5x your stake');
      break;
    
    case 'monthly':
      print('🗓️ Monthly Challenge: 30 days phone-free');
      print('   Reward: 15x your stake');
      break;
    
    default:  // If no case matches
      print('⚠️ Invalid challenge type');
  }
  print('');
  
  // Example 2: Payment method
  print('Example 2: Payment method processing');
  String paymentMethod = 'upi';
  
  switch (paymentMethod) {
    case 'upi':
      print('💳 Processing UPI payment...');
      print('   Scan QR or enter UPI ID');
      break;
    
    case 'card':
      print('💳 Processing card payment...');
      print('   Enter card details');
      break;
    
    case 'wallet':
      print('💳 Processing wallet payment...');
      print('   Deducting from wallet balance');
      break;
    
    default:
      print('❌ Payment method not supported');
  }
  print('');
  
  // Example 3: Difficulty level with grouped cases
  print('Example 3: Difficulty level');
  int difficulty = 2;
  
  switch (difficulty) {
    case 1:
    case 2:  // Both case 1 and 2 execute same code
      print('🟢 Easy Mode: 2 hours phone-free daily');
      print('   Stake range: ₹200-₹500');
      break;
    
    case 3:
    case 4:
      print('🟡 Medium Mode: 4 hours phone-free daily');
      print('   Stake range: ₹500-₹1000');
      break;
    
    case 5:
      print('🔴 Hard Mode: 8 hours phone-free daily');
      print('   Stake range: ₹1000-₹2000');
      break;
    
    default:
      print('❌ Invalid difficulty level');
  }
  print('');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 3: FOR LOOPS                              │
   * │  Used for: Repeating with a counter                │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: for loop is like counting. "Do this 10 times" or
   *    "Count from 1 to 100 and do something each time"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Process list of stakes: for each stake in list
   *    - Generate daily reports: for each day in week
   *    - Calculate totals: sum all donations
   * 
   * 🎓 Technical: for loop iterates a specific number of times
   *    with initialization, condition, and increment in one line.
   */
  
  print('📌 FOR LOOPS');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: Basic counting
  print('Example 1: Count from 1 to 5');
  for (int i = 1; i <= 5; i++) {  // i++: increment by 1 each time
    print('  Count: $i');
  }
  print('');
  
  // Example 2: Calculate weekly total
  print('Example 2: Weekly goal progress');
  int dailyGoal = 120;  // 2 hours daily
  int totalMinutes = 0;
  
  for (int day = 1; day <= 7; day++) {
    totalMinutes += dailyGoal;  // Add daily goal to total
    print('  Day $day: $totalMinutes minutes total');
  }
  print('✓ Week completed! Total: $totalMinutes minutes\n');
  
  // Example 3: Process multiple stakes
  print('Example 3: Calculate total charity from multiple users');
  List<int> userStakes = [200, 500, 1000, 750, 300];  // List of stakes
  double totalCharity = 0;
  
  for (int i = 0; i < userStakes.length; i++) {
    double charity = userStakes[i] * 0.52;
    totalCharity += charity;
    print('  User ${i + 1}: ₹${userStakes[i]} → Charity: ₹${charity.toStringAsFixed(2)}');
  }
  print('💰 Total charity collected: ₹${totalCharity.toStringAsFixed(2)}\n');
  
  // Example 4: For-in loop (simpler iteration)
  print('Example 4: For-in loop (easier way)');
  List<String> challenges = ['Daily', 'Weekly', 'Monthly'];
  
  for (String challenge in challenges) {  // For each challenge in list
    print('  Available: $challenge Challenge');
  }
  print('');
  
  // Example 5: Countdown (decrement)
  print('Example 5: Challenge countdown');
  for (int seconds = 5; seconds > 0; seconds--) {
    print('  Starting in $seconds...');
  }
  print('  🚀 Challenge Started!\n');

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 4: WHILE LOOPS                            │
   * │  Used for: Repeating while condition is true       │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: while loop is like saying "Keep doing this until..."
   *    "Keep running until you reach home" or "Keep eating until full"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Wait for user input: while (not confirmed)
   *    - Process until goal: while (minutes < target)
   *    - Monitor conditions: while (challenge active)
   * 
   * 🎓 Technical: while loop executes code repeatedly as long as
   *    the condition remains true. Checks condition before each iteration.
   */
  
  print('📌 WHILE LOOPS');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: Basic while
  print('Example 1: Count to goal');
  int count = 1;
  while (count <= 5) {  // Continue while condition is true
    print('  Progress: $count/5');
    count++;  // Must update or loop runs forever!
  }
  print('  ✓ Goal reached!\n');
  
  // Example 2: Accumulate until target
  print('Example 2: Reach stake target');
  int currentStake = 0;
  int targetStake = 1000;
  int contribution = 200;
  int deposits = 0;
  
  while (currentStake < targetStake) {
    currentStake += contribution;
    deposits++;
    print('  Deposit $deposits: ₹$currentStake');
  }
  print('  ✓ Target reached in $deposits deposits!\n');
  
  // Example 3: Validation loop
  print('Example 3: Validate input');
  int? input = 50;  // Simulating user input
  int attempts = 0;
  
  while (input != null && input < 200 && attempts < 3) {
    attempts++;
    print('  Attempt $attempts: ₹$input is too low (min: ₹200)');
    input = input + 100;  // Simulate user trying again
  }
  
  if (input != null && input >= 200) {
    print('  ✓ Valid stake: ₹$input\n');
  } else {
    print('  ✗ Max attempts reached\n');
  }

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 5: DO-WHILE LOOPS                         │
   * │  Used for: Execute at least once                   │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: do-while is like "Do this first, then check if you
   *    need to do it again." You always do it at least once.
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Show menu at least once: do { show menu } while (not done)
   *    - Get user input: do { ask } while (invalid)
   *    - Retry operations: do { try } while (failed)
   * 
   * 🎓 Technical: do-while executes code block once, then repeats
   *    while condition is true. Guarantees at least one execution.
   */
  
  print('📌 DO-WHILE LOOPS');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: Menu that shows at least once
  print('Example 1: Menu display');
  int choice = 0;
  int menuShown = 0;
  
  do {
    menuShown++;
    print('  ═════════════════');
    print('  🎯 MINDSHIELD MENU');
    print('  ═════════════════');
    print('  1. Start Challenge');
    print('  2. View Stats');
    print('  3. Exit');
    print('  ─────────────────');
    
    // Simulate user choice
    if (menuShown == 1) choice = 2;  // First time: View Stats
    else if (menuShown == 2) choice = 3;  // Second time: Exit
    
    print('  You chose: $choice');
    
    if (choice == 2) print('  📊 Showing statistics...\n');
    
  } while (choice != 3);  // Keep showing until user chooses exit
  
  print('  👋 Thank you for using MindShield!\n');
  
  // Example 2: Retry until success
  print('Example 2: Retry payment processing');
  bool paymentSuccess = false;
  int retries = 0;
  
  do {
    retries++;
    print('  Attempt $retries: Processing payment...');
    
    // Simulate payment (fails first 2 times, succeeds 3rd)
    if (retries >= 3) {
      paymentSuccess = true;
      print('  ✓ Payment successful!\n');
    } else {
      print('  ✗ Payment failed, retrying...\n');
    }
    
  } while (!paymentSuccess && retries < 5);  // Retry up to 5 times
  
  if (!paymentSuccess) {
    print('  ❌ Payment failed after $retries attempts\n');
  }

  /*
   * ┌────────────────────────────────────────────────────┐
   * │  SECTION 6: BREAK AND CONTINUE                     │
   * │  Used for: Loop control                            │
   * └────────────────────────────────────────────────────┘
   * 
   * 🔰 ELI5: break is like "Stop! Exit the loop right now"
   *    continue is like "Skip this one, go to the next"
   * 
   * 📚 Practical: In MindShield, you'll use these to:
   *    - Exit early: break (when goal met)
   *    - Skip invalid: continue (skip corrupted data)
   *    - Optimize: Don't waste time on unnecessary iterations
   * 
   * 🎓 Technical: break terminates loop immediately. continue
   *    skips current iteration and proceeds to next iteration.
   */
  
  print('📌 BREAK AND CONTINUE');
  print('─────────────────────────────────────────────────────\n');
  
  // Example 1: break - Exit loop early
  print('Example 1: break (Exit when found)');
  List<int> stakes = [100, 150, 250, 500, 1000];
  int searchFor = 250;
  bool found = false;
  
  for (int i = 0; i < stakes.length; i++) {
    print('  Checking stake: ₹${stakes[i]}');
    
    if (stakes[i] == searchFor) {
      print('  ✓ Found ₹$searchFor at position ${i + 1}!');
      found = true;
      break;  // Exit loop immediately, don't check remaining
    }
  }
  print('  Search complete${!found ? ', not found' : ''}\n');
  
  // Example 2: continue - Skip to next iteration
  print('Example 2: continue (Skip invalid)');
  List<int> allStakes = [50, 200, 150, 500, 100, 1000];
  int validCount = 0;
  double totalValid = 0;
  
  for (int stake in allStakes) {
    if (stake < 200) {
      print('  ⚠️ Skipping ₹$stake (below minimum)');
      continue;  // Skip this, go to next iteration
    }
    
    // This code only runs for valid stakes
    validCount++;
    totalValid += stake;
    print('  ✓ Valid stake: ₹$stake');
  }
  print('  Total valid: $validCount stakes = ₹${totalValid.toStringAsFixed(2)}\n');
  
  // Example 3: Nested loops with labeled break
  print('Example 3: Labeled break (exit outer loop)');
  
  outerLoop:  // Label for outer loop
  for (int week = 1; week <= 3; week++) {
    print('  Week $week:');
    
    for (int day = 1; day <= 7; day++) {
      print('    Day $day');
      
      if (week == 2 && day == 3) {
        print('    ⚠️ Critical error! Stopping all processing.');
        break outerLoop;  // Break out of outer loop
      }
    }
  }
  print('  Processing stopped\n');

  /*
   * ═══════════════════════════════════════════════════════
   * 📝 PRACTICE EXERCISES
   * ═══════════════════════════════════════════════════════
   */
  
  print('═══════════════════════════════════════════════════════');
  print('📝 PRACTICE EXERCISES - Try These!');
  print('═══════════════════════════════════════════════════════\n');
  
  print('Exercise 1: Validate and categorize stake');
  print('─────────────────────────────────────────────────────');
  int testStake = 750;
  
  if (testStake < 200) {
    print('Category: Invalid (too low)');
  } else if (testStake <= 500) {
    print('Category: Beginner (₹200-₹500)');
  } else if (testStake <= 1000) {
    print('Category: Intermediate (₹501-₹1000)');
  } else if (testStake <= 2000) {
    print('Category: Advanced (₹1001-₹2000)');
  } else {
    print('Category: Invalid (too high)');
  }
  print('');
  
  print('Exercise 2: Calculate compound interest (loop)');
  print('─────────────────────────────────────────────────────');
  double principal = 1000;  // Initial stake
  double rate = 0.10;  // 10% interest per period
  int periods = 5;
  
  for (int i = 1; i <= periods; i++) {
    principal = principal + (principal * rate);
    print('Period $i: ₹${principal.toStringAsFixed(2)}');
  }
  print('');
  
  print('Exercise 3: Find first valid stake (break)');
  print('─────────────────────────────────────────────────────');
  List<int> testStakes = [50, 100, 250, 500];
  int? firstValid;
  
  for (int stake in testStakes) {
    if (stake >= 200) {
      firstValid = stake;
      print('Found first valid stake: ₹$firstValid');
      break;
    }
  }
  print('');
  
  print('Exercise 4: Count down timer (while)');
  print('─────────────────────────────────────────────────────');
  int timeLeft = 10;
  
  while (timeLeft > 0) {
    if (timeLeft <= 3) {
      print('⏰ $timeLeft seconds (HURRY!)');
    } else {
      print('⏱️ $timeLeft seconds');
    }
    timeLeft--;
  }
  print('⏰ Time\'s up!\n');
  
  /*
   * ═══════════════════════════════════════════════════════
   * 🎯 KEY TAKEAWAYS
   * ═══════════════════════════════════════════════════════
   * 
   * 1. IF/ELSE
   *    → Use for: Simple yes/no decisions
   *    → Example: if (valid) { proceed } else { error }
   * 
   * 2. SWITCH/CASE
   *    → Use for: Multiple specific choices
   *    → Example: switch (type) { case 'daily': ... }
   * 
   * 3. FOR LOOP
   *    → Use for: Known number of iterations
   *    → Example: for (int i = 0; i < 10; i++) { ... }
   * 
   * 4. FOR-IN LOOP
   *    → Use for: Iterating through collections
   *    → Example: for (var item in list) { ... }
   * 
   * 5. WHILE LOOP
   *    → Use for: Repeat while condition true
   *    → Example: while (count < 100) { ... }
   * 
   * 6. DO-WHILE LOOP
   *    → Use for: Execute at least once
   *    → Example: do { ... } while (condition);
   * 
   * 7. BREAK
   *    → Use for: Exit loop immediately
   *    → Example: if (found) break;
   * 
   * 8. CONTINUE
   *    → Use for: Skip current iteration
   *    → Example: if (invalid) continue;
   * 
   * ═══════════════════════════════════════════════════════
   * 🚀 NEXT STEPS
   * ═══════════════════════════════════════════════════════
   * 
   * ✓ You've completed: All Day 1 Dart basics!
   * → Next: 04_practice_exercises.dart (hands-on coding)
   * → Then: day01_checkpoint.md (quiz yourself)
   * 
   * 💪 Challenge: Create a stake validator that:
   *    - Checks if stake is in range (₹200-₹2000)
   *    - Categorizes as Beginner/Intermediate/Advanced
   *    - Calculates charity amount (52%)
   *    - Uses if/else and arithmetic operators!
   * 
   * 🎉 Congratulations! You've mastered Dart fundamentals!
   * 
   * ═══════════════════════════════════════════════════════
   */
}
