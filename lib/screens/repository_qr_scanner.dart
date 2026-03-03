import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class RepositoryQRScanner extends StatefulWidget {
  final Function(String url) onScan;

  const RepositoryQRScanner({super.key, required this.onScan});

  @override
  State<RepositoryQRScanner> createState() => _RepositoryQRScannerState();
}

class _RepositoryQRScannerState extends State<RepositoryQRScanner> {
  late MobileScannerController _cameraController;
  bool _isProcessing = false;

  @override
  void initState() {
    super.initState();
    _cameraController = MobileScannerController(
      formats: [BarcodeFormat.qrCode],
      torchEnabled: false,
      returnImage: false,
    );
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  bool _isValidUrl(String text) {
    try {
      Uri.parse(text);
      return text.startsWith('http://') || text.startsWith('https://');
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scan')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                MobileScanner(
                  tapToFocus: true,
                  controller: _cameraController,
                  onDetect: (capture) {
                    if (_isProcessing) return;

                    final List<Barcode> barcodes = capture.barcodes;
                    print(
                      '[QR Scanner] Detected ${barcodes.length} barcode(s)',
                    );
                    for (final barcode in barcodes) {
                      final String? rawValue = barcode.rawValue;
                      print(
                        '[QR Scanner] Barcode value: $rawValue, type: ${barcode.format}',
                      );
                      if (rawValue != null && _isValidUrl(rawValue)) {
                        print('[QR Scanner] Valid URL detected: $rawValue');
                        _isProcessing = true;

                        // Close the QR scanner page first
                        Navigator.pop(context);

                        // Then trigger the callback to show the Add Repository dialog
                        // This ensures we're back on the repositories_screen before showing the dialog
                        Future.delayed(const Duration(milliseconds: 100), () {
                          widget.onScan(rawValue);
                        });

                        return;
                      } else if (rawValue != null) {
                        print('[QR Scanner] Invalid URL format: $rawValue');
                      }
                    }
                  },
                ),
                // Overlay with scanning frame and instructions
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          'Point camera at QR code',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.5),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            'Tap keyboard to enter URL manually',
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.5,
                                      ),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
