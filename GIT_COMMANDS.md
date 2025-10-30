# 🚀 Git Commands Cheat Sheet
## Quick Reference for MindShield Development

> **Use these commands daily to save your work to GitHub**

---

## 📊 Check Status

```bash
# See what files have changed
git status

# See what's different from last commit
git diff

# See commit history
git log --oneline
```

---

## 💾 Save Your Work (Daily Workflow)

### **Step 1: Stage Your Changes**

```bash
# Add all changed files
git add .

# Or add specific files only
git add filename.dart
git add lib/main.dart
```

### **Step 2: Commit with Message**

```bash
# Commit with descriptive message
git commit -m "Day 1: Completed Dart basics exercises"

# Examples of good commit messages:
git commit -m "Day 3: Created welcome screen UI"
git commit -m "Day 8: Implemented Firebase authentication"
git commit -m "Day 15: Added stake creation form"
git commit -m "Fix: Resolved timer bug in session screen"
```

### **Step 3: Push to GitHub**

```bash
# Push to GitHub (first time or after new branch)
git push -u origin main

# Push to GitHub (subsequent times)
git push
```

---

## 📅 Daily Commit Template

**Every day after coding, run these 3 commands:**

```bash
# 1. Stage all changes
git add .

# 2. Commit with day number and what you did
git commit -m "Day X: [What you accomplished]"

# 3. Push to GitHub
git push
```

**Example daily flow:**

```bash
git add .
git commit -m "Day 1: Learned Dart variables, operators, control flow"
git push
```

---

## 🌿 Branch Management (Advanced - Later)

```bash
# Create new branch for feature
git branch feature-name
git checkout feature-name

# Or create and switch in one command
git checkout -b feature-name

# Push new branch to GitHub
git push -u origin feature-name

# Switch back to main
git checkout main

# Merge feature into main
git merge feature-name
```

---

## ⏮️ Undo Changes (Safety Commands)

### **Before Committing:**

```bash
# Undo changes to a specific file
git checkout -- filename.dart

# Undo all changes (CAREFUL!)
git reset --hard
```

### **After Committing (Locally):**

```bash
# Undo last commit but keep changes
git reset --soft HEAD~1

# Undo last commit and discard changes (CAREFUL!)
git reset --hard HEAD~1
```

---

## 🔄 Update from GitHub

```bash
# Pull latest changes from GitHub
git pull origin main

# Or just:
git pull
```

---

## 🔍 Useful Commands

### **See What Changed:**

```bash
# See changes in specific file
git diff filename.dart

# See changes in last commit
git show

# See who changed what line (blame)
git blame filename.dart
```

### **View History:**

```bash
# See all commits
git log

# See last 5 commits (compact)
git log --oneline -n 5

# See commits with file changes
git log --stat

# See visual graph of branches
git log --oneline --graph --all
```

### **Remote Info:**

```bash
# See remote repositories
git remote -v

# See all branches (local and remote)
git branch -a
```

---

## 🆘 Common Problems & Solutions

### **Problem: "fatal: not a git repository"**

```bash
# Solution: Initialize Git
git init
git remote add origin https://github.com/devKiNGCRiC/MindShield.git
```

### **Problem: "Your branch is ahead of origin/main by X commits"**

```bash
# Solution: Push your commits
git push
```

### **Problem: "Your branch is behind origin/main by X commits"**

```bash
# Solution: Pull latest changes
git pull
```

### **Problem: "Updates were rejected" (push failed)**

```bash
# Solution: Pull first, then push
git pull origin main
git push origin main
```

### **Problem: "Merge conflict"**

```bash
# 1. Open conflicted files in VS Code
# 2. Choose which changes to keep
# 3. Save the file
# 4. Then:
git add .
git commit -m "Resolved merge conflict"
git push
```

### **Problem: "Authentication failed"**

**Option A: Use Personal Access Token**
1. Go to: https://github.com/settings/tokens
2. Generate new token (classic)
3. Copy the token
4. When Git asks for password, paste the token

**Option B: Use GitHub CLI**
```bash
# Install GitHub CLI
winget install GitHub.cli

# Authenticate
gh auth login

# Follow prompts
```

**Option C: Use SSH**
```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "kingcric28@gmail.com"

# Copy public key
type %USERPROFILE%\.ssh\id_ed25519.pub | clip

# Add to GitHub: https://github.com/settings/keys
```

