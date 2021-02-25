import 'package:flutter/material.dart';
import 'package:quotes_app/detail/detail_hidup.dart';
import 'package:quotes_app/widget/hidup_bar.dart';

class HidupPage extends StatefulWidget {
  @override
  _HidupPageState createState() => _HidupPageState();
}

class _HidupPageState extends State<HidupPage> {
  List<String> titleHidup = [
    "Berhenti Menyalahkan Segalanya",
    "Ambil Risiko, Bermimpi Lebih Besar, dan Berharap Besar",
    "Kerjakan dengan Lebih dan Sepenuh Hati",
    "Lakukan Apa yang Membuatmu Bahagia",
    "Jangan Pernah Menyerah Apapun yang Terjadi",
    "Syukuri dan Hargai Hal-Hal yang Anda Miliki",
    "Nikmati dan Hargai Perubahan dalam Kehidupan",
    "Keraguan adalah Musuh Terbesar dalam Meraih Mimpi",
    "Memaafkan Membuat Anda Menjadi Pribadi yang Semakin Kuat",
    "Selalu Lakukan Perubahan Kecil ke Arah yang Lebih Baik",
  ];
  List<String> subHidup = [
    "Tindakan menyalahkan hanya akan membuang waktu. Sebesar apapun kesalahan yang Anda timpakan ke orang lain, dan sebesar apapun Anda menyalahkannya, hal tersebut tidak akan mengubah Anda",
    "Ambillah risiko yang lebih besar dari apa yang dipikirkan orang lain aman. Berilah perhatian lebih dari apa yang orang lain pikir bijak. Bermimpilah lebih dari apa yang orang lain pikir masuk akal",
    "Ia yang mengerjakan lebih dari apa yang dibayar pada suatu saat akan dibayar lebih dari apa yang ia kerjakan",
    "Jangan tanyakan pada diri Anda apa yang dibutuhkan dunia. Bertanyalah apa yang membuat Anda hidup, kemudian kerjakan. Karena yang dibutuhkan dunia adalah orang yang antusias",
    "Janganlah pernah menyerah ketika Anda masih mampu berusaha lagi. Tidak ada kata berakhir sampai Anda berhenti mencoba",
    "Kami Tidak Pernah Kekurangan Uang Kami Kekurangan Orang Dengan Mimpi Siapa yg bisa mati Dengan Mimpi Itu?",
    "Perubahan itu menyakitkan, Ia menyebabkan orang merasa tidak aman, bingung, dan marah. Orang menginginkan hal seperti sediakala, karena mereka ingin hidup yang mudah",
    "Satu-satunya batasan untuk meraih mimpi kita adalah keragu-raguan kita akan hari ini. Marilah kita maju dengan keyakinan yang aktif dan kuat",
    "Orang yang lemah tidak mampu memaafkan. Memaafkan adalah ciri orang yang kuat",
    "Kembangkan sikap untuk selalu menjadi lebih baik. Membuat perbedaan yang kecil dalam tindakan akan menghasilkan perbedaan yang besar dalam hasil yang diperoleh",
  ];
  List<String> sourceHidup = [
    "Wayne Dyer",
    "Claude T. Bissell",
    "Napoleon Hill",
    "Harold Whitman",
    "Brian Dyson",
    "Jack ma",
    "Richard Marcinko.",
    "Franklin Roosevelt",
    "Mahatma Gandhi",
    "Brian Tracy"
  ];
  List<String> imgHidup = [
    "https://www.dymocks.com.au/getmedia/c52827ac-4d7a-49d7-8fde-44ed57f2dc05/wayne-dyer.jpg.aspx?width=400&height=600&ext=.jpg"
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0OAsgtlhr4G0HYW6BM9nx9RcIKG9N7hT0SA&usqp=CAU"
        "https://upload.wikimedia.org/wikipedia/commons/7/75/Napoleon_Hill_headshot.jpg"
        "https://dux7id0k7hacn.cloudfront.net/as/assets-mem-com/cmi/9/3/1/4/5794139/20131230_105848365_0_orig.jpg/-/harold-whitman-new-iberia-la-obituary.jpg"
        "https://e8x4d3t2.rocketcdn.me/wp-content/uploads/2013/09/Brian-Dyson-1.jpg"
        "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5e75465a10380d0006bdcb9f%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1089%26cropX2%3D2195%26cropY1%3D4%26cropY2%3D1109"
        "https://upload.wikimedia.org/wikipedia/en/f/fd/Richard_Marcinko_LCDR_US_Navy.jpg"
        "https://cdn.britannica.com/s:800x450,c:crop/28/172728-138-6FCE9343/overview-Franklin-D-Roosevelt.jpg"
        "https://static.toiimg.com/photo/71402733.cms"
        "https://s3.amazonaws.com/media.briantracy.com/about/brian-about.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: hidupBar(),
      body: Container(
        child: ListView.builder(
            itemCount: titleHidup.length,
            itemBuilder: (BuildContext context, int index) {
              final hidup = titleHidup[index].toString();
              final subsHidup = subHidup[index].toString();
              final namaHidup = sourceHidup[index].toString();
              final backHidup = imgHidup[index].toString();
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 200.0,
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      background(backHidup),
                      Container(
                        child: topContent(hidup, subsHidup, namaHidup),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeatilHidup(
                                  itemNamaHidup: hidup,
                                  itemSubHidup: subsHidup,
                                  itemSourceHidup: namaHidup,
                                  itemImgHidup: backHidup,
                                )));
                  },
                ),
              );
            }),
      ),
    );
  }

  background(String backHidup) {
    return new Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(backHidup)),
      ),
    );
  }

  topContent(String hidup, String subsHidup, String namaHidup) {
    return new Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Text(
              hidup,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 2.0,
            width: 200.0,
            color: Colors.lightBlue,
            padding: EdgeInsets.symmetric(horizontal: 90.0),
          ),
          SizedBox(
            height: 8.0,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              subsHidup,
              style: TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.only(top: 25.0),
              width: MediaQuery.of(context).size.width - 000,
              child: Text(
                namaHidup,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.end,
              ),
            ),
          )
        ],
      ),
    );
  }
}
