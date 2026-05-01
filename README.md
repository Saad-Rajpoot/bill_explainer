# بجلی سمجھو — Bijli Samjho

**Pakistan Electricity Bill Analyzer** — Scan any WAPDA/DISCO bill, get a plain-Urdu explanation of every charge, and detect overcharging automatically.

---

## 🗂️ Project Structure

```
lib/
├── core/
│   ├── constants/     # AppColors, AppStrings (Urdu), AppDimensions, WapdaTariffs
│   ├── errors/        # Failures + Exceptions
│   ├── network/       # NetworkInfo (offline-first)
│   ├── router/        # GoRouter (app_router.dart)
│   ├── usecases/      # UseCase base class
│   └── utils/         # TariffCalculator, BillParser, UrduFormatter
│
├── data/
│   ├── datasources/
│   │   ├── local/     # Isar (BillLocalDatasource, SettingsDatasource)
│   │   └── remote/    # OcrService (ML Kit), SupabaseDatasource
│   ├── models/        # BillModel (@collection), UserSettingsModel
│   └── repositories/  # BillRepositoryImpl
│
├── domain/
│   ├── entities/      # Bill, BillCharge, BillExplanation
│   ├── repositories/  # BillRepository (abstract)
│   └── usecases/      # ScanBill, ExplainBill, GetBillHistory, CompareBills
│
├── presentation/
│   ├── blocs/         # BillScanBloc, BillExplainBloc, BillHistoryBloc
│   ├── pages/         # All 8 screens
│   └── widgets/       # ChargeCardWidget, etc.
│
├── injection_container.dart   # GetIt DI
└── main.dart
```

---

## ⚡ Features

| Feature | Status |
|---------|--------|
| Bill photo scan (Camera + Gallery) | ✅ |
| On-device OCR (Google ML Kit, FREE) | ✅ |
| Urdu explanation of every charge | ✅ |
| NEPRA tariff validation (all 8 DISCOs) | ✅ |
| Overcharge detection (traffic light) | ✅ |
| Auto WhatsApp complaint generation | ✅ |
| Bill history with fl_chart | ✅ |
| Side-by-side bill comparison | ✅ |
| Offline-first (Isar DB) | ✅ |
| Supabase background sync | ✅ |
| RTL Urdu font (Noto Nastaliq) | ✅ |
| Dark mode | ✅ |

---

## 🚀 Setup

### 1. Install dependencies

```bash
flutter pub get
```

### 2. Generate Isar schemas

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 3. Add fonts

Download and place in `assets/fonts/`:
- [Noto Nastaliq Urdu](https://fonts.google.com/noto/specimen/Noto+Nastaliq+Urdu) — Regular + Bold
- [Roboto](https://fonts.google.com/specimen/Roboto) — Regular, Medium, Bold

### 4. Configure Supabase

In `lib/main.dart`, replace:
```dart
const String _supabaseUrl = 'YOUR_SUPABASE_URL';
const String _supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
```

Run `supabase_schema.sql` in your Supabase SQL Editor.

### 5. Run

```bash
flutter run
```

---

## 🧪 Tests

```bash
# Unit tests
flutter test test/core/utils/tariff_calculator_test.dart
flutter test test/core/utils/bill_parser_test.dart

# Widget tests
flutter test test/presentation/widgets/charge_card_widget_test.dart

# All tests
flutter test
```

---

## 📦 Key Packages

| Package | Purpose |
|---------|---------|
| `flutter_bloc` | State management |
| `isar` | Local offline database |
| `google_mlkit_text_recognition` | Free on-device OCR |
| `supabase_flutter` | Cloud sync (free tier) |
| `go_router` | Navigation |
| `get_it` | Dependency injection |
| `fl_chart` | Bill history charts |
| `dartz` | Functional Either types |

---

## 💡 Critical Rules (enforced)

1. **No hardcoded strings** — all in `AppStrings` (Urdu)
2. **No business logic in BLoC** — only in UseCases
3. **No direct Supabase calls in BLoC** — only through Repository
4. **Offline-first** — Isar is always source of truth
5. **Image compression mandatory** — before OCR and upload
6. **All error messages in Urdu**

---

## 📐 NEPRA Tariffs

Tariff slabs are hardcoded in `lib/core/constants/wapda_tariffs.dart`.  
**Update manually** when NEPRA revises rates (FY determination).

Current: **NEPRA FY 2024-25**

---

## 🏗️ Architecture

```
UI → BLoC → UseCase → Repository → DataSource
              ↑                         ↓
         (domain)               (Isar / ML Kit / Supabase)
```
