## GridView widgeti

Flutter'da kullanılan bir bileşen olan GridView.builder, satır ve sütunlardan oluşan bir ızgara görünümü sağlar ve içindeki verileri dinamik olarak oluşturmanıza ve düzenlemenize olanak tanır.

GridView.builder, verileri bağlayarak dinamik olarak oluşturmanıza imkan sağlayan bir yapıdır. Bu özellik, verileri istediğiniz zaman yükleyebilmenize ve ekranda görünen öğeleri sınırlayabilmenize olanak tanır. Özellikle büyük veri listeleriyle çalışırken performans açısından önemli avantajlar sunar.

Bu yapı, aşağıdaki parametreleri alır:

- `itemCount`: Oluşturulacak öğe sayısı.
- `itemBuilder`: Her bir öğenin nasıl oluşturulacağını belirten bir fonksiyon. Bu fonksiyon, her bir öğe için bir indeks ve bağlantılı Widget’i döndürmelidir.
- `gridDelegate`: GridView’in ızgara düzenini belirleyen bir delegate. Örneğin, `GridDelegateWithFixedCrossAxisCount` sınıfını kullanarak sütun sayısını ve öğeler arasındaki boşlukları ayarlayabilirsiniz.

Örnek kullanım:

```dart
GridView.builder(
  itemCount: items.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // İki sütunlu bir ızgara
    mainAxisSpacing: 10.0, // Ana eksen aralığı
    crossAxisSpacing: 10.0, // Çapraz eksen aralığı
  ),
  itemBuilder: (BuildContext context, int index) {
    return YourItemWidget(item: items[index]); // Her bir öğe için widget oluşturma
  },
)
```

Bu örnek, `items` adındaki bir liste ile GridView'i doldurur ve her bir öğe için `YourItemWidget` adındaki bir Widget döndürür.

GridView.builder, veri kaynağından gelen verilere göre otomatik olarak öğeleri oluşturmanıza ve sınırlı bir ekranda veri listeleri oluşturmanın etkili bir yolunu sunar.

## Google Fonts

Flutter, arayüz tasarımları, animasyonları, kullanım kolaylığı, geliştirme hızı ve performansıyla mobil uygulama geliştiricileri arasında birinci tercih haline gelmiştir. Flutter, özel font kullanımına izin vererek uygulamalara kişiselleştirilmiş bir dokunuş eklemenize olanak tanır. Özel font kullanımı, geliştiricilere uygulamalarında özgün ve çığır açıcı bir görünüm kazandırma fırsatı sunar. Peki, bu işlem nasıl gerçekleştirilir? İşte adım adım anlatım:

**Adım 1: Font Seçimi**
İlk adım, uygulamaya uygun, okunaklı ve hoş bir yazı fontu seçmektir. Google Fonts, geniş bir font koleksiyonuna erişim sağlar ve seçtiğiniz fontu kolayca indirip uygulamanızda kullanmanıza olanak tanır. Örneğin, 'Cinzel' font ailesini seçebilir ve indirebilirsiniz.

**Adım 2: Font Dosyasını Aktarma**
Font dosyasını projeye eklemek için, projenin dosya yapısında önceden hazırlıklar yapmak gereklidir. 'assets' adında bir klasör oluşturup içine 'fonts' adında bir alt klasör eklenir. İndirilen 'Cinzel' font dosyası bu 'fonts' klasörüne eklenir.

**Adım 3: Fontu Flutter'a Tanıtma**
Fontu Flutter'a tanıtmak için `pubspec.yaml` dosyasını düzenlemek gerekir. Bu dosyada `fonts` başlığını kullanarak fontun ailesini ve dosya yolunu belirtiriz. Bu işlemden sonra `pub get` komutu ile bağımlılıkları güncelleriz.

Örneğin:

```yaml
fonts:
  - family: Cinzel
    fonts:
      - asset: assets/fonts/Cinzel-Medium.ttf
```

