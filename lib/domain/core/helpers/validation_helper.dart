String? validationEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Email is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Invalid Email";
  } else {
    return null;
  }
}

String? validationPasswordUnique(String? value) {
  String pattern = r'^(?=.*\d)(?=.*[a-zA-Z])';
  RegExp regExp = RegExp(pattern);
  if (value!.length < 6) {
    return "Password is too short";
  } else if (!regExp.hasMatch(value)) {
    return "Password must contain at least 1 number and 1 special character";
  } else {
    return null;
  }
}

String? validationPasswordRequired(String? value) {
  if (value!.isEmpty) {
    return "Password is Required";
  }
  return null;
}

String? validationCurrentPassword(String? value, String? password) {
  if (value != password) {
    return "Current password is not correct";
  }
  return null;
}

String? validationKlarIdRequired(String? value) {
  if (value!.isEmpty) {
    return "Klar Id is Required";
  }
  return null;
}

String? validationPasswordMatch(String value, String password) {
  if (value.isEmpty) return 'Password is Empty';
  if (value != password) return 'Password Not Match';
  return null;
}

String? validationName(String? value) {
  String pattern = r'^[a-zA-Z\b- ]+$';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Name is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Name must contain alphabet only";
  }
  return null;
}

String? validationPhone(String? value) {
  String pattern = r'^[Z0-9+]';
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Phone Number is Required";
  } else if (value.length < 4) {
    return "Minimum 4 Characters";
  } else if (value.length > 13) {
    return "Maximum 13 Characters";
  } else if (!regExp.hasMatch(value)) {
    return "Phone Number must contain number only";
  }
  return null;
}

String? validationRequired(String value, String name) {
  if (value.isEmpty) {
    return "$name is Required";
  }
  return null;
}
