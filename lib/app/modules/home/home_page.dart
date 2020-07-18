import 'package:fatec_estacionamento/app/modules/comunicado/comunicado_module.dart';
import 'package:fatec_estacionamento/app/modules/estacionamento/estacionamento_module.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Fatec Estacionamento"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: <Widget>[
          RouterOutlet(
            module: EstacionamentoModule(),
            //keepAlive: false,
          ),
          RouterOutlet(
            module: ComunicadoModule(),
            //keepAlive: false,
          ),
          Container()
        ],
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CustomColors.vinho,
          unselectedItemColor: Colors.black,
          currentIndex: controller.selectedIndex,
          onTap: (index) {
            controller.changePage(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_car),
                title: Text("Estacionamento")),
            BottomNavigationBarItem(
                icon: Icon(const IconData(0xe900, fontFamily: 'campaign')),
                title: Text("Comunicados")),
          ],
        );
      }),
    );
  }
}
