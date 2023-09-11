import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
theme: FlexThemeData.light(
  scheme: FlexScheme.amber,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.amber,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,


      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            if (kDebugMode) {
              print('Icono de búsqueda presionado!');
            }
          },
        ),
        title: const Text('Raicich'),
        actions: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(right: 0.0), // Añadir margen a la derecha
            child: IconButton(
              icon: const Icon(Icons.shopping_cart), 
              onPressed: () {
                if (kDebugMode) {
                  print('Carrito presionado!');
                }
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/suculenta1.jpg'), 
                ),
            title: const Text('Aeonium'),
            subtitle: const Text('Tipo de suculenta para interior'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/suculenta2.jpg'), 
                ),
            title: const Text('Senecio'),
            subtitle: const Text('Suculenta luz indirecta'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/suculenta3.jpg'),
                ),
            title: const Text('Dinteranthus'),
            subtitle: const Text('Suculenta de exterior'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(child: Text(''), backgroundColor: Colors.lightGreen),
            title: const Text('White Fox'),
            subtitle: const Text('De matices claros'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(child: Text(''), backgroundColor: Colors.yellow),
            title: const Text('Ice Plant'),
            subtitle: const Text('Planta que parece hielo'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(child: Text(''), backgroundColor: Colors.lightBlue),
            title: const Text('Fred Ives'),
            subtitle: const Text('Suculenta que parece sol'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
          ListTile(
            leading: const CircleAvatar(child: Text(''), backgroundColor: Colors.red),
            title: const Text('Marvi Gras'),
            subtitle: const Text('Suculenta que parece estar en llamas'),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                if (kDebugMode) {
                  print('More vert del ítem 8 presionado!');
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).primaryColor,
        height: 56,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Colors.white),  // Cambia el color del ícono a blanco
            Icon(Icons.favorite, color: Colors.white),  // Cambia el color del ícono a blanco
            Icon(Icons.person, color: Colors.white),  // Cambia el color del ícono a blanco
          ],
        ),
      ),
    );
  }
}
