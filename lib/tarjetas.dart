import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TarjetasPage extends StatefulWidget {
  const TarjetasPage({super.key});

  @override
  State<TarjetasPage> createState() => _TarjetasPageState();
}

class _TarjetasPageState extends State<TarjetasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Tarjetas",
            style: TextStyle(fontSize: 24),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            height: 195,
            decoration: BoxDecoration(
              color: HexColor("#FF0000"),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  Text(
                    "\$999.99",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    "ABC123",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "12/12/2112",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.route_outlined,
                        color: Colors.white60,
                        size: 45,
                      ),
                      Text(
                        "Recorridos",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ]),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.receipt_long_outlined,
                        color: Colors.white60,
                        size: 45,
                      ),
                      Text(
                        "Recargas",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.block,
                        color: Colors.white60,
                        size: 45,
                      ),
                      Text(
                        "Bloquear",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ]),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_outline_outlined,
                        color: Colors.white60,
                        size: 45,
                      ),
                      Text(
                        "Predeterminada",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      )
                    ]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 200,
              height: 50,
              decoration: BoxDecoration(
                color: HexColor("#FF0000"),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "Puntos de recarga",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )),
            ),
          )
        ]),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: HexColor("#99CC00")),
        child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text("Agregar", style: TextStyle(color: Colors.white)),
            ]),
      ),
    );
  }
}