---

## 📝 Good Commit Message Examples

### **Structure:**
```
Day X: [Type] - [Brief description]

Types: Add, Update, Fix, Remove, Refactor, Test, Docs
```

### **Examples:**

```bash
# Learning progress
git commit -m "Day 1: Add Dart basics practice files"
git commit -m "Day 3: Complete widget tree tutorial"

# Features
git commit -m "Day 8: Add Firebase authentication"
git commit -m "Day 15: Implement stake creation form"

# Bug fixes
git commit -m "Fix: Timer not stopping on session end"
git commit -m "Fix: User profile not loading correctly"

# Updates
git commit -m "Update: Improve stake amount selection UI"
git commit -m "Update: Add loading states to analytics"

# Documentation
git commit -m "Docs: Add setup instructions for Windows"
git commit -m "Docs: Update README with new features"
```

---

## 🎯 Daily Git Workflow (Recommended)

```bash
# === MORNING (Start of Day) ===

# 1. Make sure you have latest code
git pull

# 2. Check what branch you're on
git status


# === DURING THE DAY ===

# 3. Code and test your changes
# 4. Save files in VS Code (Ctrl+S)


# === END OF DAY (Or After Completing Feature) ===

# 5. Check what changed
git status
git diff

# 6. Stage all changes
git add .

# 7. Commit with message
git commit -m "Day X: What you accomplished"

# 8. Push to GitHub
git push

# 9. Verify on GitHub
# Visit: https://github.com/devKiNGCRiC/MindShield
```

---

## 🔐 Authentication Options

### **Current Setup (What You're Using):**

Your Git is configured with HTTPS and using browser authentication through Git Credential Manager. This is the **easiest method** and works great!

**When you push:**
1. Git opens browser
2. You login to GitHub
3. Credentials are saved
4. Future pushes work automatically ✓

**No additional setup needed!**

---

## 📊 Check Your GitHub

Visit your repository to see your code:

**Repository URL:** https://github.com/devKiNGCRiC/MindShield

You should now see:
- ✅ README.md (with professional overview)
- ✅ LICENSE (MIT License)
- ✅ 00_SETUP_GUIDE.md
- ✅ 01_LEARNING_ROADMAP.md
- ✅ 02_PROJECT_PLAN.md
- ✅ START_HERE.md
- ✅ .gitignore (Flutter template)
- ✅ MindShield - Complete Project Idea v1.txt

---

## 🎓 Git Concepts (Quick Explanation)

### **Repository (Repo):**
A folder tracked by Git. Contains all your code and history.

### **Commit:**
A snapshot of your code at a point in time. Like a save point in a game.

### **Branch:**
A parallel version of your code. Main branch is `main`.

### **Remote:**
The GitHub server where your code is stored online.

### **Push:**
Upload your local commits to GitHub.

### **Pull:**
Download commits from GitHub to your computer.

### **Clone:**
Download a repository from GitHub for the first time.

### **Merge:**
Combine changes from different branches.

---

## 🚀 Quick Commands You'll Use Most

```bash
# Daily workflow (90% of the time):
git add .
git commit -m "Your message here"
git push

# Check status (use often):
git status

# See history:
git log --oneline

# Update from GitHub:
git pull
```

---

## 📖 Learn More

- **Git Documentation:** https://git-scm.com/doc
- **GitHub Guides:** https://guides.github.com
- **Git Cheat Sheet:** https://education.github.com/git-cheat-sheet-education.pdf
- **Interactive Git Tutorial:** https://learngitbranching.js.org

---

## ✅ Current Status

```
Your Setup:
├─ Git installed: ✅
├─ Username: devKiNGCRiC
├─ Email: kingcric28@gmail.com
├─ Repository: MindShield
├─ Remote: https://github.com/devKiNGCRiC/MindShield.git
├─ Branch: main
├─ Authentication: Browser (Git Credential Manager) ✅
└─ First push: COMPLETE! 🎉
```

---

## 🎉 You're All Set!

**From now on, after each day of coding:**

1. `git add .`
2. `git commit -m "Day X: What you did"`
3. `git push`

**That's it! Simple as 1-2-3!** 🚀

---

**Created:** October 31, 2025  
**For:** Raj Roy (@devKiNGCRiC)  
**Project:** MindShield
