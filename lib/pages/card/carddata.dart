import 'package:get/get.dart';
import 'package:meytrash_mobile/pages/card/cardclass.dart';

class CardBerter extends GetxController {
  List<CardBerpop> items = [
    CardBerpop(
      image: 'assets/images/berter1.png',
      title: 'Indonesia Peringkat 4 Food Waste Terbanyak di Dunia',
      source: 'Kompas.com',
    ),
    CardBerpop(
      image: 'assets/images/berter2.png',
      title: 'Food Waste Indonesia Ke-3 Terbesar Dunia',
      source: 'mediaindonesia.com',
    ),
    CardBerpop(
      image: 'assets/images/berter3.png',
      title: 'Pengalaman Menyelamatkan Makanan agar Tidak',
      source: 'Kompas.com',
    ),
    CardBerpop(
      image: 'assets/images/berter4.png',
      title: 'Indonesia Jadi Penghasil Sampah Makanan terbesar',
      source: 'goodstats.id',
    ),
    CardBerpop(
      image: 'assets/images/berter5.png',
      title: 'Pengalaman Menyelamatkan makanan agar tidak',
      source: 'Kompasiana.com',
    ),
  ].obs;
}
