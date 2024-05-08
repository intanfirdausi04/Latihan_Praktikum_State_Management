import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laporan_praktikum_2mei/latihan4.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class University {
  final String name;
  final String webPage;

  University({required this.name, required this.webPage});
}

class AseanCountry {
  final String name;

  AseanCountry({required this.name});
}

class UniversityCubit extends Cubit<List<University>> {
  UniversityCubit() : super([]);

  void setUniversities(List<University> universities) => emit(universities);
}

class AseanCountryCubit extends Cubit<List<AseanCountry>> {
  AseanCountryCubit()
      : super([
          AseanCountry(name: "Indonesia"),
          AseanCountry(name: "Malaysia"),
          AseanCountry(name: "Singapura"),
          AseanCountry(name: "Thailand"),
          AseanCountry(name: "Filipina"),
          AseanCountry(name: "Brunei Darussalam"),
          AseanCountry(name: "Vietnam"),
          AseanCountry(name: "Laos"),
          AseanCountry(name: "Myanmar"),
          AseanCountry(name: "Kamboja"),
        ]);
}

List<University> getUniversitiesByCountry(String countryName) {
  switch (countryName) {
    case "Indonesia":
      return [
        University(
            name: "Universitas Indonesia", webPage: "https://www.ui.ac.id"),
        University(
            name: "Institut Teknologi Bandung",
            webPage: "https://www.itb.ac.id"),
        University(
            name: "Universitas Gadjah Mada", webPage: "https://www.ugm.ac.id"),
        University(
            name: "Akademi Farmasi Mitra Sehat Mandiri Sidoarjo",
            webPage: "http://www.akfarmitseda.ac.id/"),
        University(
            name: "Institut Sains & Teknologi Akprind",
            webPage: "http://www.akprind.ac.id/"),
        University(
            name: "STMIK AMIKOM Yogyakarta",
            webPage: "http://www.amikom.ac.id/"),
        University(
            name: "Universitas Negeri Malang", webPage: "http://www.um.ac.id/"),
        University(
            name: "Universitas Surabaya", webPage: "http://www.ubaya.ac.id/"),
      ];
    case "Malaysia":
      return [
        University(name: "Universiti Malaya", webPage: "https://www.um.edu.my"),
        University(
            name: "Universiti Teknologi Malaysia",
            webPage: "https://www.utm.my"),
        University(
            name: "Universiti Kebangsaan Malaysia",
            webPage: "https://www.ukm.my"),
        University(
            name: "Universiti Sains Malaysia", webPage: "https://www.usm.my"),
        University(
            name: "Universiti Putra Malaysia",
            webPage: "https://www.upm.edu.my"),
        University(
            name: "Universiti Tenaga Nasional",
            webPage: "https://www.uniten.edu.my"),
        University(
            name: "Universiti Utara Malaysia",
            webPage: "https://www.uum.edu.my"),
        University(
            name: "Universiti Malaysia Sabah",
            webPage: "https://www.ums.edu.my"),
        University(
            name: "Universiti Malaysia Sarawak",
            webPage: "https://www.unimas.my"),
        University(
            name: "Universiti Teknikal Malaysia Melaka",
            webPage: "https://www.utem.edu.my"),
        University(
            name: "Universiti Sultan Zainal Abidin",
            webPage: "https://www.unisza.edu.my"),
        University(
            name: "Institut Pertanian Bogor", webPage: "https://www.ipb.ac.id"),
        University(
            name: "Universitas Airlangga", webPage: "https://www.unair.ac.id"),
        University(
            name: "Institut Teknologi Sepuluh Nopember",
            webPage: "https://www.its.ac.id"),
        University(
            name: "Universitas Padjadjaran",
            webPage: "https://www.unpad.ac.id"),
        University(
            name: "Universitas Diponegoro", webPage: "https://www.undip.ac.id"),
        University(
            name: "Universitas Hasanuddin", webPage: "https://www.unhas.ac.id")
      ];
    case "Singapura":
      return [
        University(
            name: "National University of Singapore",
            webPage: "https://www.nus.edu.sg"),
        University(
            name: "Nanyang Technological University",
            webPage: "https://www.ntu.edu.sg"),
        University(
            name: "Singapore Management University",
            webPage: "https://www.smu.edu.sg"),
        University(
            name: "Singapore University of Technology and Design",
            webPage: "https://www.sutd.edu.sg"),
        University(
            name: "Singapore Institute of Technology",
            webPage: "https://www.singaporetech.edu.sg"),
        University(
            name: "Singapore University of Social Sciences",
            webPage: "https://www.suss.edu.sg"),
        University(
            name: "Duke-NUS Medical School",
            webPage: "https://www.duke-nus.edu.sg"),
        University(
            name: "Singapore Institute of Management",
            webPage: "https://www.sim.edu.sg"),
        University(
            name: "Yale-NUS College", webPage: "https://www.yale-nus.edu.sg"),
        University(
            name: "James Cook University Singapore",
            webPage: "https://www.jcu.edu.sg"),
        University(
            name: "LASALLE College of the Arts",
            webPage: "https://www.lasalle.edu.sg"),
        University(
            name: "Nanyang Academy of Fine Arts",
            webPage: "https://www.nafa.edu.sg"),
        University(
            name: "PSB Academy", webPage: "https://www.psb-academy.edu.sg")
      ];
    case "Thailand":
      return [
        University(
            name: "National University of Thailand",
            webPage: "https://www.example.ac.th"),
        University(
            name: "Chulalongkorn University",
            webPage: "https://www.chula.ac.th"),
        University(
            name: "Mahidol University", webPage: "https://www.mahidol.ac.th"),
        University(
            name: "Thammasat University", webPage: "https://www.tu.ac.th"),
        University(
            name: "Kasetsart University", webPage: "https://www.ku.ac.th"),
        University(
            name: "King Mongkut's Institute of Technology Ladkrabang",
            webPage: "https://www.kmitl.ac.th"),
        University(
            name: "King Mongkut's University of Technology Thonburi",
            webPage: "https://www.kmutt.ac.th"),
        University(
            name: "Suranaree University of Technology",
            webPage: "https://www.sut.ac.th"),
        University(
            name: "Prince of Songkla University",
            webPage: "https://www.psu.ac.th"),
        University(
            name: "Burapha University", webPage: "https://www.buu.ac.th"),
        University(
            name: "Silpakorn University", webPage: "https://www.su.ac.th"),
        University(
            name: "Mae Fah Luang University", webPage: "https://www.mfu.ac.th"),
        University(
            name: "Chiang Mai University", webPage: "https://www.cmu.ac.th"),
        University(
            name: "Khon Kaen University", webPage: "https://www.kku.ac.th"),
        University(name: "Rangsit University", webPage: "https://www.rsu.ac.th")
      ];
    case "Filipina":
      return [
        University(
            name: "University of the Philippines",
            webPage: "https://www.example.ph"),
        University(
            name: "Ateneo de Manila University",
            webPage: "https://www.ateneo.edu"),
        University(
            name: "De La Salle University", webPage: "https://www.dlsu.edu.ph"),
        University(
            name: "University of Santo Tomas",
            webPage: "https://www.ust.edu.ph"),
        University(
            name: "University of San Carlos",
            webPage: "https://www.usc.edu.ph"),
        University(
            name: "University of San Agustin",
            webPage: "https://www.usa.edu.ph"),
        University(
            name: "Mapua University", webPage: "https://www.mapua.edu.ph"),
        University(
            name: "University of the East", webPage: "https://www.ue.edu.ph"),
        University(
            name: "Adamson University", webPage: "https://www.adamson.edu.ph"),
        University(
            name: "Far Eastern University", webPage: "https://www.feu.edu.ph"),
        University(
            name: "Polytechnic University of the Philippines",
            webPage: "https://www.pup.edu.ph"),
        University(
            name: "University of the Visayas",
            webPage: "https://www.universityofthevisayas.edu.ph"),
        University(
            name: "Central Philippine University",
            webPage: "https://www.cpu.edu.ph"),
        University(
            name: "University of the Cordilleras",
            webPage: "https://www.uc-bcf.edu.ph"),
        University(
            name: "University of Southeastern Philippines",
            webPage: "https://www.usep.edu.ph"),
        University(
            name: "West Visayas State University",
            webPage: "https://www.wvsu.edu.ph"),
      ];
    case "Brunei Darussalam":
      return [
        University(
            name: "University of Brunei Darussalam",
            webPage: "https://www.example.bn"),
        University(
            name: "Universiti Teknologi Brunei",
            webPage: "https://www.utb.edu.bn"),
        University(
            name: "Seri Begawan Religious Teachers University College",
            webPage: "https://www.kupu-sb.edu.bn"),
        University(
            name: "Institut Teknologi Brunei",
            webPage: "https://www.itb.edu.bn"),
        University(
            name: "Laksamana College of Business",
            webPage: "https://www.lcb.edu.bn"),
        University(
            name: "Brunei Polytechnic",
            webPage: "https://www.politeknik.gov.bn"),
        University(
            name: "Micronet International College",
            webPage: "https://www.micronet-college.edu.bn"),
        University(
            name: "Cosmopolitan College of Commerce & Technology",
            webPage: "https://www.cosmopolitan.edu.bn"),
        University(
            name: "International Graduate Studies College",
            webPage: "https://www.igsc.edu.bn"),
        University(
            name: "Kemuda Institute",
            webPage: "https://www.kemudainstitute.com"),
        University(
            name: "Pusat Belia Youth Development Centre",
            webPage: "https://www.pusatbelia.org.bn"),
        University(
            name: "Institut Teknologi Petroleum PETRONAS",
            webPage: "https://www.petronas.com"),
        University(
            name: "Sultan Sharif Ali Islamic University",
            webPage: "https://www.unissa.edu.bn"),
        University(
            name: "Jefri Bolkiah College of Engineering",
            webPage: "https://www.jbce.edu.bn"),
        University(
            name: "Brunei Institute of Technology",
            webPage: "https://www.bit.edu.bn"),
      ];
    case "Vietnam":
      return [
        University(
            name: "Vietnam National University",
            webPage: "https://www.example.vn"),
        University(
            name: "Ho Chi Minh City University of Science",
            webPage: "https://www.hcmus.edu.vn"),
        University(
            name: "Hanoi University of Science and Technology",
            webPage: "https://www.hust.edu.vn"),
        University(
            name: "Vietnam National University, Hanoi",
            webPage: "https://www.vnu.edu.vn"),
        University(
            name: "Hanoi University of Agriculture",
            webPage: "https://www.hua.edu.vn"),
        University(
            name: "Vietnam National University of Agriculture",
            webPage: "https://www.vnua.edu.vn"),
        University(
            name: "Hanoi University of Mining and Geology",
            webPage: "https://www.humg.edu.vn"),
        University(
            name: "Hanoi University of Technology",
            webPage: "https://www.hut.edu.vn"),
        University(
            name: "Vietnam National University of Forestry",
            webPage: "https://www.vfu.edu.vn"),
        University(
            name: "Vietnam National University of Arts Education",
            webPage: "https://www.vnuae.edu.vn"),
        University(
            name: "Hue University", webPage: "https://www.hueuni.edu.vn"),
        University(name: "University of Danang", webPage: "https://www.udn.vn"),
        University(
            name: "Can Tho University", webPage: "https://www.ctu.edu.vn"),
        University(
            name: "Hanoi Medical University",
            webPage: "https://www.hmu.edu.vn"),
        University(
            name: "Vietnam National University of Economics",
            webPage: "https://www.vne.edu.vn"),
      ];
    case "Laos":
      return [
        University(
            name: "National University of Laos",
            webPage: "https://www.nuol.edu.la"),
        University(
            name: "Souphanouvong University",
            webPage: "https://www.spu.edu.la"),
        University(
            name: "National Institute of Fine Arts",
            webPage: "https://www.nifa.edu.la"),
        University(
            name: "National University of Laos Faculty of Engineering",
            webPage: "https://www.feng.nuol.edu.la"),
        University(
            name:
                "National University of Laos Faculty of Law and Political Science",
            webPage: "https://www.flps.nuol.edu.la"),
        University(
            name:
                "National University of Laos Faculty of Economics and Business Management",
            webPage: "https://www.febm.nuol.edu.la"),
        University(
            name: "National University of Laos Faculty of Letters",
            webPage: "https://www.fl.nuol.edu.la"),
        University(
            name: "Souphanouvong University Faculty of Education",
            webPage: "https://www.fedu.spu.edu.la"),
        University(
            name: "National University of Laos Faculty of Agriculture",
            webPage: "https://www.fa.nuol.edu.la"),
        University(
            name: "National University of Laos Faculty of Forestry",
            webPage: "https://www.ff.nuol.edu.la"),
        University(
            name: "Souphanouvong University Faculty of Medicine",
            webPage: "https://www.fmed.spu.edu.la"),
        University(
            name: "National University of Laos Faculty of Social Sciences",
            webPage: "https://www.fss.nuol.edu.la"),
        University(
            name: "National University of Laos Faculty of Science",
            webPage: "https://www.fs.nuol.edu.la"),
        University(
            name:
                "National University of Laos Faculty of Water Resources Engineering",
            webPage: "https://www.fwre.nuol.edu.la"),
        University(
            name:
                "National University of Laos Faculty of Environmental Science",
            webPage: "https://www.fes.nuol.edu.la"),
      ];
    case "Myanmar":
      return [
        University(
            name: "University of Yangon", webPage: "https://www.example.mm"),
        University(
            name: "Yangon University of Economics",
            webPage: "https://www.yueco.edu.mm"),
        University(
            name: "Yangon Technological University",
            webPage: "https://www.ytu.edu.mm"),
        University(
            name: "University of Mandalay", webPage: "https://www.uom.edu.mm"),
        University(
            name: "Mandalay Technological University",
            webPage: "https://www.most.gov.mm/mtu"),
        University(
            name: "University of Medicine, Yangon",
            webPage: "https://www.umy.edu.mm"),
        University(
            name: "University of Dental Medicine, Yangon",
            webPage: "https://www.udmy.edu.mm"),
        University(
            name: "University of Medicine, Mandalay",
            webPage: "https://www.ummdy.edu.mm"),
        University(
            name: "University of Dental Medicine, Mandalay",
            webPage: "https://www.udmmdy.edu.mm"),
        University(
            name: "University of Computer Studies, Yangon",
            webPage: "https://www.ucsy.edu.mm"),
        University(
            name: "University of Computer Studies, Mandalay",
            webPage: "https://www.ucsm.edu.mm"),
        University(
            name: "Yangon University of Education",
            webPage: "https://www.yue.edu.mm"),
        University(
            name: "Mandalay University of Education",
            webPage: "https://www.mue.edu.mm"),
        University(
            name: "University of Economics, Mandalay",
            webPage: "https://www.uem.edu.mm"),
        University(
            name: "University of Economics, Yangon",
            webPage: "https://www.uey.edu.mm"),
      ];
    case "Kamboja":
      return [
        University(
            name: "Royal University of Phnom Penh",
            webPage: "https://www.example.kh"),
        University(
            name: "Institute of Technology of Cambodia",
            webPage: "https://www.itc.edu.kh"),
        University(
            name: "Royal University of Fine Arts",
            webPage: "https://www.rufa.edu.kh"),
        University(
            name: "Royal University of Law and Economics",
            webPage: "https://www.rule.edu.kh"),
        University(
            name: "National Institute of Education",
            webPage: "https://www.nie.edu.kh"),
        University(
            name: "National University of Management",
            webPage: "https://www.num.edu.kh"),
        University(
            name: "Build Bright University", webPage: "https://www.bbu.edu.kh"),
        University(
            name: "Norton University", webPage: "https://www.norton.edu.kh"),
        University(
            name: "Paññāsāstra University of Cambodia",
            webPage: "https://www.puc.edu.kh"),
        University(
            name: "Cambodian Mekong University",
            webPage: "https://www.mekong.edu.kh"),
        University(
            name: "University of Health Sciences, Cambodia",
            webPage: "https://www.uhs.edu.kh"),
        University(
            name: "Asia Euro University", webPage: "https://www.aeu.edu.kh"),
        University(
            name: "University of Battambang",
            webPage: "https://www.ubb.edu.kh"),
        University(
            name: "University of Cambodia", webPage: "https://www.uc.edu.kh"),
        University(
            name: "Cambodia University for Specialties",
            webPage: "https://www.cus.edu.kh"),
      ];
    default:
      return []; // Tambahkan pernyataan return untuk menangani kasus default
  }
}

