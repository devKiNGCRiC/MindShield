/*
 * ===========================================
 *  DAY 1 - PRACTICE EXERCISES
 * ===========================================
 * 
 * 🎯 Purpose: Apply what you learned through hands-on coding
 * ⏱️ Time: 45-60 minutes
 * 📝 Format: Challenges with solutions
 * 
 * 💡 How to Use:
 * 1. Read the challenge description
 * 2. Try to solve it yourself first (uncomment TODOs)
 * 3. Check your solution against the provided one
 * 4. Run the file to see output
 * 
 * 🎓 Concepts Covered:
 * - Variables and data types
 * - Operators (arithmetic, comparison, logical)
 * - Control flow (if/else, loops)
 * - Real-world MindShield scenarios
 */

void main() {
  print('═══════════════════════════════════════════════════════');
  print('🎯 DAY 1 PRACTICE EXERCISES');
  print('═══════════════════════════════════════════════════════\n');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 1: STAKE VALIDATOR                          ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐ Easy                                   ║
   * ║  Topics: Variables, Comparison, if/else               ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Create a stake validator that checks if a user's stake is valid.
   * Rules:
   * - Minimum stake: ₹200
   * - Maximum stake: ₹2000
   * - Print appropriate message for each case
   */
  
  print('📝 EXERCISE 1: Stake Validator');
  print('─────────────────────────────────────────────────────');
  
  // Test cases
  List<int> testStakes = [100, 200, 500, 2000, 2500];
  
  for (int stake in testStakes) {
    // YOUR CODE HERE:
    // Check if stake < 200: print "Too low"
    // Check if stake > 2000: print "Too high"
    // Otherwise: print "Valid"
    
    // SOLUTION:
    if (stake < 200) {
      print('₹$stake → ❌ Too low (minimum: ₹200)');
    } else if (stake > 2000) {
      print('₹$stake → ❌ Too high (maximum: ₹2000)');
    } else {
      print('₹$stake → ✅ Valid stake!');
    }
  }
  print('');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 2: CHARITY CALCULATOR                       ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐ Easy                                   ║
   * ║  Topics: Arithmetic operators, Variables              ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Calculate charity amount from failed challenges.
   * - 52% of stake goes to RKC_BHARAT charity
   * - 48% goes to app maintenance
   * - Display both amounts clearly
   */
  
  print('📝 EXERCISE 2: Charity Calculator');
  print('─────────────────────────────────────────────────────');
  
  int failedStake = 1000;
  
  // YOUR CODE HERE:
  // Calculate charity (52% of stake)
  // Calculate maintenance (48% of stake)
  // Print both amounts
  
  // SOLUTION:
  double charityAmount = failedStake * 0.52;
  double maintenanceAmount = failedStake * 0.48;
  
  print('Failed Stake: ₹$failedStake');
  print('  → Charity (52%): ₹${charityAmount.toStringAsFixed(2)}');
  print('  → Maintenance (48%): ₹${maintenanceAmount.toStringAsFixed(2)}');
  print('  → Total: ₹${(charityAmount + maintenanceAmount).toStringAsFixed(2)}');
  print('');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 3: TIME TRACKER                             ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐⭐ Medium                               ║
   * ║  Topics: Loops, Arithmetic, Variables                 ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Track user's phone-free time over a week.
   * - Goal: 120 minutes per day
   * - Calculate daily progress percentage
   * - Count how many days the goal was met
   * - Calculate weekly average
   */
  
  print('📝 EXERCISE 3: Weekly Time Tracker');
  print('─────────────────────────────────────────────────────');
  
  int dailyGoal = 120;
  List<int> dailyMinutes = [100, 130, 90, 120, 150, 110, 140];
  
  // YOUR CODE HERE:
  // Loop through dailyMinutes
  // Calculate percentage for each day
  // Count days where goal was met
  // Calculate total and average
  
  // SOLUTION:
  int totalMinutes = 0;
  int goalMetDays = 0;
  
  for (int day = 0; day < dailyMinutes.length; day++) {
    int minutes = dailyMinutes[day];
    totalMinutes += minutes;
    double percentage = (minutes / dailyGoal) * 100;
    String status = minutes >= dailyGoal ? '✅' : '❌';
    
    if (minutes >= dailyGoal) {
      goalMetDays++;
    }
    
    print('Day ${day + 1}: $minutes min ($status ${percentage.toStringAsFixed(1)}%)');
  }
  
  double weeklyAverage = totalMinutes / dailyMinutes.length;
  print('─────────────────────────────────────────────────────');
  print('Total: $totalMinutes minutes');
  print('Average: ${weeklyAverage.toStringAsFixed(1)} minutes/day');
  print('Goal met: $goalMetDays/${dailyMinutes.length} days');
  print('');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 4: USER ELIGIBILITY CHECKER                 ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐⭐ Medium                               ║
   * ║  Topics: Logical operators, Boolean, if/else          ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Check if user can start a challenge.
   * Requirements (ALL must be true):
   * - Age >= 18
   * - Email verified
   * - Account balance >= desired stake
   * - Not currently in an active challenge
   */
  
  print('📝 EXERCISE 4: User Eligibility Checker');
  print('─────────────────────────────────────────────────────');
  
  // Test Case 1
  int age1 = 22;
  bool emailVerified1 = true;
  int balance1 = 600;
  int desiredStake1 = 500;
  bool hasActiveChallenge1 = false;
  
  // YOUR CODE HERE:
  // Check all conditions with logical operators
  // Print detailed results
  
  // SOLUTION:
  print('Test Case 1:');
  bool isEligible1 = 
      (age1 >= 18) && 
      emailVerified1 && 
      (balance1 >= desiredStake1) && 
      !hasActiveChallenge1;
  
  print('  Age: $age1 ${age1 >= 18 ? '✅' : '❌'}');
  print('  Email: ${emailVerified1 ? '✅ Verified' : '❌ Not verified'}');
  print('  Balance: ₹$balance1 (Need: ₹$desiredStake1) ${balance1 >= desiredStake1 ? '✅' : '❌'}');
  print('  Active Challenge: ${hasActiveChallenge1 ? '❌ Yes' : '✅ No'}');
  print('  → Result: ${isEligible1 ? '✅ ELIGIBLE' : '❌ NOT ELIGIBLE'}');
  print('');
  
  // Test Case 2 (Should fail)
  int age2 = 25;
  bool emailVerified2 = false;  // Will fail here
  int balance2 = 1000;
  int desiredStake2 = 500;
  bool hasActiveChallenge2 = false;
  
  print('Test Case 2:');
  bool isEligible2 = 
      (age2 >= 18) && 
      emailVerified2 && 
      (balance2 >= desiredStake2) && 
      !hasActiveChallenge2;
  
  print('  Age: $age2 ${age2 >= 18 ? '✅' : '❌'}');
  print('  Email: ${emailVerified2 ? '✅ Verified' : '❌ Not verified'}');
  print('  Balance: ₹$balance2 (Need: ₹$desiredStake2) ${balance2 >= desiredStake2 ? '✅' : '❌'}');
  print('  Active Challenge: ${hasActiveChallenge2 ? '❌ Yes' : '✅ No'}');
  print('  → Result: ${isEligible2 ? '✅ ELIGIBLE' : '❌ NOT ELIGIBLE'}');
  print('');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 5: CHALLENGE TYPE SELECTOR                  ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐⭐ Medium                               ║
   * ║  Topics: switch/case, Variables                       ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Create a challenge type selector using switch/case.
   * Types:
   * - 'daily': 1 day, 2x reward
   * - 'weekly': 7 days, 5x reward
   * - 'monthly': 30 days, 15x reward
   * Calculate potential reward for given stake.
   */
  
  print('📝 EXERCISE 5: Challenge Type Selector');
  print('─────────────────────────────────────────────────────');
  
  String selectedType = 'weekly';
  int userStake = 500;
  
  // YOUR CODE HERE:
  // Use switch/case to determine duration and multiplier
  // Calculate potential reward
  
  // SOLUTION:
  int duration = 0;
  int multiplier = 0;
  String description = '';
  
  switch (selectedType) {
    case 'daily':
      duration = 1;
      multiplier = 2;
      description = '24 hours phone-free';
      break;
    
    case 'weekly':
      duration = 7;
      multiplier = 5;
      description = '7 days with limited phone use';
      break;
    
    case 'monthly':
      duration = 30;
      multiplier = 15;
      description = '30 days digital detox';
      break;
    
    default:
      print('❌ Invalid challenge type');
      return;
  }
  
  int potentialReward = userStake * multiplier;
  
  print('Selected: ${selectedType.toUpperCase()} Challenge');
  print('  Duration: $duration day${duration > 1 ? 's' : ''}');
  print('  Description: $description');
  print('  Your stake: ₹$userStake');
  print('  Reward multiplier: ${multiplier}x');
  print('  → Potential reward: ₹$potentialReward');
  print('');

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 6: PENALTY CALCULATOR                       ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐⭐⭐ Hard                                ║
   * ║  Topics: All concepts combined                        ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Calculate penalty for failing a challenge based on completion %.
   * Rules:
   * - 0-25% completion: Lose 100% of stake
   * - 26-50% completion: Lose 75% of stake
   * - 51-75% completion: Lose 50% of stake
   * - 76-99% completion: Lose 25% of stake
   * - 100% completion: Get stake back + reward
   */
  
  print('📝 EXERCISE 6: Penalty Calculator');
  print('─────────────────────────────────────────────────────');
  
  int challengeStake = 1000;
  int targetMinutes = 840;  // Weekly goal (7 days × 120 min)
  List<int> testCompletions = [100, 300, 500, 700, 840];
  
  // YOUR CODE HERE:
  // Calculate completion percentage
  // Determine penalty based on ranges
  // Calculate final amount lost/gained
  
  // SOLUTION:
  for (int completed in testCompletions) {
    double completionPercent = (completed / targetMinutes) * 100;
    double penaltyPercent = 0;
    String message = '';
    
    if (completionPercent >= 100) {
      penaltyPercent = 0;
      message = '🎉 Success! Stake returned + reward';
    } else if (completionPercent >= 76) {
      penaltyPercent = 0.25;
      message = '😐 Close! 25% penalty';
    } else if (completionPercent >= 51) {
      penaltyPercent = 0.50;
      message = '😞 Halfway. 50% penalty';
    } else if (completionPercent >= 26) {
      penaltyPercent = 0.75;
      message = '😢 Poor effort. 75% penalty';
    } else {
      penaltyPercent = 1.00;
      message = '😭 Failed badly. 100% penalty';
    }
    
    double penaltyAmount = challengeStake * penaltyPercent;
    double remainingAmount = challengeStake - penaltyAmount;
    
    print('Completed: $completed/$targetMinutes min (${completionPercent.toStringAsFixed(1)}%)');
    print('  $message');
    print('  Penalty: ₹${penaltyAmount.toStringAsFixed(2)} (${(penaltyPercent * 100).toStringAsFixed(0)}%)');
    print('  You get back: ₹${remainingAmount.toStringAsFixed(2)}');
    print('');
  }

  /*
   * ╔═══════════════════════════════════════════════════════╗
   * ║  EXERCISE 7: LEADERBOARD GENERATOR                    ║
   * ╠═══════════════════════════════════════════════════════╣
   * ║  Difficulty: ⭐⭐⭐ Hard                                ║
   * ║  Topics: Lists, Loops, Comparison                     ║
   * ╚═══════════════════════════════════════════════════════╝
   * 
   * Challenge:
   * Create a leaderboard showing top performers.
   * - Display users with their completion percentages
   * - Award medals for top 3 (🥇🥈🥉)
   * - Mark users who met the goal (100%)
   */
  
  print('📝 EXERCISE 7: Leaderboard Generator');
  print('─────────────────────────────────────────────────────');
  
  List<String> userNames = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
  List<int> userMinutes = [150, 120, 90, 180, 110];
  int leaderboardGoal = 120;
  
  // YOUR CODE HERE:
  // Loop through users
  // Calculate percentage
  // Award medals for top 3
  // Display formatted leaderboard
  
  // SOLUTION:
  print('🏆 WEEKLY LEADERBOARD 🏆');
  print('Goal: $leaderboardGoal minutes\n');
  
  // Create a sorted list with indices
  List<int> sortedIndices = List.generate(userNames.length, (i) => i);
  sortedIndices.sort((a, b) => userMinutes[b].compareTo(userMinutes[a]));
  
  for (int rank = 0; rank < sortedIndices.length; rank++) {
    int idx = sortedIndices[rank];
    String name = userNames[idx];
    int minutes = userMinutes[idx];
    double percentage = (minutes / leaderboardGoal) * 100;
    
    String medal = '';
    if (rank == 0) medal = '🥇';
    else if (rank == 1) medal = '🥈';
    else if (rank == 2) medal = '🥉';
    else medal = '  ';
    
    String goalBadge = minutes >= leaderboardGoal ? '✅' : '❌';
    
    print('$medal ${rank + 1}. $name: $minutes min ($goalBadge ${percentage.toStringAsFixed(1)}%)');
  }
  print('');

  /*
   * ═══════════════════════════════════════════════════════
   * 🎯 BONUS CHALLENGE: COMPLETE STAKE MANAGER
   * ═══════════════════════════════════════════════════════
   * 
   * Combine everything you learned!
   * Create a function that:
   * 1. Validates stake amount
   * 2. Checks user eligibility
   * 3. Calculates potential outcomes (success/failure)
   * 4. Displays complete summary
   * 
   * This is YOUR challenge - no solution provided!
   * Use all concepts from today:
   * - Variables (int, double, bool, String)
   * - Operators (arithmetic, comparison, logical)
   * - Control flow (if/else, switch, loops)
   */
  
  print('═══════════════════════════════════════════════════════');
  print('🏆 BONUS CHALLENGE: Complete Stake Manager');
  print('═══════════════════════════════════════════════════════');
  print('Try creating this yourself! Use all Day 1 concepts.');
  print('Requirements:');
  print('1. Validate stake (₹200-₹2000)');
  print('2. Check age (>=18)');
  print('3. Calculate charity amount (52%)');
  print('4. Show potential reward (2x-15x based on type)');
  print('5. Display formatted summary\n');
  
  print('💪 TIP: Start with variables, then validation, then calculations!');
  print('');

  /*
   * ═══════════════════════════════════════════════════════
   * 📊 YOUR PROGRESS
   * ═══════════════════════════════════════════════════════
   * 
   * ✅ You've practiced:
   * - Variable declaration and initialization
   * - Arithmetic operations with real-world calculations
   * - Comparison and logical operators for validation
   * - if/else for decision making
   * - switch/case for multiple options
   * - for and while loops for repetition
   * - Working with Lists
   * - String formatting and output
   * 
   * 🎓 Next Steps:
   * 1. Review any exercises you found challenging
   * 2. Try modifying the values and running again
   * 3. Attempt the bonus challenge without looking at solutions
   * 4. Take the Day 1 checkpoint quiz (day01_checkpoint.md)
   * 
   * 🚀 Tomorrow: Day 2 - Functions and OOP basics!
   * 
   * ═══════════════════════════════════════════════════════
   */
}
