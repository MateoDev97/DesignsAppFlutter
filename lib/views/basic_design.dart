import 'package:flutter/material.dart';

class BasicView extends StatelessWidget {
  const BasicView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/lake.jpg')),
            _TitleSection(),
            _ButtonsSection(),
            _BodySection()
          ],
        ),
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonsSection extends StatelessWidget {
  const _ButtonsSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _CustomElevatedButton('Call', Icons.call),
          _CustomElevatedButton('Route', Icons.location_on_sharp),
          _CustomElevatedButton('Share', Icons.share),
        ],
      ),
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  const _CustomElevatedButton(this.text, this.icon);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        child: Column(children: [
          Icon(
            icon,
            size: 24,
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ]),
      ),
    );
  }
}

class _BodySection extends StatelessWidget {
  const _BodySection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: const Text(
        'Nulla eu aliquip nisi nisi sint esse. Aliquip cillum duis pariatur voluptate adipisicing aliqua eu consectetur pariatur elit tempor reprehenderit sit consectetur. Do tempor laboris ipsum labore adipisicing. Ullamco anim officia eiusmod ut non ad voluptate excepteur id amet aliquip.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
