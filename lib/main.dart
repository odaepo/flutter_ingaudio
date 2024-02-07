import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false, // Rimuove il banner "Debug" in alto a destra
      title: 'Audio Folder Player',
      home: FolderScreen(),
    );
  }
}

class FolderScreen extends StatefulWidget {
  @override
  _FolderScreenState createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
  final AudioPlayer audioPlayer = AudioPlayer();
  List<String> folders = ['COMPLETE_KEYFS_WB_audio', 'COMPLETE_KFS_Class_Audio']; // Nomi delle tue cartelle
  Map<String, List<String>> audioFiles = {
    'COMPLETE_KEYFS_WB_audio': [
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_01_Copyright.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_02.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_03.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_04.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_05.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_06.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_07.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_08.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_09.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_10.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_11.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_12.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_13.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_14.mp3',
      'audio/COMPLETE_KEYFS_WB_audio/COMPLETE_KEYFS_WB_15.mp3',
    ],
    'COMPLETE_KFS_Class_Audio': [

      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_001.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_002.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_003.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_004.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_005.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_006.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_007.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_008.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_009.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_010.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_011.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_012.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_013.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_014.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_015.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_016.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_017.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_018.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_019.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_020.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_021.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_022.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_023.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_024.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_025.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_026.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_027.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_028.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_029.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_030.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_031.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_032.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_033.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_034.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_035.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_036.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_037.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_038.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_039.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_040.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_041.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_042.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_043.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_044.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_045.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_046.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_047.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_048.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_049.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_050.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_051.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_052.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_053.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_054.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_055.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_056.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_057.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_058.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_059.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_060.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_061.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_062.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_063.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_064.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_065.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_066.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_067.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_068.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_069.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_070.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_071.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_072.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_073.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_074.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_075.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_076.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_077.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_078.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_079.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_080.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_081.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_082.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_083.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_084.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_085.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_086.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_087.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_088.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_089.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_090.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_091.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_092.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_093.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_094.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_095.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_096.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_097.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_098.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_099.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_100.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_101.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_102.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_103.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_104.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_105.mp3',
      'audio/COMPLETE_KFS_Class_Audio/COMPLETE_KFS_SB_106.mp3',
    ],
  }; // Mappa delle cartelle ai file audio
  String? selectedFolder;



  //void playAudio(String filePath) async {
  //  audioCache.play(filePath);
  //  //await audioPlayer.play(AssetSource(filePath), isLocal: true);
  //}
  void playAudiobis(String filePath) async {
    final player = AudioPlayer();
    //await player.setSource(AssetSource(filePath));
    await player.play(AssetSource(filePath));

    //await player.play(UrlSource('https://example.com/my-audio.wav'));
    //await audioPlayer.setSourceAsset(filePath);
    //await audioPlayer.resume(); // Può essere play() a seconda della versione di audioplayers
    //await audioPlayer.play(UrlSource(filePath)); // Può essere play() a seconda della versione di audioplayers
  }

  void playAudio(String filePath) async {
    await audioPlayer.play(AssetSource(filePath));
  }

  void stopAudio() async {
    await audioPlayer.stop();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scegli una cartella e poi il file audio da riprodurre'),
      ),
      body: Column(
        children: [
            ListView.builder(
              shrinkWrap: true, // Importante per ridurre lo spazio occupato
              physics: NeverScrollableScrollPhysics(), // Disabilita lo scroll nella ListView
              itemCount: folders.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(folders[index]),
                  onTap: () {
                    setState(() {
                      selectedFolder = folders[index];
                    });
                  },
                );
              },
            ),
          Divider(
            color: Colors.grey, // Colore della linea
            thickness: 1, // Spessore della linea
            height: 20, // Spazio verticale attorno al Divider
          ),
          if (selectedFolder != null) Expanded(
            child: ListView.builder(
              itemCount: audioFiles[selectedFolder]!.length,
              itemBuilder: (context, index) {
                String filePath = audioFiles[selectedFolder]![index];
                return ListTile(
                  title: Text(filePath.split('/').last),
                  onTap: () => playAudio(filePath),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              stopAudio();
            },
            child: Text('Stop Audio'),
          ),
        ],
      ),
    );
  }

}


