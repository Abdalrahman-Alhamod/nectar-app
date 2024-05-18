import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/widgets/custom_elevated_button.dart';

import 'custome_text_field.dart';

class AddItemBottomSheet extends StatelessWidget {
  const AddItemBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                const CustomTextField(
                  hint: 'Name',
                  keyboardType: TextInputType.name,
                ),
                const CustomTextField(
                  hint: 'Description',
                  keyboardType: TextInputType.text,
                ),
                const CustomTextField(
                  hint: 'Price',
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
                CustomTextField(
                  hint: 'Image',
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Transform.flip(
                      flipX: true,
                      child: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                CustomeElevatedButton(onPressed: () {}, title: 'Add Item'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
