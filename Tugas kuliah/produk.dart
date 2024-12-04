class Produk {
  String nama;
  double harga;
  int stok;

  Produk(this.nama, this.harga, this.stok);

  void tambahStok(int jumlah) {
    stok += jumlah;
    print('$jumlah ${nama} ditambahkan ke stok.');
  }

  bool kurangiStok(int jumlah) {
    if (stok >= jumlah) {
      stok -= jumlah;
      return true;
    }
    return false;
  }
}
