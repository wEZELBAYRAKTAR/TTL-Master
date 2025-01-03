TTL Master

![Black and White Futuristic Tech Presentation](https://github.com/user-attachments/assets/47d32f11-8ff4-43ac-8425-bbdabdcb64f5)


TTL Master v1 - wEZELBAYRAKTAR

📋 Proje Hakkında
TTL Master, Windows işletim sistemlerinde Time To Live (TTL) değerlerini değiştirmek için kullanılan basit bir batch (toplu iş) dosyasıdır. Bu araç, ağ trafiğinizi optimize etmek ve belirli senaryolarda internet paylaşımını sınırsız hale getirmek amacıyla geliştirilmiştir.

TTL değeri, bir veri paketinin ağ üzerinde dolaşabileceği maksimum süreyi belirler. Bu değer, ağ döngülerini önlemeye yardımcı olurken, bazı durumlarda TTL manipülasyonu ağ performansını veya erişilebilirliğini etkileyebilir.

✨ Özellikler
Yönetici İzin Kontrolü: Batch dosyası, yönetici (admin) olarak çalıştırılmadıysa otomatik olarak yönetici yetkisi ister.
TTL Değerini Görüntüleme: Mevcut TTL değerini otomatik olarak algılar ve görüntüler.
TTL Değişikliği: Kullanıcıya TTL değerini 60 (bypass) veya 128 (varsayılan) olarak ayarlama seçeneği sunar.
Renk Kodlaması: TTL değerine bağlı olarak komut istemi penceresinin arka plan ve metin renklerini değiştirir, böylece kullanıcıya görsel bir geri bildirim sağlar.
Kayıt Defteri Değişiklikleri: IPv4'ü IPv6'ya tercih etme veya geri alma işlemlerini gerçekleştirir.
ASCII Sanatı: Profesyonel bir görünüm için komut istemi penceresinde ASCII sanatı gösterir.
🔧 Kullanım
TTL Değerini Kontrol Etme:

Batch dosyasını çalıştırdığınızda, mevcut TTL değeri otomatik olarak algılanır ve ekranda görüntülenir.
Arka plan rengi, TTL değerine bağlı olarak kırmızı (TTL=128) veya yeşil (TTL≠128) olarak ayarlanır.
TTL Değeri Ayarlama:

[1] 60 (bypass): TTL değerini 60 olarak ayarlar ve IPv4'ü IPv6'ya tercih eder.
[2] 128 (default): TTL değerini 128 olarak ayarlar ve IPv4 tercihini geri alır.
[3] Exit: Batch dosyasını sonlandırır.
Değişiklikleri Uygulama:

TTL değeri değiştirildikten sonra, en iyi sonuçlar için sistemi yeniden başlatmanız önerilir.
🛠️ Kurulum
İndirme:

GitHub Repository adresinden proje dosyalarını indirin veya klonlayın.

git clone https://github.com/wEZELBAYRAKTAR/TTL-Master


Çalıştırma:

İndirdiğiniz klasöre gidin ve TTL-Master.bat dosyasını çift tıklayarak çalıştırın.
Yönetici izinleri istenirse, onaylayarak devam edin.

🤝 Katkıda Bulunma
Katkıda bulunmak isterseniz, lütfen CONTRIBUTING.md dosyasını inceleyin. Her türlü katkıya açığız!

📜 Lisans
Bu proje MIT Lisansı ile lisanslanmıştır. Daha fazla bilgi için LICENSE dosyasına bakabilirsiniz.

📄 Ek Açıklamalar
Güvenlik ve Kullanım Uyarıları
Yönetici İzinleri: Bu batch dosyası, sistem ayarlarını değiştirmek için yönetici yetkileri gerektirir. Script'i çalıştırmadan önce sisteminizin yedeğini almanız önerilir.
Kayıt Defteri Değişiklikleri: Kayıt defterinde yapılan değişiklikler sisteminizin ağ davranışını etkileyebilir. Yanlış değişiklikler ağ bağlantılarınızı olumsuz etkileyebilir. Değişiklik yapmadan önce kayıt defterinizi yedeklemeniz önemlidir.
TTL Değerleri: TTL değerlerini değiştirmenin ağ performansı ve paket dolaşımı üzerinde etkileri olabilir. Değerleri dikkatli bir şekilde ayarlamak önemlidir.
Kullanım Amacı: Bu araç, ağ yapılandırmanızı optimize etmek veya belirli ağ senaryolarında kullanılmak üzere tasarlanmıştır. Uygulamanın kötü niyetli kullanımını önlemek için dikkatli olunmalıdır.
İletişim
GitHub: https://github.com/wEZELBAYRAKTAR/TTL-Master

📚 Kaynaklar
Microsoft Docs - Netsh Command
Microsoft Docs - Registry Editor
Batch File Color Codes
