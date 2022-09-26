import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController numberOfWeek = new TextEditingController();
  String child = "";
  String mother = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دليل الحمل", style: TextStyle(fontSize: 20 , fontStyle: FontStyle.italic ),textAlign: TextAlign.right,),
      ),
      backgroundColor: Colors.lightBlueAccent,
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SafeArea(
                        child: Container(
                          width: 500,
                            child: Image.network('https://sowaratfal.com/wp-content/uploads/2018/03/baby-images-4.jpg'
                              ,width: 250, height: 250,fit: BoxFit.cover,)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 350,
                        child: TextField(
                          controller: numberOfWeek,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                          ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 3.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            labelText: "إسبوع الحمل",
                            labelStyle: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),
                        ),
                          ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                        ElevatedButton(
                         style: ElevatedButton.styleFrom(
                             primary: Colors.purple,

                             textStyle:
                             TextStyle(
                                 fontSize: 30,
                                 fontWeight: FontWeight.bold)
                         ),
                        onPressed: (){
                          setState(() {


                          switch (numberOfWeek.text){
                            case "1" : {
                              child = "الجنين على شكل بويضة";
                              mother = "لا يوجد معرفة للحمل";
                            }
                            break;
                            case "2" : {
                              child = "لسه بويضة متستعجليش";
                              mother = "تنطلق البويضة فى قناة فالوب";
                            }
                            break;
                            case "3" : {
                              child = "لسه بويضة مغطياها غشاء التغذية";
                              mother = "لسه متعرفش";
                            }
                            break;
                            case "4" : {
                              child =  "زغرتى طلعله نبض";
                              mother =  "ظهور بعض علامات الحمل";
                            }
                            break;
                            case "5" : {
                              child = "ظهور اطرافه ك برعم صغير";
                              mother = "بداية التحسس من الروائح";
                            }
                            break;
                            case "6" : {
                              child = "تطور ملحوظ فى أطراف الجنين";
                              mother = "الشعور ب الغثيان فى الصباح";
                            }
                            break;
                            case "7" : {
                              child = "الجنين بقى عنبة";
                              mother = "تضخم البطن";
                            }
                            break;
                            case "8" : {
                              child = "العنبة بتكبر واحدة واحدة";
                              mother = "يرجى التوقف عن التدخين و لا تأخذى اى ادوية بدون استشارة الطبيب";
                            }
                            break;
                            case "9" : {
                              child = "بقى عنده صوابع و اذنين كاملين و طوله تقريبا 4.5 سنتى";
                              mother = "تضخم البطن";
                            }
                            break;
                            case "10" : {
                              child = "اعضائه مكتملة بوزن 7 جرام";
                              mother = "ذيادة حجم الرحم";
                            }
                            break;
                            case "11" : {
                              child = "تبدأ رأسه ب اخذ الشكل المستقيم";
                              mother = "يختفى الغثيان تدريجيا";
                            }
                            break;
                            case "12" : {
                              child = "يحرق ابوكى انتى و هوه";
                              mother = "روحى للدكتور ";
                            }
                            break;
                            case "13" : {
                              child = "بطنه كبرت سيكا و شعره بدأ يطلع";
                              mother = "زيادة حجم البطن";
                            }
                            break;
                            case "14" : {
                              child = "خلصنا اول ثلث ";
                              mother = "احساس ب النشاط و الحيوية ";
                            }
                            break;
                            case "15" : {
                              child = "الجنين بيتحرك عادى";
                              mother = "بتتخنى";
                            }
                            break;
                            case "16" : {
                              child = "حجم بطنه بيزيد";
                              mother = "يوجد ارتجاع";
                            }
                            break;
                            case "17" : {
                              child = "حركته بتشتد";
                              mother = "زيادة التعرق بسبب النشاط فى الدورة الدموية";
                            }
                            break;
                            case "18" : {
                              child = "تكون براعم اسنانه";
                              mother = "صعوبة فى النوم";
                            }
                            break;
                            case "19" : {
                              child = "حجمة بيزيد بنسبة صغيرة";
                              mother = "زيادة فى حجم البطن و الاطراف";
                            }
                            break;
                            case "20" : {
                              child = "لسه فيه مكان واسع حواليه";
                              mother = "الرحم يضغط الرئتين و يدفع البطن";
                            }
                            break;
                            case "21" : {
                              child = "تطور فى الجنين حيث يمكنه اللعب و النوم";
                              mother = "بتحسى ب ابنك هوه نايم ولا لا";
                            }
                            break;
                            case "22" : {
                              child = "بداية احساسه ب المؤثرات الخارجية";
                              mother = "تورم اللثة و ظهور احمرار";
                            }
                            break;
                            case "23" : {
                              child = "وصول وزنه ل 550 كيلو";
                              mother = "زيادة حجم البطن";
                            }
                            break;
                            case "24" : {
                              child = "لا تزال الرئة قيد النمو";
                              mother = "تقدرى تسمعى دقات قلبه";
                            }
                            break;
                            case "25" : {
                              child = "لسه بيتطور هانت هما 15 اسبوه";
                              mother = "زيادة الحاجة ل دخول الحمام";
                            }
                            break;
                            case "26" : {
                              child = "تكمل رئتيه بشكل نصفى";
                              mother = "يرجى الاعداد ل احتياجات الطفل";
                            }
                            break;
                            case "27" : {
                              child = "يصبح طوله 35 سم و وزنه 900 جرام";
                              mother = "زيادة حجم البطن";
                            }
                            break;
                            case "28" : {
                              child = "حركة متزايدة";
                              mother = "تأكدى من فصيلة دمك لفصيلة دم الابن";
                            }
                            break;
                            case "29" : {
                              child = "الزغطة محسسوسة عند الجنين";
                              mother = "بتحسى ب الزغطة بتاعته";
                            }
                            break;
                            case "30" : {
                              child = "استهلاكه للأكسجين يزيد";
                              mother = "بداية الاحساس بالتعب و الثقل  ";
                            }
                            break;
                            case "31" : {
                              child = "تقل حركته";
                              mother = "تورم الكعبين";
                            }
                            break;
                            case "32" : {
                              child = "يوجه رأسه إلى اسفل الرحم";
                              mother = "بتجهزى للولادة";
                            }
                            break;
                            case "33" : {
                              child = "بيقدر يميز بين النور و الضلمة";
                              mother = "لا مش عارف";
                            }
                            break;
                            case "34" : {
                              child = "يزيد طوله الى 45 سم";
                              mother = "تضخم البطن";
                            }
                            break;
                            case "35" : {
                              child = "يزداد نموه ويستعد بتحركه ل وضعية الحمل";
                              mother = "ممكن الولادة خلال هذا الاسبوع";
                            }
                            break;
                            case "36" : {
                              child = "يكتمل نموه ب نسبة كبيرة";
                              mother = "زيارة الطبيب ب شكل اسبوعى";
                            }
                            break;
                            case "37" : {
                              child = "يزداد وزنه بمعدل 100 جرام كل ثلاثة ايام";
                              mother = "الطفل يؤثر على مستوى الحديد فى جسم الأم";
                            }
                            break;
                            case "38" : {
                              child = "خلاص هانت يحرق ابوكوا";
                              mother =  "قد تسقط سدادة المخاط التى تسد عنق الرحم ذلك لا يعنى يالضرورة بداية عملية المخاض" ;
                            }
                            break;
                            case "39" : {
                              child = "هينزل ف اى وقت";
                              mother = "الاحساس ب انقباضات الرحم";
                            }
                            break;
                            case "40" : {
                              child = "يلا مبروك و متجوش هنا تانى";
                              mother = "يلا مبروك و متجوش هنا تانى";
                            }
                            break;
                            default: {
                              child = "الرجاء إدخال رقم ";
                            }
                            break;

                          }
                          });
                          print (" حالة الطفل هى:$child");
                          print(mother);
                        },
                            child: Text("متابعة الحالة " , textAlign: TextAlign.center,)
                        ),

                      SizedBox(height: 20,),
                      Center(child: Text("حالة الطفل هى : $child" , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold,color: Colors.white),)),
                      Center(child: Text(" حالة الام هى :$mother" , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ],
                  ),
                ),
              ),
    );
  }
}

