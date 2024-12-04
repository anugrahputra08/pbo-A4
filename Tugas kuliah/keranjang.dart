import 'produk.dart';

class Keranjang {
  List<Produk> daftarProduk = [];
  double total = 0.0;

  void tambahProduk(Produk produk, int jumlah) {
    if (produk.kurangiStok(jumlah)) {
      daftarProduk.add(produk);
      total += produk.harga * jumlah;
      print('${produk.nama} ditambahkan ke keranjang.');
    } else {
      print('Stok tidak cukup untuk ${produk.nama}.');
    }
  }

  void hapusProduk(Produk produk) {
    if (daftarProduk.contains(produk)) {
      daftarProduk.remove(produk);
      total -= produk.harga;
      print('${produk.nama} dihapus dari keranjang.');
    } else {
      print('${produk.nama} tidak ada dalam keranjang.');
    }
  }

  void hitungTotal() {
    total = 0.0;
    for (var produk in daftarProduk) {
      total += produk.harga;
    }
  }

  void cetakStruk() {
    print('--- Struk Pembelian ---');
    for (var produk in daftarProduk) {
      print('${produk.nama} - Rp.${produk.harga}');
    }
    print('Total: Rp.${total}');
    print('--- Terima Kasih ---');
  }
}
