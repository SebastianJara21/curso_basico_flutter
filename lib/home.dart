import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/curso_basico.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/lista_page.dart';
import 'package:curso_basico_flutter/pagina_con_estado.dart';
import 'package:curso_basico_flutter/tarjetas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _onPressedDashboard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Dashboard();
      },
    ));
  }

  void _onPressedBackground(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const BackgroundPage();
      },
    ));
  }

  void _onPressedCards(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const TarjetasPage();
      },
    ));
  }

  void _onPressedEstados(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const PaginaConEstado();
      },
    ));
  }

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Dashboard(),
    const ListaPage(),
    const CursoBasicoPage(),
  ];
  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Mi perfil",
                style:
                    GoogleFonts.poppins(color: Colors.black, fontSize: 20.0))),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.grey[400],
              size: 25,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.grey[400],
          size: 35.0,
        ),
        backgroundColor: Colors.white,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onNavItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "background"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded), label: "Tarjetas"),
        ],
      ),
    );
  }
}
