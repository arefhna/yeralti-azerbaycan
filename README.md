# Yeraltı Azərbaycan

> Mif qatlarını qazan offline idle mining oyunu.

**Yeraltı Azərbaycan** — Flutter ilə yazılmış, tam offline işləyən, Azərbaycan dilində olan idle mining oyunudur. Oyunçu yeraltına qazaraq müxtəlif qatları keçir, resurs toplayır, alətlərini və işçilərini təkmilləşdirir, mifoloji bosslarla döyüşür və prestige edərək daha güclü qayıdır.

---

## 🎮 Oyun haqqında

- **Janr:** Idle / Incremental Mining
- **Platforma:** Android (Flutter)
- **Dil:** Azərbaycan
- **Rejim:** Tam offline (server, hesab, internet tələb olunmur)
- **Mövzu:** Yeraltı Azərbaycan — mif qatları (Dədə Qorqud, Div, Əjdaha, Simurq)

## ⛏️ Əsas mexanikalar

- Şaquli şaxtada qazma və resurs yığımı
- 8 mif qatı, hər birində öz mineralı və bossu
- Avtomatik işçilər (idle qazanc)
- Alət sistemi (əsas qazma + xüsusi qazmalar)
- İki valyuta: **Qazıntı** və **Mif Qırıntısı**
- **Prestige** sistemi (sıfırla, daimi bonus qazan)
- Offline qazanc (oyun bağlı olanda da qazma davam edir)
- Kolleksiya: minerallar, artefaktlar, boss kartları
- Nailiyyətlər
- Gündəlik giriş mükafatı və gündəlik tapşırıqlar
- Həftəlik xüsusi hadisələr (real tarixə əsaslanan, serversiz)

## 🗺️ Qatlar

| # | Qat | Əsas resurs | Boss |
|---|------|--------------|------|
| 1 | Torpaq | Gil, daş, kömür | — |
| 2 | Daş | Dəmir, mis, kristal | Daş Golem |
| 3 | Kömür | Qrafit, kükürd, od daşı | Od Ruhu |
| 4 | Dədə Qorqud | Gümüş, kitabə | Ozan Kölgəsi |
| 5 | Div | Qızıl, sehrli daş | Div Başçısı |
| 6 | Əjdaha | Almaz, lava kristalı | Əjdaha |
| 7 | Simurq | Ulduz tozu, işıq kristalı | Simurq Kölgəsi |
| 8 | Mif Dərini | Yeraltı Xəzinə | Prestige Qapısı |

## 🛠️ Texnologiya

- **Flutter** (Dart)
- **Riverpod** — state management
- **Hive** — lokal yaddaş
- **GitHub Actions** — pulsuz APK/AAB build

## 📦 Quraşdırma

```bash
git clone https://github.com/<istifadəçi>/yeralti-azerbaycan.git
cd yeralti-azerbaycan
flutter pub get
flutter run
