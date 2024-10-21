import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "strings.dart";

class Tile {
  static Widget expand(String head, String description, {String? imagePath}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(
          head,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (imagePath != null) // Check if imagePath is not null
                  Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Image.asset(imagePath)),
                SelectableText(
                  description,
                  cursorColor: Colors.blue.shade800,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static PreferredSizeWidget appbar(String title, BuildContext context) {
    return AppBar(
      title: Text(title),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.purple.shade100],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}

//--------------------------------------------------1-----------------------------static
class Tumor1 extends StatefulWidget {
  const Tumor1({super.key});

  @override
  State<Tumor1> createState() => _Tumor1State();
}

class _Tumor1State extends State<Tumor1> {
  @override
  void initState() {
    super.initState();
    // Set the status bar color to white when the screen is displayed
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Set status bar color to white
        statusBarIconBrightness:
            Brightness.dark, // Dark icons for white status bar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Papilloma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Papilloma.description),
            Tile.expand('Clinical Features', Papilloma.clinicalFeatures),
            Tile.expand("Clinical Presentation", Papilloma.clinicalPresentation,
                imagePath: 'assets/tumors/image1.png'),
            Tile.expand("Histopathological Features", Papilloma.histFeatures),
            Tile.expand("Differential Diagnosis", Papilloma.diffDiagno),
            Tile.expand("Treatment", Papilloma.treatment),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------2-----------------------------

class Tumor2 extends StatefulWidget {
  const Tumor2({super.key});

  @override
  State<Tumor2> createState() => _Tumor2State();
}

class _Tumor2State extends State<Tumor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("KeratoAcanthoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Kerato.definition),
            Tile.expand('Origin', Kerato.origin),
            Tile.expand('Causes', Kerato.causes),
            Tile.expand('Clinical Features', Kerato.clinicalFeatures),
            Tile.expand("Presentation", Kerato.presentation,
                imagePath: 'assets/tumors/image2.webp'),
            Tile.expand("Stages of Development", Kerato.developmentStages),
            Tile.expand("Histopathology", Kerato.histo),
            Tile.expand("Differential Diagnosis", Kerato.diffDiag),
            Tile.expand("Treatment", Kerato.treatment),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------3-----------------------------

class Tumor3 extends StatefulWidget {
  const Tumor3({super.key});

  @override
  State<Tumor3> createState() => _Tumor3State();
}

class _Tumor3State extends State<Tumor3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Pigmented Cellular Nevus", context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
              child: Column(
                children: [
                  Image.asset('assets/tumors/image3.png'),
                  const SelectableText(PigmentedCellularNevus.definition),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 0),
              child: Text(
                "1. Intradermal (Intramucosal) Nevus :     ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Tile.expand(
                'Definition', PigmentedCellularNevus.intradermalDescription,
                imagePath: 'assets/tumors/image3.png'),
            Tile.expand('Clinical Features',
                PigmentedCellularNevus.intradermalClinicalFeatures),
            Tile.expand(
                "Histopathology", PigmentedCellularNevus.intradermalHist),
            Tile.expand(
                "Treatment", PigmentedCellularNevus.intradermalTreatment),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 0),
              child: Text(
                "2. Junctional Nevus :                ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Tile.expand("Clinical Features",
                PigmentedCellularNevus.junctionalClinicalFeatures),
            Tile.expand(
                "Histopathology", PigmentedCellularNevus.junctionalHist),
            Tile.expand(
                "Treatment", PigmentedCellularNevus.junctionalTreatment),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 0),
              child: Text(
                "3. Compound Nevus :                ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Tile.expand(
                "Definition", PigmentedCellularNevus.compoundDescription),
            Tile.expand("Clinical Features",
                PigmentedCellularNevus.compoundClinicalFeatures),
            Tile.expand("Histopathology", PigmentedCellularNevus.compoundHist),
            Tile.expand("Treatment", PigmentedCellularNevus.compoundTreatment),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 0),
              child: Text(
                "4. Blue Nevus :                            ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Tile.expand("Definition", PigmentedCellularNevus.blueDescription),
            Tile.expand("Clinical Features",
                PigmentedCellularNevus.blueClinicalFeatures),
            Tile.expand("Histopathology", PigmentedCellularNevus.blueHist),
            Tile.expand("Treatment", PigmentedCellularNevus.blueTreatment),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------5-----------------------------

class Tumor5 extends StatefulWidget {
  const Tumor5({super.key});

  @override
  State<Tumor5> createState() => _Tumor5State();
}

class _Tumor5State extends State<Tumor5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Squamous Cell Carcinoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', SquamousCellCarcinoma.definition),
            Tile.expand('Epidemiology', SquamousCellCarcinoma.epidemiology),
            Tile.expand(
                'Etiology of Oral Cancer', SquamousCellCarcinoma.etiology),
            Tile.expand(
                'Role of Tobacco in Oral Cancer', SquamousCellCarcinoma.role),
            Tile.expand('Alcohol', SquamousCellCarcinoma.alcohol),
            Tile.expand('Diet and Nutrition', SquamousCellCarcinoma.diet),
            Tile.expand('Dental Factors', SquamousCellCarcinoma.dental),
            Tile.expand(
                'Ultravoilet Radiation', SquamousCellCarcinoma.uvradiation),
            Tile.expand('Ionizing Radiation', SquamousCellCarcinoma.ionizing),
            Tile.expand('Viruses', SquamousCellCarcinoma.viruses),
            Tile.expand(
                'Immunosuppression', SquamousCellCarcinoma.immunosuppresion),
            Tile.expand(
                'Chronic oral infections', SquamousCellCarcinoma.chronicOral),
            Tile.expand('Atmospheric Pollution',
                SquamousCellCarcinoma.atmosphericPollution),
            Tile.expand('Occupational Hazzards',
                SquamousCellCarcinoma.occupationalHazzard),
            Tile.expand('Genetic Factors', SquamousCellCarcinoma.geneticFactor),
            Tile.expand('Tumor Suppressor genes',
                SquamousCellCarcinoma.tumorSuppression),
            Tile.expand(
                'Pre-existing oral lesions', SquamousCellCarcinoma.preExisting),
            Tile.expand(
                'Clinical Features', SquamousCellCarcinoma.clinicalFeatures),
            Tile.expand("Clinical Presentation",
                SquamousCellCarcinoma.clinicalPresentation,
                imagePath: 'assets/tumors/image5.jpg'),
            Tile.expand("Radiological Features", "", imagePath: 'assets/tumors/radiology/squamous-cell.png'),
            Tile.expand(
                "Carcinoma of the lip", SquamousCellCarcinoma.lipCarcinoma),
            Tile.expand("Carcinoma of the tongue",
                SquamousCellCarcinoma.tongueCarcinoma),
            Tile.expand("Carcinoma of the floor of the mouth",
                SquamousCellCarcinoma.floorCarcinoma),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------6-----------------------------

class Tumor6 extends StatefulWidget {
  const Tumor6({super.key});

  @override
  State<Tumor6> createState() => _Tumor6State();
}

class _Tumor6State extends State<Tumor6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Basal Cell Carcinoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', BasalCell.definition),
            Tile.expand('Origin', BasalCell.origin),
            Tile.expand('Etiology', BasalCell.etiology),
            Tile.expand('Clinical Features', BasalCell.clinicalFeatures),
            Tile.expand("Presentation", BasalCell.presentation,
                imagePath: 'assets/tumors/image6.png'),
            Tile.expand("Histopathology", BasalCell.histopathology),
            Tile.expand("Differential Diagnosis", BasalCell.differentialDiagno),
            Tile.expand("Treatment", BasalCell.treatment),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------7-----------------------------

class Tumor7 extends StatefulWidget {
  const Tumor7({super.key});

  @override
  State<Tumor7> createState() => _Tumor7State();
}

class _Tumor7State extends State<Tumor7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Verrucous Carcinoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Verrucous.definition),
            Tile.expand('Etiology', Verrucous.etiology),
            Tile.expand('Clinical Features', Verrucous.clinicalFeatures),
            Tile.expand("Presentation", Verrucous.presentation,
                imagePath: 'assets/tumors/image7.jpg'),
            Tile.expand("Histopathology", Verrucous.histo),
            Tile.expand("Differential Diagnosis", Verrucous.diffDiagno),
            Tile.expand("Treatment", Verrucous.treatment),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------8-----------------------------
class Tumor8 extends StatefulWidget {
  const Tumor8({super.key});

  @override
  State<Tumor8> createState() => _Tumor8State();
}

class _Tumor8State extends State<Tumor8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Malignant Melanoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', MalignantMelanoma.definition),
            Tile.expand(
                'Clinical Features', MalignantMelanoma.clinicalFeatures),
            Tile.expand(
                'Clinical Types of Melanoma', MalignantMelanoma.clinicalTypes),
            Tile.expand("Presentation", MalignantMelanoma.presentation,
                imagePath: 'assets/tumors/image8.jpg'),
            Tile.expand("Histopathology", MalignantMelanoma.hist),
            Tile.expand("Radiological Features", " ", imagePath: "assets/tumors/radiology/malignant-melanoma.png"),
            Tile.expand("Differential Diagnosis", MalignantMelanoma.diffDiagno),
            Tile.expand("Treatment", MalignantMelanoma.treatment),
          ],
        ),
      ),
    );
  }
}
//----------------------------------------------------------------------------------9

