import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final RxBool _isLoading = false.obs;
  final Future<void> Function() onSubmit;

  SubmitButton({super.key, required this.title, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(Radius.circular(40.0)),
      ),
      child: ElevatedButton(
        onPressed: () async {
          _isLoading.value = true;
          await onSubmit();
          _isLoading.value = false;
        },
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 16.0),
          ),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
        ),
        child: Obx(
          () => _isLoading.value
              ? SizedBox(
                  height: 24.0,
                  width: 24.0,
                  child: CircularProgressIndicator(
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 0.5),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                )
              : Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 16.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                ),
        ),
      ),
    );
  }
}
