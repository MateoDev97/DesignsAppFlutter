import 'package:designs_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BlurHomeView extends StatelessWidget {
  const BlurHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlurBackgroundWidget(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBarWidget(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitleWidget(),
          CardTableWidget(),
        ],
      ),
    );
  }
}
