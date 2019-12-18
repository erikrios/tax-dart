import 'dart:io';

main() {
  double penghasilan;
  double pajak = 0;

  stdout.write('Masukkan penghasilan Anda : ');
  penghasilan = double.parse(stdin.readLineSync());

  if (penghasilan < 0) {
    print("Data penghasilan yang dimasukkan tidak valid");
  } else {
    if (penghasilan <= 1000000) {
      pajak = 0;

      if (penghasilan < 500000) {
        print(
            "Anda mendapat biaya bantuan sebesar ${50.0 / 100 * penghasilan}");
      }
    } else if (penghasilan > 1000000 && penghasilan <= 5000000) {
      pajak = 10.0 / 100 * penghasilan;
    } else if (penghasilan > 5000000 && penghasilan <= 15000000) {
      pajak = 15.0 / 100 * penghasilan;
    } else {
      pajak = 18.0 / 100 * penghasilan;
    }
    print("Penghasilan Anda sebesar $penghasilan dan Anda wajib membayar pajak sebesar $pajak");
  }
}
