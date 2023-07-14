import 'package:dots_e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor.withOpacity(
        0.8,
      ),
      // appBar: PreferredSizeWidget(child: ScanPageAppBar(height: height)),
      body: MobileScanner(
        // fit: BoxFit.contain,
        controller: MobileScannerController(
          detectionSpeed: DetectionSpeed.noDuplicates,
          facing: CameraFacing.back,
          torchEnabled: false,
        ),
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
          }
        },
      ),
    );
  }
}

class ScanPageAppBar extends StatelessWidget {
  const ScanPageAppBar({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: height * Constants.genaralPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.primaryColor,
                border: Border.all(
                  width: 1,
                  color: Constants.primaryScaffoldColor,
                )),
            child: Padding(
              padding: EdgeInsets.all(
                height * Constants.genaralPadding / 1.5,
              ),
              child: const FaIcon(
                FontAwesomeIcons.x,
                color: Constants.primaryScaffoldColor,
              ),
            ),
          ),
          Text(
            "Scan",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Constants.whiteColor,
                ),
          ),
          SizedBox(
            width: height * Constants.genaralPadding * 3,
          ),
        ],
      ),
    );
  }
}