class Tumor9 extends StatefulWidget {
  const Tumor9({super.key});

  @override
  State<Tumor9> createState() => _Tumor9State();
}

class _Tumor9State extends State<Tumor9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Fibroma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Fibroma.definition),
            Tile.expand('Clinical Features', Fibroma.clinicalFeatures),
            Tile.expand("Clinical Presentation", Fibroma.clinicalPresentation,
                imagePath: 'assets/tumors/image9.jpg'),
            Tile.expand("Histopathology", Fibroma.histo),
            Tile.expand("Differential Diagnosis", Fibroma.diffDiagno),
            Tile.expand("Treatment", Fibroma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------10
class Tumor10 extends StatefulWidget {
  const Tumor10({super.key});

  @override
  State<Tumor10> createState() => _Tumor10State();
}

class _Tumor10State extends State<Tumor10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Peripheral Ossifying Fibroma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', PeripheralOssiyingFibroma.definition),
            Tile.expand('Origin', PeripheralOssiyingFibroma.origin),
            Tile.expand('Clinical Features',
                PeripheralOssiyingFibroma.clinicalFeatures),
            Tile.expand("Presentation", PeripheralOssiyingFibroma.presentation,
                imagePath: 'assets/tumors/image10.png'),
            Tile.expand("Radiographic Features",
                PeripheralOssiyingFibroma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/peripheral-ossifying.png'),
            Tile.expand("Histopathology", PeripheralOssiyingFibroma.histo),
            Tile.expand(
                "Differential Diagnosis", PeripheralOssiyingFibroma.diffDiagno),
            Tile.expand("Treatment", PeripheralOssiyingFibroma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------11
class Tumor11 extends StatefulWidget {
  const Tumor11({super.key});

  @override
  State<Tumor11> createState() => _Tumor11State();
}

class _Tumor11State extends State<Tumor11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Central Ossifying Fibroma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', CentralOssifyingFibroma.definition),
            Tile.expand(
                'Clinical Features', CentralOssifyingFibroma.clinicalFeatures),
            Tile.expand("Presentation", CentralOssifyingFibroma.presentation,
                imagePath: 'assets/tumors/image11.png'),
            Tile.expand("Radiographic Features",
                CentralOssifyingFibroma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/central-Ossifying.png'),
            Tile.expand("Macroscopic Features",
                CentralOssifyingFibroma.macroscopicFeatures),
            Tile.expand("Histopathology", CentralOssifyingFibroma.histo),
            Tile.expand(
                "Differential Diagnosis", CentralOssifyingFibroma.diffDiagno),
            Tile.expand("Treatment", CentralOssifyingFibroma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------12
class Tumor12 extends StatefulWidget {
  const Tumor12({super.key});

  @override
  State<Tumor12> createState() => _Tumor12State();
}

class _Tumor12State extends State<Tumor12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Peripheral Giant Cell Granuloma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', PeripheralGiantCellGranuloma.definition),
            Tile.expand('Origin', PeripheralGiantCellGranuloma.origin),
            Tile.expand('Clinical Features',
                PeripheralGiantCellGranuloma.clinicalFeatures),
            Tile.expand("Clinical Presentation",
                PeripheralGiantCellGranuloma.clinicalPresentation,
                imagePath: 'assets/tumors/image12.jpg'),
            Tile.expand("Radiographical Features",
                PeripheralGiantCellGranuloma.radiographicFeatures, imagePath: "assets/tumors/radiology/peripheral-giant-cell.png"),
            Tile.expand("Macroscopic Features",
                PeripheralGiantCellGranuloma.macroscopicFeatures),
            Tile.expand("Histopathology", PeripheralGiantCellGranuloma.histo),
            Tile.expand("Differential Diagnosis",
                PeripheralGiantCellGranuloma.diffDiagno),
            Tile.expand("Treatment", PeripheralGiantCellGranuloma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------13
class Tumor13 extends StatefulWidget {
  const Tumor13({super.key});

  @override
  State<Tumor13> createState() => _Tumor13State();
}

class _Tumor13State extends State<Tumor13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Central Giant Cell Granuloma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', CentralGiantCellGranuloma.definition),
            Tile.expand('Clinical Features',
                CentralGiantCellGranuloma.clinicalFeatures),
            Tile.expand("Presentation", CentralGiantCellGranuloma.presentation,
                imagePath: 'assets/tumors/image13.png'),
            Tile.expand("Radiological Features",
                CentralGiantCellGranuloma.radiologicalFeatures, imagePath: "assets/tumors/radiology/central-giant-cell"),
            Tile.expand("Histopathology", CentralGiantCellGranuloma.histo),
            Tile.expand("Pathogenesis", CentralGiantCellGranuloma.pathogenesis),
            Tile.expand(
                "Differential Diagnosis", CentralGiantCellGranuloma.diffDiagno),
            Tile.expand("Treatment", CentralGiantCellGranuloma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------14
class Tumor14 extends StatefulWidget {
  const Tumor14({super.key});

  @override
  State<Tumor14> createState() => _Tumor14State();
}

class _Tumor14State extends State<Tumor14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Myxoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Myxoma.definition),
            Tile.expand('Clinical Features', Myxoma.clinicalFeatures),
            Tile.expand("Presentation", Myxoma.presentation,
                imagePath: 'assets/tumors/image14.jpg'),
            Tile.expand("Histopathology", Myxoma.histo),
            Tile.expand("Radiological Features", " ", imagePath: "assets/tumors/radiollogy/myxoma.png"),
            Tile.expand("Treatment", Myxoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------15
class Tumor15 extends StatefulWidget {
  const Tumor15({super.key});

  @override
  State<Tumor15> createState() => _Tumor15State();
}

class _Tumor15State extends State<Tumor15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Lipoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Lipoma.definition),
            Tile.expand('Clinical Features', Lipoma.clinicalFeatures),
            Tile.expand("Presentation", Lipoma.presentation,
                imagePath: 'assets/tumors/image15.webp'),
            Tile.expand("Macroscopic Appearance", Lipoma.macroscopic),
            Tile.expand("Histopathology", Lipoma.histo),
            Tile.expand("Treatment", Lipoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------16
class Tumor16 extends StatefulWidget {
  const Tumor16({super.key});

  @override
  State<Tumor16> createState() => _Tumor16State();
}

class _Tumor16State extends State<Tumor16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Hemangiomas", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Hemangioma.definition),
            Tile.expand('Clinical Features', Hemangioma.clinicalFeatures,
                imagePath: 'assets/tumors/image16.webp'),
            Tile.expand('Growth Pattern', Hemangioma.growthPattern),
            Tile.expand("Hemangiomas of skin and mucous membrane",
                Hemangioma.skinMucous),
            Tile.expand("Intramuscular Hemangioma", Hemangioma.intramuscular),
            Tile.expand("Port-wine Stain", Hemangioma.portwine),
            Tile.expand("Central Hemangiomas", Hemangioma.central),
            Tile.expand("Macroscopic Findings", Hemangioma.macroscopic),
            Tile.expand("Histopathology", Hemangioma.histo),
            Tile.expand("Histopathology of other forms of Hemangiomas",
                Hemangioma.otherHisto),
            Tile.expand("Differential Diagnosis", Hemangioma.diffDiagno),
            Tile.expand("Treatment", Hemangioma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------17
class Tumor17 extends StatefulWidget {
  const Tumor17({super.key});

  @override
  State<Tumor17> createState() => _Tumor17State();
}

class _Tumor17State extends State<Tumor17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Lymphangioma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Lymphangioma.definition),
            Tile.expand('Clinical Features', Lymphangioma.clinicalFeatures),
            Tile.expand("Presentation", Lymphangioma.presentation,
                imagePath: 'assets/tumors/image17.jpg'),
            Tile.expand("Histopathology", Lymphangioma.histo),
            Tile.expand("Differential Diagnosis", Lymphangioma.diffDiagno),
            Tile.expand(
                "Special Investigation", Lymphangioma.specialInvestigation),
            Tile.expand("Treatment", Lymphangioma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------18
class Tumor18 extends StatefulWidget {
  const Tumor18({super.key});

  @override
  State<Tumor18> createState() => _Tumor18State();
}

class _Tumor18State extends State<Tumor18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Osteoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Osteoma.definition),
            Tile.expand('Types', Osteoma.types),
            Tile.expand('Clinical Features', Osteoma.clinicalFeatures),
            Tile.expand("Presentation", Osteoma.presentation,
                imagePath: 'assets/tumors/image18.jpg'),
            Tile.expand("Radiographic Features", Osteoma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/osteoma.png'),
            Tile.expand("Histopathology", Osteoma.histo),
            Tile.expand("Differential Diagnosis", Osteoma.diffDiagno),
            Tile.expand("Treatment", Osteoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------19
class Tumor19 extends StatefulWidget {
  const Tumor19({super.key});

  @override
  State<Tumor19> createState() => _Tumor19State();
}

class _Tumor19State extends State<Tumor19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Chondroma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Chondroma.definition),
            Tile.expand('Clinical Features', Chondroma.clinicalFeatures),
            Tile.expand("Presentation", Chondroma.presentation,
                imagePath: 'assets/tumors/image19.jpg'),
            Tile.expand(
                "Radiographic Features", Chondroma.radiographicFeatures),
            Tile.expand("Histopathology", Chondroma.histo),
            Tile.expand("Differential Diagnosis", Chondroma.diffDiagno),
            Tile.expand("Treatment", Chondroma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------20
class Tumor20 extends StatefulWidget {
  const Tumor20({super.key});

  @override
  State<Tumor20> createState() => _Tumor20State();
}

class _Tumor20State extends State<Tumor20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Neurilemmoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Neurilemmoma.definition),
            Tile.expand('Clinical Features', Neurilemmoma.clinicalFeatures),
            Tile.expand("Presentation", Neurilemmoma.presentation,
                imagePath: 'assets/tumors/image20.jpg'),
            Tile.expand(
                "Radiographic Features", Neurilemmoma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/neurilemmoma.png'),
            Tile.expand("Histopathology", Neurilemmoma.histo),
            Tile.expand("Differential Diagnosis", Neurilemmoma.diffDiagno),
            Tile.expand("Treatment", Neurilemmoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------21
class Tumor21 extends StatefulWidget {
  const Tumor21({super.key});

  @override
  State<Tumor21> createState() => _Tumor21State();
}

class _Tumor21State extends State<Tumor21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Neurofibroma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Neurofibroma.definition),
            Tile.expand('Clinical Features', Neurofibroma.clinicalFeatures),
            Tile.expand("Presentation", Neurofibroma.presentation,
                imagePath: 'assets/tumors/image21.jpg'),
            Tile.expand(
                "Radiographic Features", Neurofibroma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/neurifibroma.png'),
            Tile.expand("Histopathology", Neurofibroma.histo),
            Tile.expand("Treatment", Neurofibroma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------22
class Tumor22 extends StatefulWidget {
  const Tumor22({super.key});

  @override
  State<Tumor22> createState() => _Tumor22State();
}

class _Tumor22State extends State<Tumor22> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Teratoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Teratoma.definition),
            Tile.expand('Origin', Teratoma.origin),
            Tile.expand('Clinical Features', Teratoma.clinicalFeatures,
                imagePath: 'assets/tumors/image22.jpg'),
            Tile.expand("Histopathology", Teratoma.histo),
            Tile.expand("Treatment", Teratoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------23
class Tumor23 extends StatefulWidget {
  const Tumor23({super.key});

  @override
  State<Tumor23> createState() => _Tumor23State();
}

class _Tumor23State extends State<Tumor23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Fibrosarcoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', FibroSarcoma.definition),
            Tile.expand('Clinical Features', FibroSarcoma.clinicalFeatures),
            Tile.expand("Presentation", FibroSarcoma.clinicalPresentation,
                imagePath: 'assets/tumors/image23.jpg'),
            Tile.expand(
                "Radiographic Features", FibroSarcoma.radiographicFeatures,
                imagePath: 'assets/tumors/radiology/fibrosarcoma.png'),
            Tile.expand("Histopathology", FibroSarcoma.histo),
            Tile.expand("Differential Diagnosis", FibroSarcoma.diffDiagno),
            Tile.expand("Treatment", FibroSarcoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------24
class Tumor24 extends StatefulWidget {
  const Tumor24({super.key});

  @override
  State<Tumor24> createState() => _Tumor24State();
}

class _Tumor24State extends State<Tumor24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Kaposi's Sarcoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Kaposi.definition),
            Tile.expand("Endemic Kaposi's Sarcoma", Kaposi.endemic),
            Tile.expand("Epidemic Kaposi's Sarcoma", Kaposi.epidemic),
            Tile.expand('Etiology', Kaposi.etiology),
            Tile.expand('Clinical Features', Kaposi.clinicalFeatures,
                imagePath: 'assets/tumors/image24.jpg'),
            Tile.expand("Histopathology", Kaposi.histo),
            Tile.expand("Differential Diagnosis", Kaposi.diffDiagno),
            Tile.expand("Treatment", Kaposi.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------25
class Tumor25 extends StatefulWidget {
  const Tumor25({super.key});

  @override
  State<Tumor25> createState() => _Tumor25State();
}

class _Tumor25State extends State<Tumor25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Ewing's Sarcoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Ewing.definition),
            Tile.expand('Histogenesis', Ewing.histogenesis),
            Tile.expand('Clinical Features', Ewing.clinicalFeatures),
            Tile.expand("Presentation", Ewing.presentation,
                imagePath: 'assets/tumors/image25.jpg'),
            Tile.expand("Radiographic Features", Ewing.radiographicFeatures),
            Tile.expand("Histopathology", Ewing.histo),
            Tile.expand("Differential Diagnosis", Ewing.diffDiagno),
            Tile.expand("Treatment", Ewing.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------26
class Tumor26 extends StatefulWidget {
  const Tumor26({super.key});

  @override
  State<Tumor26> createState() => _Tumor26State();
}

class _Tumor26State extends State<Tumor26> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Osteosarcoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', OsteoSarcoma.definition),
            Tile.expand('Etiology', OsteoSarcoma.etiology),
            Tile.expand('Types of Osteosarcoma', OsteoSarcoma.types),
            Tile.expand('Clinical Features', OsteoSarcoma.clinicalFeatures),
            Tile.expand(
                "Clinical Presentation", OsteoSarcoma.clinicalPresentation,
                imagePath: 'assets/tumors/image26.webp'),
            Tile.expand(
                "Radiological Features", OsteoSarcoma.radiologicalFeatures,
                imagePath: 'assets/tumors/radiology/osteosarcoma.png'),
            Tile.expand("Histopathology", OsteoSarcoma.histo),
            Tile.expand("Differential Diagnosis", OsteoSarcoma.diffDiagno),
            Tile.expand("Treatment", OsteoSarcoma.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------27
class Tumor27 extends StatefulWidget {
  const Tumor27({super.key});

  @override
  State<Tumor27> createState() => _Tumor27State();
}

class _Tumor27State extends State<Tumor27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Hodgkin's Lymphoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Hodgkin.definition),
            Tile.expand('Clinical Features', Hodgkin.clinicalFeatures),
            Tile.expand("Clinical Presentation", Hodgkin.clinicalPresentation,
                imagePath: 'assets/tumors/image27.png'),
            Tile.expand("Histopathology", Hodgkin.histo),
            Tile.expand("Histopathological Types", Hodgkin.types),
            Tile.expand("Laboratory Investigations", Hodgkin.lab),
            Tile.expand("Treatment", Hodgkin.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------28
class Tumor28 extends StatefulWidget {
  const Tumor28({super.key});

  @override
  State<Tumor28> createState() => _Tumor28State();
}

class _Tumor28State extends State<Tumor28> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Non-Hodgkin's Lymphoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', NHL.definition),
            Tile.expand('Clinical Features', NHL.clinicalFeatures),
            Tile.expand("Clinical Presentation", NHL.clinicalPresentation,
                imagePath: 'assets/tumors/image28.jpg'),
            Tile.expand("Radiology", NHL.radiology,
                imagePath: 'assets/tumors/radiology/non-hodkins.png'),
            Tile.expand("Histopathology", NHL.histo),
            Tile.expand("Special Investigations", NHL.special),
            Tile.expand("Treatment", NHL.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------29
class Tumor29 extends StatefulWidget {
  const Tumor29({super.key});

  @override
  State<Tumor29> createState() => _Tumor29State();
}

class _Tumor29State extends State<Tumor29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Burkitt's Lymphoma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Burkitt.definition),
            Tile.expand('Clinical Features', Burkitt.clinicalFeatures),
            Tile.expand('Types', Burkitt.types),
            Tile.expand("Clinical Presentation", Burkitt.clinicalPresentation,
                imagePath: 'assets/tumors/image29.png'),
            Tile.expand("Radiology", Burkitt.radiological),
            Tile.expand("Histopathology", Burkitt.histo),
            Tile.expand("Treatment", Burkitt.treatment),
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------------------------30
class Tumor30 extends StatefulWidget {
  const Tumor30({super.key});

  @override
  State<Tumor30> createState() => _Tumor30State();
}

class _Tumor30State extends State<Tumor30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tile.appbar("Multiple Myeloma", context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Tile.expand('Definition', Myeloma.definition),
            Tile.expand('Clinical Features', Myeloma.clinicalFeatures),
            Tile.expand("Clinical Presentation", Myeloma.clinicalPresentation,
                imagePath: 'assets/tumors/image30.jpg'),
            Tile.expand("Radiological Features", Myeloma.radiologicalFeatures),
            Tile.expand("Histopathology", Myeloma.histo),
            Tile.expand("Treatment", Myeloma.treatment),
          ],
        ),
      ),
    );
  }
}
