import 'package:flutter/material.dart';

void main() {
  runApp(const IpucuUygulamasi()); // Uygulamayı başlatan ana fonksiyon
}

class IpucuUygulamasi extends StatelessWidget {// "StatelessWidget" demek, 
  const IpucuUygulamasi({super.key});//bu sayfanın içeriği uygulama çalışırken 
  //değişmeyecek demektir

  @override
  Widget build(BuildContext context) {
    
    
    // MaterialApp: Uygulamanın "Anayasası"dır. Tema ve genel ayarlar burada yapılır.
    return MaterialApp(
    
     
      debugShowCheckedModeBanner: false, // Sağ üstteki "Debug" yazısını kaldırır.
      
      /* Scaffold: Sayfanın iskeletidir.(Üst bar, gövde, alt bar gibi kısımları 
      yönetir ve oluşturmamızı sağlar. Home ise uygulama ilk açıldığında karşımıza
      çıkan kısmı belirtir, scaffold yazınca ilk çıkacak şey bir sayfa iskeleti 
      yapısıdır demiş oluruz.*/
       home: Scaffold(

       
       /*scaffold yapısının bir özelliğidir, sayfanın üst
       tarafında belli bir alanı belirtir*/
       appBar: AppBar( 
         
          title: const Text('25MY03004 - Arda Anıl Karagöz'),/*title : başlık 
          demektir. Normalden büyük yazı oluşturu ve uygun yere koyar*/
         
          backgroundColor: Colors.blueAccent, //Appbarın (üst bölgenin) rengi
        ),

//ListView: Kartların alt alta dizilmesini ve kaydırılabilir alan olumasını sağlar
        body: ListView(    
         
          /*Kaydırılabilir listemiz dört kenarından boşluk bırakır*/
          padding: const EdgeInsets.all(12),
           
           children: [ //kartlar Listwiewin çocuğu oldu.
           
            Card( //1. bilgi kartı
            
            elevation: 5, //kartın altına gölge ekleyerek derinlik verir
           
           child: ListTile(
            /*ListTile tek bir satır oluşturur ve içindeki 
           leading, ana metni yani title kısmının ve açıklamanın yani subtitle ın
           arasında ideal boşluk bırakır, onları satırda ortalar, böylece
           bize hazır ve düzenli bir satır yaptırır.*/

            /* Leading, listTile ın en solundaki bölgedir.
            Buraya karta ki bilgiye uygun mavi renkte ikon ekledik*/
           
            leading: const Icon(Icons.code, color: Colors.blue,),
          title: const Text('Temiz Kod Yazımı'),//kartın başlığı
        
        //kartın açıklaması, kartın genelinde yazan yazı subtitle a konur.
         subtitle: const Text('Değişken isimlerini amacına uygun isimlendirerek okunabilirliği artırın.'),
         
          ), 
           ),
           Card( //2. kart
            elevation: 5,
            child: ListTile(
            leading: const Icon(Icons.layers, color: Colors.teal),  //konuya uygun ikon şekli
          title: const Text('Scaffold İskeleti'), //uygun başlık
                subtitle: const Text(' Scaffoldun AppBar ve Body gibi temel özelliklerini kullanarak düzenli yerleşim sağlayın.'),
           
            ),
           ),
           Card( //3. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.psychology, color: Colors.green),
                title: const Text('Algoritma Mantığı'),
                subtitle: const Text('Kod yazmadan önce kağıt üzerinde temel mantığı kurmak zaman kazandırır.'),
             
              ),
            ),
            Card( //4. kart
          elevation: 5,
          child: ListTile(
          leading: const Icon(Icons.space_bar, color: Colors.brown),
          title: const Text('Padding Kullanımı'),
          subtitle: const Text('Elemanların kenarlara yakınlığını önleyerek daha iyi tasarım oluşturun.'),
            ),
          ),
           Card( //5. kart
            elevation: 5,
             child: ListTile(
              leading: const Icon(Icons.bolt, color: Colors.orangeAccent), // Performansı temsil eden şimşek ikonu
              title: const Text('Const Kullanımı'),
             subtitle: const Text('Kod boyunca değişmeyecek yapılarda const kullanmak, bellek yükünü azaltır ve performansı arttırır '),
               ),
              ),
              Card( //6. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.flash_off, color: Colors.orange),
                title: const Text('StatelessWidget Mantığı'),
                subtitle: const Text('Ekrandaki verilerin çalışma anında değişmediği durumlar için kullanılan yapıdır ve performansı arttırır'),
              ),
            ),
            Card( //7. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.devices, color: Colors.blueGrey),
                title: const Text('Flutterla Tek Kod, birden çok platform'),
                subtitle: const Text('Flutter ile oluşturduğumuz tek bir kod yapısı hem Android, hem iOS hem de Web için uygulama geliştirme imkanı sunar.'),
              ),
            ),
            Card( //8. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.crop_free, color: Colors.deepPurple),
                title: const Text('Container Widget'),
                subtitle: const Text('Boyutlandırma, kenarlık ve arka plan rengi gibi görsel özellikleri yöneten çok amaçlı bir kutudur.'),
              ),
            ),
           Card( //9. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.flash_on, color: Colors.yellowAccent),
                title: const Text('Hot Reload Gücü'),
                subtitle: const Text('Kodda yapılan değişiklikleri arayüze hızlıca yansıtan, süreci hızlandıran özelliktir.'),
            
              ),
            ),
           Card( //10. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.text_fields, color: Colors.redAccent),
                title: const Text('TextStyle ile Özelleştirme'),
                subtitle: const Text('Yazıların rengini, boyutunu ve kalınlığını değiştirerek tasarımın okunabilirliğini artırın.'),
              ),
            ),
            Card( //11. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.open_in_full, color: Colors.deepOrange),
                title: const Text('Expanded Widget'),
                subtitle: const Text('Row veya Column içinde bir parçacığın kalan tüm boşluğu kaplamasını sağlayarakn bir widgettır (parçacıktır).'),
              ),
            ),
           Card( //12. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.center_focus_strong, color: Colors.cyan),
                title: const Text('Center Widget'),
                subtitle: const Text('İçindeki parçacığı hem yatayda hem dikeyde tam merkeze hizalamak için kullanılan bir widget (parçacık) tır.'),
              ),
            ),
            Card( //13. kart
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.space_bar, color: Colors.indigo),
                title: const Text('SizedBox Kullanımı'),
                subtitle: const Text('Ana amacı belli boyutlar atayabildiğimiz ve içine widget koyabildiğimiz görünmeyen bir kutu koymaktır, birde widgetlar arasında sabit boşluklar bırakmak için de kullanılabilir.'),
              ),
            ),
                      Card( //14. kart
               elevation: 5,
               child: ListTile(
                  leading: const Icon(Icons.insert_emoticon, color: Colors.green),
                  title: const Text('Icon Widget'),
                  subtitle: const Text('Uygulama içinde ikon resimleri kullanmamızı sağlayan, hazır kütüphaneden gelen simgeler eklememimizi sağlayan yapdır, hatta bu uygulamadaki tüm ikonlar bu hazır yapılardır.'),
              ),
              ),
                       Card( //15. kart
               elevation: 5,
               child: ListTile(
                 leading: const Icon(Icons.unfold_more, color: Colors.brown),
                 title: const Text('EdgeInsets Mantığı'),
                 subtitle: const Text('Padding veya Margin verirken kenarlardan ne kadar boşluk bırakılacağını belirleyen parametredir.'),
               ),
              ),
            ],
         ),
       ),
     );
   }
 }