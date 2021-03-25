import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:catalog/core/models/map_data.dart';
import '../map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/core/viewmodels/map_model.dart';
import 'package:flutter_html/flutter_html.dart';
import 'khoroo.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void PopUp(context, dynamic attributes, String title, String content, MapData mapData) {


  if(title == "Зөрчлийн мэдээлэл"){



    var duuregIndex = mapData.districts.indexWhere((district) => district.id == attributes["district_id"]);
    var regionIndex = mapData.regions.indexWhere((region) => region.id == attributes["region_id"]);
    var bulegIndex = mapData.buleg.indexWhere((buleg) => buleg.id == attributes["buleg_id"]);
    var angilalIndex = mapData.angilal.indexWhere((angilal) => angilal.id == attributes["angilal_id"]);
    var tuluwIndex = mapData.tuluw.indexWhere((tuluw) => tuluw.id == attributes["tuluw_id"]);

    String duureg = '';
    String khoroo = '';
    String bulegName = '';
    String angilalName = '';
    String tuluwName = '';

    if (duuregIndex >= 0) {
      duureg = mapData.districts[duuregIndex].nameMn;
    }

    if (regionIndex >= 0) {
      khoroo = mapData.regions[regionIndex].name;
    }
    if (bulegIndex >= 0) {
      bulegName = mapData.buleg[bulegIndex].title;
    }
    if (angilalIndex >= 0) {
      angilalName = mapData.angilal[angilalIndex].title;
    }
    if (tuluwIndex >= 0) {
      tuluwName = mapData.tuluw[tuluwIndex].tuluwNer;
    }
    List<dynamic> zurags = [];
    if(attributes["zurag"] != null && attributes["zurag"] != ""){
      var zuragsPre = jsonDecode(attributes["zurag"]);

       if(zurags is List){
         zurags = zuragsPre;
       }

    }



    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 40,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: <Widget>[
                            Icon(EsriIcons.layers, size: 20, color: primaryColor),
                            SizedBox(
                              width: 10,
                            ),
                            Text(title, textAlign: TextAlign.left,

                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: primaryColor))
                          ],
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Html(
                                  data: """
    <div><b>Төлөв:</b> ${tuluwName} <br>
    <b>Дүүрэг:</b> ${duureg}, <b>Хороо:</b> ${khoroo} <br>
    <b>Зөрчлийн бүлэг:</b> ${bulegName} <br>
    <b>Зөрчлийн ангилал:</b> ${angilalName} <br>
    <b>Байршил:</b> ${attributes["bairshil"]} <br>
    <b>Тайлбар:</b> ${attributes["tailbar"]} <br>
    </div>
  """,
                                ),
                                zurags.length >= 1 ? Container(
                                  height: 200.0,
                                  child: new Swiper(
                                    itemBuilder: (BuildContext context,int index){
                                      return new Image.network("https://manaikhoroo.mn/"+zurags[index]["response"].toString(),fit: BoxFit.fill,);
                                    },
                                    itemCount: zurags.length,
                                    control: new SwiperControl(
                                        color:primaryColor
                                    ),
                                  ) ,
                                ): Container(),
                                SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ))
                    ])
              ]);
        });
  } else {

    var Popup = Container(
      child: Text(content, textAlign: TextAlign.left),
    );
    if(title == "Төрийн үйлчилгээ"){

      var khoroo = attributes["NAME_EN"].toString().split("_");
      Popup = Container(
        child: Html(
          data: """
    <div>Хаяг: <b>${attributes["DISTRICT"]}, ${khoroo[1].toString()}-р хороо, ${attributes["LOCATION"]}</b> <br>
    Утас: <b>70172688</b> <br>
    1.Хувь хүн, гэр бүлд тулгамдсан харилцааны бэрхшээлтэй асуудлыг шийдвэрлэхэд туслах үйлчилгээ	<b>${attributes["А1_Huvi_hun_ger_bul"]}</b><br>
  2.Хувь хүний болон гэр бүлд тулгарсан нийгэм сэтгэл зүйн асуудлыг шийдвэрлэхэд туслах үйлчилгээ	<b>${attributes["A2_Huvi_hunii_ger_bul_setgelzui"]}</b><br>
  3.Үйлчлүүлэгч өөрийн амьдралтай холбоотой аливаа шийдвэр гаргахад шаардлагатай мэдээлэл өгөх үйлчилгээ	<b>${attributes["A3_Uilchluulegch_ooriin_amidral"]}</b><br>
  4. Үйлчлүүлэгчийг нийгэмшүүлэх, нийгмийн амьдралд оролцох оролцоог сайжруулах үйлчилгээ	<b>${attributes["A4_Uilchluulegch_niigemshuuleh"]}</b><br>
  5. 5. Үндсэн хэрэгцээ, эрх ашиг нь зөрчигдөөд байгаа хүмүүст туслах үйлчилгээ	<b>${attributes["A5_Undsen_heregtsee_erh_ashig"]}</b><br>
  6. Үйлчлүүлэгчийн нөөц боломжийг илрүүлэх, чадвар чадавхийг хөгжүүлэх үйлчилгээ	<b>${attributes["A6_Uilchluulegchiin_noots_bolom"]}</b><br>
  7. Нийгмийн халамж хамгааллын үйлчилгээнд хамрагдахад туслах	<b>${attributes["A7_Niigem_halamj_hamgaalalt"]}</b><br>
  8. Эрүүл мэнд, боловсрол мэдлэгээ дээшлүүлэхэд туслах	<b>${attributes["A8_Eruul_mend_bolovsrol"]}</b><br>
  9. Амьдрах ухааны мэдлэг чадварыг дээшлүүлэх	<b>${attributes["A9_Amidrah_uhaan_medleg"]}</b><br>
  10. Нийгэм эрх зүйн тусламж үзүүлэх	<b>${attributes["A10_Niigem_erh_zui"]}</b><br>
  11. Хорооны иргэдийн санал, хүсэлтийг хүлээн авч, тэдэнд үйлчлэх, төрийн үйлчилгээг хөнгөн, шуурхай болгож шийдвэрлүүлэх	<b>${attributes["A11_Horoonii_irgeniin_sanal_hus"]}</b><br>
  12. Хорооны нутаг дэвсгэрийн ариун цэвэр, тохижилтыг сайжруулах ажлыг зохион байгуулах	<b>${attributes["A13_Horoonii_nutag_devsger_ariu"]}</b><br>
  13. Нийгмийн дэг журам хангах, гэмт хэрэг, эрх зүйн зөрчлөөс урьдчилан сэргийлэх	<b>${attributes["A14_Niigmiin_deg_juram_hangah"]}</b><br>
  14. Хорооны иргэд оршин суугчдын санал хүсэлтийг хүлээн авч шаардлагатай хүмүүст оршин суух тодорхойлолт олгох	<b>${attributes["A15_Horoonii_irgen_orshin_suugc"]}</b><br>
  15. Жилийн эцсийн хүн ам, цэргийн тоо бүртгэлийг хариуцан дайчилгаа, цэрэг татлагын ажилд иргэдийг бүрэн хамруулах	<b>${attributes["A16_Jiliin_etses_hun_am_tsereg"]}</b><br>
  16. Нутаг дэвсгэрийн байгууллага, аж ахуйн нэгжийн иж бүрэн бүртгэл судалгааг гарган орчны тохижилт, гэрэлтүүлэг, ариун цэврийг сайжруулахад тавигдаж байгаа шаардлагыг хэрэгжүүлэхэд зохион байгуулалт, арга зүйн зөвлөгөө өгч үр дүнг тооцож ажиллах	<b>${attributes["A17_Nutag_devsger_baiguullaga"]}</b><br>
  17. Төрийн одон медальд иргэдийг уламжлах бүрдүүлэх материалыг дээд шатны байгууллагад уламжлах	<b>${attributes["A18_Toriin_odon_medil_irgen"]}</b><br>
  18. Ахмад настан, хөгжлийн бэрхшээлтэ иргэнд протез, ортопед, тусгай хэрэгслийн/ хиймэл шүд, нүдний болор, таяг, тэргэнцэр, хөтөвч суултуур гэх мэт/ хөнгөлөлтийн үйлчилгээ	<b>${attributes["A18_Toriin_odon_medil_irgen"]}</b><br>
  19. Ахмад настан хөгжлийн бэрхшээлтэй иргэн, хүүхдийн рашаан сувилалд сувилуулах хөнгөлөлтийн үйлчилгээ	<b>${attributes["A20_Ahmad_nastan_rashaan"]}</b><br>
  20. Ахмад настан амралтад амрах хөнгөлөлт	<b>${attributes["A21_Ahmad_nastan_amralt_hongolo"]}</b><br>
  21. Халамжийн тэтгэмж/ Ахмад настан, хөгжлийн бэрхшээлтэй иргэн, хүүхэд байнгын асаргаа тогтоох, асаргаа сунгах	<b>${attributes["A22_Halamjiin_tetgemj"]}</b><br>
  22. Нийгмийн халамжийн тэтгэвэр тогтоолгох	<b>${attributes["A23_Niigmiin_halamj_tetgever"]}</b><br>
  23. Жирэмсний эхийн тэтгэмж	<b>${attributes["A24_Jiremsnii_ehiin_tetgemj"]}</b><br>
  24. Ажил хайгч ажил олгогч иргэдийн бүртгэл үүсгэн зуучлах	<b>${attributes["A25_Ajil_haigch_ajil_olgogch"]}</b><br>
  25. Бусад халамжийн чиглэлийн бүх үйлчилгээ	<b>${attributes["A26_Busad_halamjiin_chiglel"]}</b><br>
  26. Төрсний бүртэл	<b>${attributes["A27_Torsonii_burtgel"]}</b><br>
  27. Гэрлэсний бүртгэл	<b>${attributes["A28_Gerlesnii_burtgel"]}</b><br>
  28. Гэрлэлт сэргээсний бүртгэл	<b>${attributes["A29_Gerlelt_sergeenii_burtgel"]}</b><br>
  39. Гэрлэлт дуусвар болсны бүртгэл	<b>${attributes["A30_Gerlelt_duusvar"]}</b><br>
  30. Эцэг эх тогтоосны бүртгэл	<b>${attributes["A31_Etseg_eh"]}</b><br>
  31. Нас барсны бүртгэл	<b>${attributes["A32_Nas_barsanii"]}</b><br>
  32. Шилжилт хөдөлгөөний бүртгэл	<b>${attributes["A33_Shiljilt_hodolgoon"]}</b><br>
  33. Төрсний гэрчилгээ, иргэний үнэмлэх дахин олгох үйлчилгээ	<b>${attributes["A34_Torsnii_garchilgee"]}</b><br>
  34. Гэрлэлтийн гэрчилгээний дахин олголт	<b>${attributes["A35_Gerleltiin_gerchilgee"]}</b><br>
  35. Иргэний улсын бүртгэлийн лавлагаа	<b>${attributes["A36_Irgenii_ulsiin_burtgel"]}</b><br>
  36.Иргэний бүртгэлтэй холбоотой бусад бүх төрлийн лавлагаа	<b>${attributes["A37_Irgenii_burtgeltei"]}</b><br>
    </div>
  """,
        ),
      );
    }
    if(title == "Архивын лавлагаа"){


      Popup = Container(
        child: Html(
          data: """
    <div>Хаяг: <b>${attributes["Duureg"]}, ${attributes["Khoroo"]}</b> <br>
    1. Ажилласан жилийг тодорхойлох лавлагаа <br>	  
2. Акт, дүгнэлтийн лавлагаа	<br>	  
3. Банк, санхүүгийн лавлагаа,	<br>	  
4. Гадагш олголтын лавлагаа	<br>	  
5. Газрын кадастрын зурагт өөрчлөлт оруулсан лавлагаа	<br>	  
6. ЕБС-ийн улсын шалгалтын холбогдох лавлагаа	<br>	  
7. Ерөнхий менежерийн тушаалын лавлагаа	<br>	  
8. Өмч хувьчлалын лавлагаа	<br>	  
9. Нас барсны бүртгэлийн лавлагаа	<br>	  
10. Нотариатын лавлагаа	<br>	  
11. Орон сууц эзэмших эрхийн бичгийн лавлагаа олгох	<br>	  
12. Тендерийн лавлагаа	<br>	  
13. Тогтоол, захирамжийн лавлагаа	<br>	  
14. Уншлагын танхимын үйлчилгээ	<br>	  
15. Хурлын тэмдэглэлийн лавлагаа	<br>	  
16. Цагаатгалын холбогдох лавлагаа	<br>	  
17. Цалингийн лавлагаа	<br>	  
18. Шилжилт хөдөлгөөн,	<br>	  
19. Шүүхийн шийдвэрийн лавлагаа	<br>	  
20. Шүүхийн шинжилгээний лавлагаа	<br>	  
21. Бусад	<br>	  
22. Зөвлөгөө мэдээллийн үйлчилгээ <br>	  
    </div>
  """,
        ),
      );
    }
    if(title == "Иргэний үнэмлэх"){


      Popup = Container(
        child: Html(
          data: """
    <div>Хаяг: <b>${attributes["Duureg"]}, ${attributes["Khoroo"]}</b> <br>
    Иргэний үнэмлэх шинээр авах, шинэчлэх, дахин авах үйлчилгээ 
    </div>
  """,
        ),
      );
    }
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(EsriIcons.layers, size: 20, color: primaryColor),
                          SizedBox(
                            width: 10,
                          ),
                          Text(title, textAlign: TextAlign.left,

                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: primaryColor))
                        ],
                      ),
                    ),
                    new Expanded(
                      child:  ListView(
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Popup)
                          ]
                      ),
                    )
                  ]));
        });
  }




}
