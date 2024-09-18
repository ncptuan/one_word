// import 'dart:io';
// import 'dart:typed_data';

// import 'package:file_picker/file_picker.dart';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';

// class Utils {
//   static void dismissKeyboard(BuildContext context) =>
//       FocusScope.of(context).requestFocus(FocusNode());
// }

// extension StringExt on String {
//   String trimMiddleSpace() => replaceAll(RegExp('\\s+'), ' ');
// }

// class ImageUtils {
//   const ImageUtils._();

//   // static PlatformFile resizeImage(PlatformFile file) {
//   //   var maxWidth = 1024;
//   //   var bytes = file.bytes!.toList();
//   //   switch (file.extension) {
//   //     case 'png':
//   //       var source = decodePng(bytes);
//   //       if (source!.width > maxWidth) {
//   //         source = copyResize(source, width: maxWidth);
//   //       }
//   //       final output = Uint8List.fromList(encodePng(source));
//   //       return PlatformFile(
//   //           name: file.name, size: output.lengthInBytes, bytes: output);
//   //     case 'jpg':
//   //     case 'jpeg':
//   //     default:
//   //       var source = decodeJpg(bytes);
//   //       if (source!.width > maxWidth) {
//   //         source = copyResize(source, width: maxWidth);
//   //       }
//   //       final output = Uint8List.fromList(encodeJpg(source, quality: 50));
//   //       return PlatformFile(
//   //           name: file.name, size: output.lengthInBytes, bytes: output);
//   //   }
//   // }

//   // static Uint8List readImage(PlatformFile file) {
//   //   var maxWidth = 1024;
//   //   var bytes = file.bytes!.toList();
//   //   switch (file.extension) {
//   //     case 'png':
//   //       var source = decodePng(bytes);
//   //       if (source!.width > maxWidth) {
//   //         source = copyResize(source, width: maxWidth);
//   //       }
//   //       final output = Uint8List.fromList(encodePng(source));
//   //       return output;
//   //     case 'jpg':
//   //     case 'jpeg':
//   //     default:
//   //       var source = decodeJpg(bytes);
//   //       if (source!.width > maxWidth) {
//   //         source = copyResize(source, width: maxWidth);
//   //       }
//   //       final output = Uint8List.fromList(encodeJpg(source, quality: 50));
//   //       return output;
//   //   }
//   // }

//   static Future<PlatformFile?> pickImage() async {
//     await Permission.storage.request();
//     PermissionStatus status = await Permission.photos.request();
//     if (status.isGranted) {
//       FilePickerResult? result = await FilePicker.platform
//           .pickFiles(type: FileType.image, withData: true);
//       if (result != null) {
//         final file = result.files.single;
//         if (kIsWeb) return file;
//         final bytes = await File(file.path!).readAsBytes();
//         final platformFile = PlatformFile(
//             name: file.name, size: bytes.length, bytes: bytes, path: file.path);
//         return platformFile;
//       } else {
//         return null;
//       }
//     } else if (status.isDenied) {
//       // Permission denied
//     } else if (status.isPermanentlyDenied) {
//       // Permission permanently denied, navigate to app settings
//       await openAppSettings();
//     }
//     return null;
//   }

//   static Future<PlatformFile?> pickSVGImage() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['svg'],
//     );
//     if (result != null) {
//       final file = result.files.single;
//       if (kIsWeb) return file;
//       final bytes = await File(file.path!).readAsBytes();
//       final platformFile =
//           PlatformFile(name: file.name, size: bytes.length, bytes: bytes);
//       return platformFile;
//     } else {
//       return null;
//     }
//   }

//   static Future<PlatformFile?> pickVideo() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.video,
//     );
//     if (result != null) {
//       final file = result.files.single;
//       if (kIsWeb) return file;
//       final bytes = await File(file.path!).readAsBytes();
//       final platformFile = PlatformFile(
//         name: file.name,
//         size: bytes.length,
//         bytes: bytes,
//         path: file.path,
//       );
//       return platformFile;
//     } else {
//       return null;
//     }
//   }
// }

// class ExcelUtils {
//   static Future<PlatformFile?> pickExcel() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['xlsx', 'csv'],
//     );
//     if (result != null) {
//       final file = result.files.single;
//       if (kIsWeb) return file;
//       final bytes = await File(file.path!).readAsBytes();
//       final platformFile = PlatformFile(
//         name: file.name,
//         size: bytes.length,
//         bytes: bytes,
//         path: file.path,
//       );
//       return platformFile;
//     } else {
//       return null;
//     }
//   }

//   // static Future<bool> downloadFileExcel(
//   //     Uint8List bytes, String nameFile) async {
//   //   try {
//   //     MimeType type = MimeType.MICROSOFTEXCEL;
//   //     if (kIsWeb) {
//   //       await FileSaver.instance
//   //           .saveFile(nameFile, bytes, 'xlsx', mimeType: type);
//   //       return true;
//   //     }
//   //     if (Platform.isIOS || Platform.isAndroid || Platform.isMacOS) {
//   //       if (await PermissionHelper.requestPermission(Permission.storage)) {
//   //         await FileSaver.instance.saveAs(nameFile, bytes, 'xlsx', type);
//   //         return true;
//   //       }
//   //     }
//   //     return false;
//   //   } catch (e) {
//   //     return false;
//   //   }
//   // }
// }
