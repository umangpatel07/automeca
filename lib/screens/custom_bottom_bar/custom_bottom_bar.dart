// import 'package:automativemechatronics/screens/account_screen/account_screen.dart';
// import 'package:automativemechatronics/screens/auth_ui/home/home.dart';
// import 'package:automativemechatronics/screens/cart_screen/cart_screen.dart';
// import 'package:automativemechatronics/screens/order_screen/order_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//
// class CustomBottomBar extends StatefulWidget {
//   const CustomBottomBar({final Key? key,})
//       : super(key: key);
//
//   @override
//   _CustomBottomBarState createState() => _CustomBottomBarState();
// }
//
// class _CustomBottomBarState extends State<CustomBottomBar> {
//   PersistentTabController _controller=PersistentTabController();
//   bool _hideNavBar=false;
//
//
//   List<Widget> _buildScreens() => [
//     const Home(),
//     const CartScreen(),
//     const OrderScreen(),
//     const AccountScreen(),
//     ];
//
//
//   List<PersistentBottomNavBarItem> _navBarsItems() => [
//     PersistentBottomNavBarItem(
//         icon: const Icon(Icons.home),
//         inactiveIcon: const Icon(Icons.home_outlined),
//         title: "Home",
//         activeColorPrimary: Colors.red,
//         inactiveColorPrimary: Colors.grey,
//         inactiveColorSecondary: Colors.purple),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.shopping_cart),
//       inactiveIcon: const Icon(Icons.shopping_cart_outlined),
//       title: "Cart",
//       activeColorPrimary: Colors.teal,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.favorite),
//       inactiveIcon: const Icon(Icons.details),
//       title: "Order Details",
//       activeColorPrimary: Colors.blueAccent,
//       inactiveColorPrimary: Colors.grey,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.person),
//       inactiveIcon: const Icon(Icons.person_outline),
//       title: "Profile",
//       activeColorPrimary: Colors.deepOrange,
//       inactiveColorPrimary: Colors.grey,
//     ),
//   ];
//
//   @override
//   Widget build(final BuildContext context) => Scaffold(
//     body: PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarsItems(),
//       resizeToAvoidBottomInset: true,
//       navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
//           ? 0.0
//           : kBottomNavigationBarHeight,
//       bottomScreenMargin: 0,
//       backgroundColor: Colors.black,
//       hideNavigationBar: _hideNavBar,
//       decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 400),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//         animateTabTransition: true,
//       ),
//       navBarStyle: NavBarStyle
//           .style1, // Choose the nav bar style with this property
//     ),
//   );
// }
