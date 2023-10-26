import 'dart:io';

void main() {
  int sayi = sayiAl();

  faktoriyel(sayi); //Değer döndüren fonksiyon çağırıldı

  int sonuc = faktoriyel(sayi);
  print("Sonuç : $sonuc"); //Döndürülen değer yazdırıldı
}

int sayiAl() {
  print("Sayı giriniz : ");
  int girilenSayi = int.parse(stdin.readLineSync()!);
  return girilenSayi;
}

int faktoriyel(int alinanSayi) {
  int sonuc = 1;
  int n = alinanSayi;
  for (var a = 1; a <= n; a = a + 1) {
    sonuc = sonuc * a;
  }

  return sonuc;
}
