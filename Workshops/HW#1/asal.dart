void main() {
  // 1'den N'e kadar olan asal sayıları hesaplayan fonksiyon yazınız,
  // fonksiyon parametre olarak aldığı sayıya kadar (N) hesaplama yapacaktır.
  /*
  ASAL SAYILARIN TANIMI :

    
  Asal sayılar, 1 ve kendisinden başka pozitif tam böleni olmayan 1' den büyük
  tamsayılardır. En küçük asal sayı, 2' dir. 2 asal sayısı dışında çift asal sayı yoktur. Yani, 2
  sayısı dışındaki tüm asal sayılar tek sayıdır. Asal sayılar kümesi,
  { 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, … } dir.
   */

  asalHesapla(100);
}

void asalHesapla(int n) {
  List asalSayilar = [];

  for (var i = 1; i <= n; i++) {
    for (var j = 2; j <= i; j++) {
      /*var asalMi = true;
      if (i % j == 0) {
        asalMi = false;
        print("Asal olmayanlar : $i ");
        break;
        
      } */
      var asalMi = true;

      if (i % j == 0 && i != 2) {
        asalMi = false;
        //i asal değilmiş
        break;
      } else if ((asalMi && j + 1 == i) || i == 2) {
        asalSayilar.add(i);
      }
    }
  }
  print(asalSayilar);
}
