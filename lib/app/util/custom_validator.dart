import 'package:form_field_validator/form_field_validator.dart';

class StringMatcherValidator extends TextFieldValidator {
  final String stringToMatch;
  StringMatcherValidator(String errorText, this.stringToMatch) : super(errorText);

  @override
  bool isValid(String? value) {
    return value == stringToMatch;
  }
}
