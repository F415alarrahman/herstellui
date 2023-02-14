const Url = "http://localhost/project/API_HERSTEL";

class NetworkUrl {
  static String registrasi() {
    return "$Url/api/registrasi.php";
  }

  static String login() {
    return "$Url/api/login.php";
  }

  static String getProduk() {
    return "$Url/api/get_produk.php";
  }
}
