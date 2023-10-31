import 'dart:ffi';
import 'dart:io';
import 'dart:math';

//var girilenSayi = 407;
int girilenSayi = 4679307774;

void main() {
  sonucYazdir();
}

int basamakSayisi() {
  int N = girilenSayi;
  int basamakSayisi = 1;
  for (int a = 1; 1 <= N / pow(10, a); a++) {
    basamakSayisi++;
  }
  //print(basamakSayisi);
  return basamakSayisi;
}

List basamaktakiRakamlar() {
  int islenecekSayi = girilenSayi;

  List sayidakiRakamlar = [];
  for (int a = basamakSayisi() - 1; a >= 0; a--) {
    int basamaktakiRakam = islenecekSayi ~/ pow(10, a);
    sayidakiRakamlar.add(basamaktakiRakam);
    islenecekSayi = islenecekSayi - (basamaktakiRakam * pow(10, a).toInt());
  }

  return sayidakiRakamlar;
}

int kiyaslanacakSayi() {
  int kiyaslanacakSayi = 0;

  basamaktakiRakamlar().forEach((element) {
    kiyaslanacakSayi =
        kiyaslanacakSayi + pow(element, basamaktakiRakamlar().length).toInt();
  });

  return kiyaslanacakSayi;
}

bool armstrongSayisiMi() {
  if (girilenSayi == kiyaslanacakSayi()) {
    return true;
  } else {
    return false;
  }
}

void sonucYazdir() {
  if (armstrongSayisiMi()) {
    print(girilenSayi.toString() + " " + "Armstrong sayısıdır.");
  } else {
    print(girilenSayi.toString() + " " + "Armstrong sayısı değildir");
  }
}
