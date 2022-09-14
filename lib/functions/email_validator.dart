class EmailValidator{
  static String? validateEmail(String email){
    if(email.isEmpty){
      return "Require Field";
    }
    String pattern = 
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if(!regExp.hasMatch(email)){
      return "Please enter a valid email format";
    }
  }

  static String? validatePassword(String password){
    if(password.isEmpty){
      return "Require Field";
    }
    if(password.length < 8){
      return "Please enter at least 8 characters of your password";
    }
  }
}