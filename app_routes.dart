import 'package:flutter/material.dart';

import '../screens/auth/login_screen.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/wallet/wallet_screen.dart';
import '../screens/cards/cards_screen.dart';
import '../screens/transactions/transactions_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/kyc/kyc_screen.dart';
import '../screens/topup/add_money_screen.dart';
import '../screens/send/send_money_screen.dart';
import '../screens/cards/card_detail_screen.dart';
import '../screens/notifications/notifications_screen.dart';
import '../screens/support/support_screen.dart';
import '../screens/legal/legal_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String wallet = '/wallet';
  static const String cards = '/cards';
  static const String transactions = '/transactions';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static const String kyc = '/kyc';
  static const String addMoney = '/add-money';
  static const String sendMoney = '/send-money';
  static const String cardDetail = '/card-detail';
  static const String notifications = '/notifications';
  static const String support = '/support';
  static const String legal = '/legal';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      case wallet:
        return MaterialPageRoute(builder: (_) => const WalletScreen());
      case cards:
        return MaterialPageRoute(builder: (_) => const CardsScreen());
      case transactions:
        return MaterialPageRoute(builder: (_) => const TransactionsScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case kyc:
        return MaterialPageRoute(builder: (_) => const KycScreen());
      case addMoney:
        return MaterialPageRoute(builder: (_) => const AddMoneyScreen());
      case sendMoney:
        return MaterialPageRoute(builder: (_) => const SendMoneyScreen());
      case cardDetail:
        return MaterialPageRoute(builder: (_) => const CardDetailScreen());
      case notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case support:
        return MaterialPageRoute(builder: (_) => const SupportScreen());
      case legal:
        return MaterialPageRoute(builder: (_) => const LegalScreen());
      default:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
    }
  }
}
