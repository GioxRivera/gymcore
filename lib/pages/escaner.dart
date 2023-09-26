import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';


class Escaner extends StatefulWidget {
  const Escaner({Key? key}) : super(key: key);

  @override
  State<Escaner> createState() => _EscanerState();
}

class _EscanerState extends State<Escaner> {

  List<CameraDescription>? cameras;
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';
  bool _isModelBusy = false;
  int pauseDurationInSeconds = 3;
  int numberOfIterations = 50;

  @override
  void initState() {
    loadCamera();
    loadmodel();
    super.initState();
  }


  loadCamera() async {
    cameras = await availableCameras();
    if (mounted) {
      setState(() {});
    }
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      } else {
        if (mounted) {
          setState(() {
            cameraController!.startImageStream((imageStream) {
              cameraImage = imageStream;
              runModel();
            });
          });
        }
      }
    });
  }

  runModel() async {
    if (_isModelBusy) {
      return; // Evitar que se ejecute otra inferencia si ya está ocupado.
    }

    if (mounted) {
      setState(() {
        _isModelBusy = true;
      });
    }

    List<String> predictionsList = [];

    Future<void> performPrediction(int iteration) async {
      try {
        if (cameraImage != null) {
          var predictions = await Tflite.runModelOnFrame(
            bytesList: cameraImage!.planes.map((plane) {
              return plane.bytes;
            }).toList(),
            imageHeight: cameraImage!.height,
            imageWidth: cameraImage!.width,
            imageMean: 127.5,
            imageStd: 127.5,
            rotation: 90,
            numResults: 2,
            threshold: 0.1,
            asynch: true,
          );

          if (predictions != null && predictions.isNotEmpty) {
            predictionsList.add(predictions[0]['label']);
          }
        }
      } catch (e) {
        print('Error durante la inferencia: $e');
      } finally {
        if (iteration < numberOfIterations - 1) {
          performPrediction(iteration + 1);
        } else {
          String mostFrequentLabel =
              predictionsList.fold<String>("", (prev, current) {
            int countPrev =
                predictionsList.where((label) => label == prev).length;
            int countCurrent =
                predictionsList.where((label) => label == current).length;
            return (countCurrent > countPrev) ? current : prev;
          });

          if (mounted) {
            setState(() {
              output = mostFrequentLabel;
            });
          }

          // Pausa antes de comenzar el siguiente ciclo
          Future.delayed(Duration(seconds: pauseDurationInSeconds), () {
            predictionsList.clear();
            if (mounted) {
              setState(() {
                _isModelBusy = false;
              });
            }
            runModel();
          });
        }
      }
    }
    // Inicia el primer ciclo de predicciones
    performPrediction(0);
  }

  Future<void> loadmodel() async {
    try {
      const modelPath = 'assets/modelo.tflite';
      const labelsPath = 'assets/lbs.txt';

      await Tflite.loadModel(
        model: modelPath,
        labels: labelsPath,
      );

    } catch (e) {
      // Manejar cualquier error que ocurra durante la carga del modelo.
      print('Error al cargar el modelo: $e');
    }
  }

  @override
  void dispose() {
    // Cierra el intérprete de TensorFlow Lite cuando el widget se destruye.
    Tflite.close();
    // También debes liberar otros recursos, como la cámara.
    cameraController?.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gymcore'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: (cameraController != null)
              ? !cameraController!.value.isInitialized
                  ? Container()
                  : AspectRatio(
                      aspectRatio: cameraController!.value.aspectRatio,
                      child: CameraPreview(cameraController!),
                    )
              : Container()
            ),
          ),
          Text(
            output,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      ),
    );
  }
}
