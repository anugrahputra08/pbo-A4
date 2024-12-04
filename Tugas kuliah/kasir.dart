import 'transaksi.dart';

class Kasir {
  String nama;
  List<Transaksi> daftarTransaksi = [];

  Kasir(this.nama);

  void lakukanTransaksi(Transaksi transaksi) {
    daftarTransaksi.add(transaksi);
  }

  void laporkanPenjualan() {
    double totalPenjualan = 0.0;
    int totalProdukTerjual = 0;

    for (var transaksi in daftarTransaksi) {
      totalPenjualan += transaksi.total;
      totalProdukTerjual += transaksi.keranjang.daftarProduk.length;
    }

    print('--- Laporan Penjualan Toko Anugrah ---');
    print('Total Produk Terjual: $totalProdukTerjual');
    print('Total Pendapatan: Rp.${totalPenjualan}');
    print('-------------------------');
  }
}
