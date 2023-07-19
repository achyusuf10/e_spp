import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DatePickerService {
  final GetContextFunc getContext;

  DatePickerService(this.getContext);

  Future<DateTime?> pickDate({
    DateTime? initialDate,
    DateTime? firstDate,
  }) async {
    return await showDatePicker(
      context: getContext.exec,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(DateTime.now().year - 30, 1),
      lastDate: DateTime(DateTime.now().year + 6, 1),
    );
  }

  Future<void> pickYear({
    required Function(DateTime dateTime) onChanged,
    required DateTime selectedDate,
  }) async {
    return await showDialog(
      context: getContext.exec,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Pilih Tahun"),
          content: SizedBox(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(2020, 1),
              lastDate: DateTime(DateTime.now().year + 6, 1),
              initialDate: DateTime.now(),
              selectedDate: selectedDate,
              onChanged: onChanged,
            ),
          ),
        );
      },
    );
  }
}
