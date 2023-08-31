class AppLink {

  static const String server = "https://unbolted-medicines.000webhostapp.com/php" ;


  static const String imagesstatic = "$server/upload" ;
  static const String imagestCategories = "$imagesstatic/categories" ;
  static const String imagestItems = "$imagesstatic/items" ;


  static const String test = "$server/test.php" ;

  // ==================== Auth ==========================//
  static const String signup = "$server/auth/signup.php" ;
  static const String login = "$server/auth/login.php" ;
  static const String verfiycodesignup = "$server/auth/verfiycode.php" ;

  // ==================== forgetpassword ==========================//
  static const String checkemail = "$server/forgetpassword/checkemail.php" ;
  static const String resetpassword = "$server/forgetpassword/resetpassword.php" ;
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php" ;


  // ==================== home page ==========================//
  static const String homepage = "$server/home.php" ;

  // ==================== items page ==========================//
  static const String items = "$server/items/items.php" ;


}