import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/navigation/app_router.dart';

void main() {
  runApp(const MindShieldApp());
}

class MindShieldApp extends StatelessWidget {
  const MindShieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindShield - Digital Wellness',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      navigatorKey: AppNavigator.navigatorKey,
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo Placeholder
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: AppTheme.primaryGreen,
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.shield_outlined,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              
              const SizedBox(height: 32),
              
              // App Name
              Text(
                'MindShield',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppTheme.primaryGreen,
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Tagline
              Text(
                'Combat Phone Addiction\nThrough Financial Stakes',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppTheme.textSecondary,
                  height: 1.5,
                ),
              ),
              
              const SizedBox(height: 48),
              
              // Features List
              _buildFeatureItem(
                Icons.attach_money,
                'Financial Accountability',
                'Put your money where your focus is',
              ),
              
              const SizedBox(height: 16),
              
              _buildFeatureItem(
                Icons.favorite,
                'Charity Integration',
                'Failed stakes support RKC_BHARAT initiatives',
              ),
              
              const SizedBox(height: 16),
              
              _buildFeatureItem(
                Icons.analytics,
                'Progress Tracking',
                'Monitor your digital wellness journey',
              ),
              
              const SizedBox(height: 48),
              
              // Get Started Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Navigate to onboarding
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Coming Soon: User Onboarding'),
                        backgroundColor: AppTheme.primaryGreen,
                      ),
                    );
                  },
                  child: const Text('Get Started'),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Development Status
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppTheme.primaryGreen.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'v1.0.0 • In Development • September 2025',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.primaryGreen,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String description) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppTheme.primaryGreen.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: AppTheme.primaryGreen,
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppTheme.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
