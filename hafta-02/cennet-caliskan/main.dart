
double average({required double midterm, double? finalExam}) {
  double gecerliFinal = finalExam ?? 0.0; // Final girilmezse 0 kabul et
  return (midterm * 0.4) + (gecerliFinal * 0.6);
}


String letterGrade(double avg) {
  return switch (avg) {
    >= 90 => 'AA',
    >= 85 => 'BA',
    >= 80 => 'BB',
    >= 75 => 'CB',
    >= 70 => 'CC',
    >= 65 => 'DC',
    >= 60 => 'DD',
    >= 50 => 'FD',
    _ => 'FF',
  };
}


bool isPassing(double avg) {
  return avg >= 60;
}


void main() {
  void ogrenciYazdir(String? ad, double vize, double? finalNotu) {
    String gecerliAd = ad ?? "İsimsiz Öğrenci";
    double ort = average(midterm: vize, finalExam: finalNotu);
    String harf = letterGrade(ort);

    print("$gecerliAd - Ortalama: $ort - Harf Notu: $harf");
  }

  print("--- ÖĞRENCİ NOTLARI ---");
  ogrenciYazdir("Ahmet", 70, 80);
  ogrenciYazdir("Ayşe", 95, 90);
  ogrenciYazdir("Mehmet", 45, 50);
  ogrenciYazdir("Fatma", 60, 60);
  ogrenciYazdir(null, 85, null); // Adı ve finali girilmeyen (null) test öğrencisi
}