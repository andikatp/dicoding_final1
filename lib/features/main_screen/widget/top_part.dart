import 'package:flutter/material.dart';

Container topPart(BuildContext context, void Function(String nama) searchData) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 70)
        .copyWith(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'What is in your kitchen?',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          'Enter some food names',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
        ),
        const SizedBox(height: 30),
        TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          onChanged: (value) => searchData(value.toLowerCase()),
          decoration: InputDecoration(
            fillColor: const Color(0xFFF1F1F1),
            filled: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Theme.of(context).primaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Theme.of(context).primaryColor)),
            hintText: 'What do you want to eat?',
            prefixIcon: const Icon(Icons.search),
          ),
        )
      ],
    ),
  );
}
