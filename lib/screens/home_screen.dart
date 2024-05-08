import 'package:diseno/widgets/background.dart';
import 'package:diseno/widgets/card_table.dart';
import 'package:diseno/widgets/custom_botton_navigationbar.dart';
import 'package:diseno/widgets/page-title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),

          _HomeBody(),

        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          //titulos 
          PageTitle(),

          //card table
          CardTable(),
        ],
      ),
    );
  }
}