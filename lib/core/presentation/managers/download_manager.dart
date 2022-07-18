library download_manager.dart;

import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';

class DownloadManager {
  static const String _sendPortName = 'download_manager_send_port';

  static const String id = 'download_id';
  static const String progress = 'download_progress';
  static const String status = 'download_status';

  final ReceivePort _port;

  DownloadManager._(this._port);

  Future<void> cancel(String id) async => await FlutterDownloader.cancel(taskId: id);

  Future<void> cancelAll() async => await FlutterDownloader.cancelAll();

  static DownloadManager configure() {
    final port = ReceivePort();

    IsolateNameServer.registerPortWithName(port.sendPort, _sendPortName);
    FlutterDownloader.registerCallback(downloadCallback);

    return DownloadManager._(port);
  }

  @disposeMethod
  void dispose() {
    IsolateNameServer.removePortNameMapping(_sendPortName);
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String _id, DownloadTaskStatus _status, int _progress) {
    final send = IsolateNameServer.lookupPortByName(_sendPortName);
    send?.send({id: _id, status: _status, progress: _progress});
  }

  Future<String?> enqueue(
    String url, {
    required String destination,
    String? fileName,
    Map<String, String>? headers,
    bool showNotification = kDebugMode,
    bool openFileFromNotification = false,
    bool requiresStorageNotLow = true,
    bool saveInPublicStorage = false,
  }) async {
    return await FlutterDownloader.enqueue(
      url: url,
      savedDir: destination,
      fileName: fileName,
      headers: headers,
      showNotification: showNotification,
      openFileFromNotification: openFileFromNotification,
      requiresStorageNotLow: requiresStorageNotLow,
      saveInPublicStorage: saveInPublicStorage,
    );
  }

  void listen(void Function(dynamic) onData, {void Function()? onError, void Function()? onDone, bool? cancelOnError}) =>
      _port.listen(onData, onError: onError, onDone: onDone, cancelOnError: cancelOnError);

  Future<List<DownloadTask>?> loadTasks() async => await FlutterDownloader.loadTasks();

  Future<bool> open(String id) async => await FlutterDownloader.open(taskId: id);

  Future<void> pause(String id) async => await FlutterDownloader.pause(taskId: id);

  Future<void> remove(String id, {bool shouldDeleteContent = false}) async =>
      await FlutterDownloader.remove(taskId: id, shouldDeleteContent: shouldDeleteContent);

  Future<String?> resume(String id) async => await FlutterDownloader.resume(taskId: id);

  Future<String?> retry(String id, {bool requiresStorageNotLow = true}) async =>
      await FlutterDownloader.retry(taskId: id, requiresStorageNotLow: requiresStorageNotLow);
}
