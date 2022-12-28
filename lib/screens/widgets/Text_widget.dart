import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget usernametextfield(
    {required String name,
    TextEditingController? Controller,
    required double gap}) {
  return Padding(
    padding: EdgeInsets.all(gap),
    child: TextFormField(
      controller: Controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: name,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter any number";
        } else {
          return null;
        }
      },
    ),
  );
}

Widget passwordtextfield({
  required String label,
  required double paddingvalue,
  TextEditingController? Controller,
}) {
  return Padding(
    padding: EdgeInsets.all(paddingvalue),
    child: TextFormField(
      obscureText: true,
      controller: Controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter any number";
        } else {
          return null;
        }
      },
    ),
  );
}

Widget textfield(
    {required String name,
    TextEditingController? Controller,
    required double gap}) {
  return Padding(
    padding: EdgeInsets.all(gap),
    child: TextFormField(
      controller: Controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: name,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter any number";
        } else {
          return null;
        }
      },
    ),
  );
}

Widget datepicker(
    {required BuildContext context,
    required TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Year/Months/day",
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(), //get today's date
              firstDate: DateTime(1960),
              lastDate: DateTime.now());
          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

            controller.text = formattedDate;
          } else {
            print("Date is not selected");
          }
        }),
  );
}
