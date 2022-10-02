class ValidationErrors {
  //name
  static const nameEmpty = 'Full Name cannot be empty';
  static const nameInvalidChars =
      'Full Name contains invalid characters. valid characters (A-Z-a-z)';

  //name

  //email

  static const emailEmpty = 'Email cannot be empty';
  static const emailNotValid =
      'Email Format is invalid. Please enter a valid email';
  //email

  //password

  static const passwordEmpty =
      'Password cannot be empty. Please enter your password';
  static const passwordNotValid = 'Password must be atleast 6 characters';
  //password

  //confirm password

  static const confirmPasswordEmpty =
      'Confirm Password cannot be empty. Please set your  password to proceed';
  static const confirmPasswordNotMatching = 'Passwords Dont Match';
  //confirm password

}
