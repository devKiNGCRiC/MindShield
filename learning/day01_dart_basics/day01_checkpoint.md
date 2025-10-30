# 📝 DAY 1 CHECKPOINT QUIZ

> **Purpose**: Test your understanding of Day 1 concepts  
> **Time**: 20-30 minutes  
> **Format**: Multiple choice + coding challenges  
> **Passing Score**: 70% (21/30 points)

---

## 📋 Instructions

1. Answer all questions without looking at the tutorial files
2. For coding questions, try to write the answer first
3. Check your answers at the bottom
4. Review any concepts you got wrong

---

## ✏️ SECTION 1: VARIABLES & DATA TYPES (10 points)

### Question 1.1 (2 points)
What is the correct way to declare a variable that can't be changed after initialization?

A) `var stake = 500;`  
B) `final stake = 500;`  
C) `let stake = 500;`  
D) `const stake = 500;`

**Your Answer:** ___

---

### Question 1.2 (2 points)
Which data type should you use to store a user's email address?

A) `int`  
B) `String`  
C) `bool`  
D) `double`

**Your Answer:** ___

---

### Question 1.3 (2 points)
What is the difference between `final` and `const`?

A) They are the same  
B) `final` is runtime constant, `const` is compile-time constant  
C) `const` can be changed, `final` cannot  
D) `final` is for numbers, `const` is for strings

**Your Answer:** ___

---

### Question 1.4 (2 points)
What will this code print?
```dart
int? value = null;
print(value ?? 100);
```

A) `null`  
B) `100`  
C) `0`  
D) Error

**Your Answer:** ___

---

### Question 1.5 (2 points)
Which is the correct way to declare a list of stake amounts?

A) `List stakes = [200, 500, 1000];`  
B) `var stakes = [200, 500, 1000];`  
C) `List<int> stakes = [200, 500, 1000];`  
D) All of the above

**Your Answer:** ___

---

## 🔢 SECTION 2: OPERATORS (10 points)

### Question 2.1 (2 points)
What is the result of `15 % 4`?

A) `3`  
B) `3.75`  
C) `4`  
D) `0`

**Your Answer:** ___

---

### Question 2.2 (2 points)
What is the result of `10 ~/ 3`?

A) `3.33`  
B) `3`  
C) `4`  
D) `3.0`

**Your Answer:** ___

---

### Question 2.3 (2 points)
What does this expression evaluate to?
```dart
int stake = 500;
bool isValid = (stake >= 200 && stake <= 2000);
```

A) `true`  
B) `false`  
C) `null`  
D) Error

**Your Answer:** ___

---

### Question 2.4 (2 points)
What is the value of `x` after this code?
```dart
int x = 10;
x += 5;
x *= 2;
```

A) `20`  
B) `30`  
C) `25`  
D) `15`

**Your Answer:** ___

---

### Question 2.5 (2 points)
What will be printed?
```dart
int age = 17;
String status = age >= 18 ? 'Adult' : 'Minor';
print(status);
```

A) `Adult`  
B) `Minor`  
C) `17`  
D) Error

**Your Answer:** ___

---

## 🔀 SECTION 3: CONTROL FLOW (10 points)

### Question 3.1 (2 points)
How many times will this loop execute?
```dart
for (int i = 0; i < 5; i++) {
  print(i);
}
```

A) 4 times  
B) 5 times  
C) 6 times  
D) Infinite

**Your Answer:** ___

---

### Question 3.2 (2 points)
What is the difference between `while` and `do-while` loops?

A) No difference  
B) `do-while` executes at least once  
C) `while` is faster  
D) `do-while` doesn't need a condition

**Your Answer:** ___

---

### Question 3.3 (2 points)
What does `break` do in a loop?

A) Skips the current iteration  
B) Exits the loop immediately  
C) Pauses the loop  
D) Restarts the loop

**Your Answer:** ___

---

### Question 3.4 (2 points)
What will this code print?
```dart
int score = 75;
if (score >= 90) {
  print('A');
} else if (score >= 80) {
  print('B');
} else if (score >= 70) {
  print('C');
} else {
  print('F');
}
```

A) `A`  
B) `B`  
C) `C`  
D) `F`

**Your Answer:** ___

---

### Question 3.5 (2 points)
When should you use `switch` instead of `if-else`?

A) Never, they're the same  
B) When comparing one value against multiple specific values  
C) When you need complex conditions  
D) Only for strings

**Your Answer:** ___

---

## 💻 SECTION 4: CODING CHALLENGES (Bonus)

### Challenge 4.1: FizzBuzz (Bonus 5 points)
Write code that prints numbers 1 to 15, but:
- Print "Fizz" if divisible by 3
- Print "Buzz" if divisible by 5
- Print "FizzBuzz" if divisible by both
- Otherwise print the number

