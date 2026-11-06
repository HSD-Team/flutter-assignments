class Member {
  final String ad;
  final String bolum;

  Member({required this.ad, required this.bolum});

  @override
  String toString() {
    return 'Üye: $ad, Bölüm: $bolum';
  }
}

class Announcement {
  final String baslik;
  final String metin;
  final String tarih;

  Announcement({required this.baslik, required this.metin, required this.tarih});

  @override
  String toString() {
    return 'Duyuru: $baslik - $metin (Tarih: $tarih)';
  }
}

class Event {
  final String baslik;
  final String tarih;
  final int kontenjan;
  final int kayitliSayisi;


  const Event({
    required this.baslik,
    required this.tarih,
    required this.kontenjan,
    this.kayitliSayisi = 0,
  });


  Event copyWith({
    String? baslik,
    String? tarih,
    int? kontenjan,
    int? kayitliSayisi,
  }) {
    return Event(
      baslik: baslik ?? this.baslik,
      tarih: tarih ?? this.tarih,
      kontenjan: kontenjan ?? this.kontenjan,
      kayitliSayisi: kayitliSayisi ?? this.kayitliSayisi,
    );
  }


  Event register() {
    if (kayitliSayisi >= kontenjan) {
      throw StateError('Kontenjan dolu');
    }

    return copyWith(kayitliSayisi: kayitliSayisi + 1);
  }

  @override
  String toString() {
    return 'Etkinlik: $baslik ($tarih) | Kayıt Durumu: $kayitliSayisi/$kontenjan';
  }
}

void main() {

  final uye = Member(ad: 'Cennet Çalışkan', bolum: 'Tarım Makineleri');
  print(uye.toString());

  final duyuru = Announcement(
      baslik: 'İlk Toplantı',
      metin: 'Tanışma toplantısı yapılacaktır.',
      tarih: '10 Kasım'
  );
  print(duyuru.toString());

  print('\--- Etkinlik Kayıt Testi  ---');


  Event etkinlik = Event(
    baslik: 'Flutter Atölyesi',
    tarih: '15 Kasım',
    kontenjan: 2,
  );

  print('Başlangıç: $etkinlik');

  try {

    etkinlik = etkinlik.register();
    print('1. Kayıt sonrası: $etkinlik');


    etkinlik = etkinlik.register();
    print('2. Kayıt sonrası: $etkinlik');


    etkinlik = etkinlik.register();
    print('3. Kayıt sonrası: $etkinlik');
  } catch (e) {

    print('Hata Yakalandı: $e');
  }
}