**Adım 4: Fontu Kullanma**
Artık tanıtılan fontu uygulama içinde kullanabiliriz. `TextStyle` özelliğinde `fontFamily` özelliğini belirleyerek, ilgili fontu kullanabiliriz. Bu sayede `Text` widget'ları içinde belirtilen metinler seçilen özel fonta sahip olur.

```dart
Text(
  'SYNTA-X.COM',
  style: TextStyle(
    fontFamily: 'Cinzel',
    color: Colors.white,
    fontSize: 55,
  ),
),
```

Bu adımları takip ederek, Flutter'da özel font kullanımını başarıyla gerçekleştirebilirsiniz.

## Container widget'i içerisinde Decorationlar, gradient vs..

Flutter Container Widget, sayfa üzerindeki konumu, boyutu ve görünümü özelleştirmek için kullanılan bir widget'tır. Bu widget, içine konulan diğer widget'ların düzenini ve stilini kontrol etmek için kullanılır. İşte Flutter Container Widget'ının özellikleri:

1. **child:** Container içine konulan widget'ı belirtir. Bu, Container'ın içeriğini oluşturur.

2. **color:** Container'ın arka plan rengini belirtir.

3. **height:** Container'ın yüksekliğini belirtir.

4. **width:** Container'ın genişliğini belirtir.

5. **margin:** Container'ın dış boşluğunu, diğer öğeler ile arasındaki boşluğu ayarlar.

6. **padding:** Container'ın iç boşluğunu, içerideki öğeler ile kenarları arasındaki boşluğu ayarlar.

7. **alignment:** Container içindeki widget'ın konumunu ayarlar.

8. **decoration:** Container'ı dekore eder, kenarlık gibi özellikleri ayarlar.

9. **transform:** Container'ı döndürme ve ölçeklendirme gibi dönüşümler uygulamak için kullanılır.

Bu özellikler sayesinde Flutter Container Widget, sayfa düzenini ve stilini özelleştirmek için oldukça esnek bir yapı sunar. Örneğin, bir metin kutusunu veya resmi içeren bir Container oluşturabilir ve bu Container'ı sayfanın istediğiniz konumuna yerleştirebilirsiniz.

### Inkwell Classı

InkWell, dokunma ve tıklama gibi kullanıcı etkileşimlerini destekler ve bu etkileşimlere mürekkep dalgası efekti ekler.

onTap: InkWell widget'ı üzerine tıklandığında çalışacak olan fonksiyonu belirtir.

onDoubleTap: InkWell widget'ı üzerine çift tıklandığında çalışacak olan fonksiyonu belirtir.

hoverColor: InkWell widget'ı üzerine gelindiğinde (hover) arka plan rengini belirtir.

Bu özellikler, kullanıcının butonla etkileşime geçtiği farklı durumları ele almanıza olanak tanır.

Ayrıca, örneğinizde Scaffold.of(context).showSnackBar kullanarak bir snackbar gösterimi de eklenmiş. Bu, butona tıklandığında ekranda geçici bir bilgi göstermek için kullanışlı bir yöntemdir.

## Kaynaklar

https://kodyazar.com/flutter-gridview-kullanimi/

https://synta-x.com/flutter-ile-yapilmis-olan-bir-uygulamaya-nasil-font-eklenir/

https://www.yazilimdili.net/flutter-programlama/flutter-widget-class-sinif/flutter-container-widget-class-nedir/#:~:text=Flutter%20Container%20Widget%20Nedir%3F,bir%20widget't%C4%B1r%2C%20s%C4%B1n%C4%B1ft%C4%B1r.

https://oabasaran.medium.com/flutterda-inkwell-ile-widget-lara-t%C4%B1klanma-dokunma-%C3%B6zelli%C4%9Fi-kazand%C4%B1rma-cookbook-serisi-a7ba41dad41a
