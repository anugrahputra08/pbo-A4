import 'keranjang.dart';

class Transaksi {
  DateTime tanggal;
  Keranjang keranjang;
  double total;

  Transaksi(this.tanggal, this.keranjang) : total = keranjang.total;

  void cetakStruk() {
    print('Tanggal: ${tanggal.toLocal()}');
    keranjang.cetakStruk();
  }
}
