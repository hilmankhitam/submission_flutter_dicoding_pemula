import 'package:submission/models/reviewer_model.dart';

class Hotel{
  String name;
  String location;
  String description;
  String imageUrl;
  double rating;
  List<Reviewer> review;
  bool isFavorite;

  Hotel({
    this.name,
    this.location,
    this.description,
    this.imageUrl,
    this.rating,
    this.review,
    this.isFavorite
  });
}

List<Hotel> hotels = [
  Hotel(
    name: 'Aston Banua Banjarmasin Hotel',
    location: 'Banjarmasin',
    description: 'Bagi para wisatawan yang ingin menjelajahi kota Banjarmasin, Aston Banua - Hotel and Convention Center adalah pilihan yang sempurna. Hotel ini terletak 15 km dari pusat kota dan menyediakan kemudahan akses ke fasilitas-fasilitas penting kota ini. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/aston.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Swiss-belhotel Borneo Banjarmasin',
    location: 'Banjarmasin',
    description: 'Swiss-Belhotel Borneo Banjarmasin adalah hotel internasional pertama yang pernah menghiasi Banjarmasin, ibu kota Kalimantan Selatan. Ideal untuk bisnis dan kesenangan, properti ini terletak sekitar 45 menit dari bandara, dan bangunan hotel langsung menghadap ke Sungai Martapura dan terletak tepat di seberang pusat perbelanjaan.',
    imageUrl: 'assets/images/swiss.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'TreePark Hotel Banjarmasin',
    location: 'Banjarmasin',
    description: 'Bagi para wisatawan yang ingin menjelajahi kota Banjarmasin, TreePark Hotel Banjarmasin adalah pilihan yang sempurna. Hanya 21.7 km dari sini, hotel bintang 3 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/treepark.jpg',
    rating: 3.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Mercure Banjarmasin Hotel',
    location: 'Banjarmasin',
    description: 'Jika apa yang Anda cari adalah hotel yang terletak strategis di Banjarmasin, carilah Mercure Banjarmasin Hotel. Terletak hanya 0 KM dari kehebohan pusat kota, hotel bintang 4 ini memiliki lokasi yang bagus dan menyediakan akses ke obyek wisata terbesar di kota ini. Untuk pilihan lokasi jalan-jalan dan obyek wisata lokal, Anda tidak perlu pergi jauh-jauh karena hotel ini terletak dekat dengan Duta Mall Banjarmasin, Wadai Banjar, Borneo Homestay.',
    imageUrl: 'assets/images/mercure.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Best Western Kindai Hotel',
    location: 'Banjarmasin',
    description: 'Terletak di Pusat Kota Banjarmasin, Best Western Kindai Hotel merupakan tempat yang sempurna untuk menikmati Banjarmasin dan sekitarnya. Dari properti ini, para tamu dapat menikmati akses mudah ke semua hal yang dimiliki oleh kota yang aktif ini. Karena lokasinya yang strategis, properti ini memiliki akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/bestwestern.jpg',
    rating: 3.5,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'G`Sign Hotel Banjarmasin',
    location: 'Banjarmasin',
    description: 'Dirancang untuk wisata bisnis dan plesiran, G`Sign Hotel Banjarmasin terletak strategis di Pusat Kota Banjarmasin, salah satu daerah lokal paling terkenal. Hanya 2. km dari pusat kota, lokasi hotel yang strategis ini memastikan para tamu agar dapat secara cepat dan mudah mencapai ke tempat-tempat menarik. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/gsign.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'pyramid suites Hotel',
    location: 'Banjarmasin',
    description: 'Bagi para wisatawan yang ingin menjelajahi kota Banjarmasin, pyramid suites Hotel adalah pilihan yang sempurna. Dari properti ini, para tamu dapat menikmati akses mudah ke semua hal yang dimiliki oleh kota yang aktif ini. Karena lokasinya yang strategis, properti ini memiliki akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/pyramid.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Aria Barito Hotel',
    location: 'Banjarmasin',
    description: 'Ketika mengunjungi Banjarmasin, Anda akan merasa layaknya di rumah ketika berada di Aria Barito Hotel yang menawarkan akomodasi berkualitas dengan layanan luar biasa. Terletak hanya 10 km dari pusat kota, para tamu berada di tempat strategis untuk menikmati obyek wisata dan aktivitas di kota ini. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/aria.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Golden Tulip Galaxy Hotel Banjarmasin',
    location: 'Banjarmasin',
    description: 'Terletak strategis di Banjarmasin, Golden Tulip Galaxy Hotel Banjarmasin adalah tempat yang luar biasa untuk menelusuri kota yang aktif ini. Terletak hanya 9.7 km dari pusat kota, para tamu berada di tempat strategis untuk menikmati obyek wisata dan aktivitas di kota ini. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/golden.jpg',
    rating: 4.0,
    review: reviewer,
    isFavorite: false
  ),
  Hotel(
    name: 'Favehotel Ahmad Yani Banjarmasin',
    location: 'Banjarmasin',
    description: 'Jika apa yang Anda cari adalah properti yang terletak strategis di Banjarmasin, pilihlah Favehotel Ahmad Yani Banjarmasin. Dengan lokasinya yang hanya 0.5 km dari pusat kota dan 25 km dari bandara, properti bintang 3 ini menarik perhatian banyak wisatawan setiap tahunnya. Karena lokasinya yang strategis, properti ini memiliki akses mudah ke destinasi yang wajib dikunjungi di kota ini.',
    imageUrl: 'assets/images/fave.jpg',
    rating: 3.0,
    review: reviewer,
    isFavorite: false
  ),
];