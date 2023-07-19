import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SnackbarService {
  final GetContextFunc getContext;
  SnackbarService(this.getContext);

  void show(
    String message, {
    SnackBarAction? action,
    int durationInMilliSecond = 1500,
  }) {
    final snackBar = SnackBar(
      content: Text(message),
      action: action,
      duration: Duration(milliseconds: durationInMilliSecond),
    );
    ScaffoldMessenger.of(getContext.exec).showSnackBar(snackBar);
  }
}