class UniversityList extends StatefulWidget {
  @override
  _UniversityListState createState() => _UniversityListState();
}

class _UniversityListState extends State<UniversityList> {
  AseanCountry? _selectedCountry;

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _selectedCountry != null
            ? Text('Daftar Universitas ${_selectedCountry!.name}')
            : Text('Daftar Universitas'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          BlocBuilder<AseanCountryCubit, List<AseanCountry>>(
            builder: (context, aseanCountries) {
              final universityCubit = BlocProvider.of<UniversityCubit>(context);
              return DropdownButton(
                hint: Text('Pilih Negara ASEAN'),
                value: _selectedCountry,
                onChanged: (selectedCountry) {
                  setState(() {
                    _selectedCountry = selectedCountry as AseanCountry?;
                  });
                  if (selectedCountry != null) {
                    final universitiesToShow =
                        getUniversitiesByCountry(selectedCountry.name);
                    universityCubit.setUniversities(universitiesToShow);
                  }
                },
                items: aseanCountries
                    .map((country) => DropdownMenuItem(
                          value: country,
                          child: Text(country.name),
                        ))
                    .toList(),
              );
            },
          ),
          BlocBuilder<UniversityCubit, List<University>>(
            builder: (context, universities) {
              return Expanded(
                child: ListView.builder(
                  itemCount: universities.length,
                  itemBuilder: (context, index) {
                    final university = universities[index];
                    return ListTile(
                      title: Text(university.name),
                      subtitle: InkWell(
                        onTap: () {
                          _launchURL(university.webPage);
                        },
                        child: Text(
                          university.webPage,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      tileColor: Colors.white,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
