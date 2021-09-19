import 'package:form_field_validator/form_field_validator.dart';

class NotMatchValidator extends TextFieldValidator {
  final String stringToMatch;
  NotMatchValidator(String errorText, this.stringToMatch) : super(errorText);

  @override
  bool isValid(String? value) {
    return value != stringToMatch;
  }
}