**Your Code:**
```dart
// Write your solution here
```

---

### Challenge 4.2: Stake Validator (Bonus 5 points)
Write a function that validates a stake amount:
- Returns `true` if stake is between ₹200 and ₹2000
- Returns `false` otherwise

**Your Code:**
```dart
// Write your solution here
```

---

## 🎯 ANSWER KEY

<details>
<summary><b>Click to reveal answers (Try the quiz first!)</b></summary>

### Section 1: Variables & Data Types
1.1: **B** or **D** (Both are correct! `final` for runtime, `const` for compile-time)  
1.2: **B** (String stores text)  
1.3: **B** (`final` is set at runtime, `const` at compile-time)  
1.4: **B** (The `??` operator returns 100 because value is null)  
1.5: **D** (All are valid ways to declare a list)

### Section 2: Operators
2.1: **A** (15 divided by 4 has remainder 3)  
2.2: **B** (Integer division gives only whole number)  
2.3: **A** (500 is between 200 and 2000, so true)  
2.4: **B** (10+5=15, then 15×2=30)  
2.5: **B** (17 is not >= 18, so 'Minor')

### Section 3: Control Flow
3.1: **B** (i goes from 0 to 4, that's 5 times)  
3.2: **B** (`do-while` always executes code block at least once)  
3.3: **B** (`break` exits the loop completely)  
3.4: **C** (75 >= 70 is the first true condition)  
3.5: **B** (`switch` is cleaner for multiple specific value comparisons)

### Challenge 4.1: FizzBuzz Solution
```dart
for (int i = 1; i <= 15; i++) {
  if (i % 3 == 0 && i % 5 == 0) {
    print('FizzBuzz');
  } else if (i % 3 == 0) {
    print('Fizz');
  } else if (i % 5 == 0) {
    print('Buzz');
  } else {
    print(i);
  }
}
```

### Challenge 4.2: Stake Validator Solution
```dart
bool validateStake(int stake) {
  return stake >= 200 && stake <= 2000;
}

// Usage:
print(validateStake(500));  // true
print(validateStake(100));  // false
```

</details>

---

## 📊 SCORING

Calculate your score:

**Section 1:** ___ / 10 points  
**Section 2:** ___ / 10 points  
**Section 3:** ___ / 10 points  
**Bonus Challenges:** ___ / 10 points  

**Total:** ___ / 30 points (40 with bonus)

### Grade Scale:
- 27-30: 🏆 **Excellent!** You've mastered Day 1!
- 21-26: ✅ **Pass!** Good understanding, review weak areas
- 15-20: ⚠️ **Review Needed** - Go through tutorials again
- < 15: 📚 **Needs Work** - Spend more time on fundamentals

---

## 🎓 What to Review Based on Your Score

### If you struggled with Section 1 (Variables):
- Re-read `01_variables.dart`
- Pay attention to data types and null safety
- Practice declaring different types of variables

### If you struggled with Section 2 (Operators):
- Re-read `02_operators.dart`
- Focus on arithmetic vs logical operators
- Practice operator precedence with parentheses

### If you struggled with Section 3 (Control Flow):
- Re-read `03_control_flow.dart`
- Practice writing loops with different conditions
- Understand when to use `break` vs `continue`

---

## 🚀 NEXT STEPS

### ✅ If you passed (21+ points):
Congratulations! You're ready for Day 2!
- Move to Day 2: Functions and OOP basics
- Keep practicing with the bonus challenges
- Review any questions you got wrong

### ⚠️ If you need review (< 21 points):
Don't worry! Programming takes practice.
- Re-read the tutorial files you struggled with
- Run the example code and experiment with it
- Try the practice exercises again
- Take this quiz again tomorrow

---

## 💡 TIPS FOR SUCCESS

1. **Don't memorize** - Understand the concepts
2. **Practice daily** - Even 30 minutes helps
3. **Experiment** - Change values and see what happens
4. **Debug** - Learn from errors, they're teachers
5. **Ask questions** - No question is too basic

---

## 📝 REFLECTION

Write your thoughts after completing this quiz:

**What was easiest for you?**
```
___________________________________________
```

**What was most challenging?**
```
___________________________________________
```

**What will you focus on tomorrow?**
```
___________________________________________
```

---

## 🎉 DAY 1 COMPLETE!

You've covered:
- ✅ Dart variables and data types
- ✅ All operators (arithmetic, comparison, logical)
- ✅ Control flow (if/else, switch, loops)
- ✅ Real-world MindShield examples
- ✅ Hands-on practice exercises

**Tomorrow's Preview: Day 2 - Functions & OOP**
- Creating reusable functions
- Classes and objects
- Object-oriented programming basics
- Building your first MindShield class!

---

*Keep pushing forward! Every line of code you write makes you a better developer.* 💪🚀
