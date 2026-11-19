import 'package:material_ui/material_ui.dart';

import 'core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mamamia',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: Scaffold(
        appBar: AppBar(title: const Text('Mamamia')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Tombol')),
              const SizedBox(height: 16),
              const Chip(label: Text('Kopi')),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(hintText: 'Cari makanan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
