# 🛍️ Flutter E-Commerce App

A modern, clean, and responsive **E-Commerce Mobile Application** built with **Flutter** and **Dart**. Designed with modern UI/UX principles, Material 3 design system, and clean architecture.

---

## 📱 Features

- **🔐 Authentication Flow**
  - Clean & elegant Login and Registration screens.
  - Form validations with custom text inputs and secure password fields.

- **🧭 Main Navigation**
  - Smooth Bottom Navigation Bar supporting quick navigation between **Discover / Home**, **Cart**, and **Account**.

- **🔍 Discover & Catalog**
  - Live search input & filter action button.
  - Interactive category selector chips (All, T-shirts, Jeans, Shoes, Jackets, etc.).
  - Dynamic product listing with quick quantity adjustment and interactive cards.

- **📄 Product Details**
  - Detailed product view displaying ratings, reviews, pricing, description, and high-resolution visuals.
  - Easy add-to-cart workflow.

- **🛒 Shopping Cart**
  - Real-time quantity increment/decrement controls.
  - Price summary and checkout flow.

- **🧩 Reusable UI Components**
  - `CustomButton`: Reusable primary buttons.
  - `CustomTextField`: Reusable input field with password visibility toggle.
  - `ProductCard`: Interactive card with quantity modifier and delete actions.

---

## 📂 Project Structure

```text
ecommerce_app/
├── assets/
│   └── images/              # Static image assets (e.g. t-shirt.png)
├── lib/
│   ├── main.dart            # Application entry point & route definitions
│   ├── models/
│   │   └── product_model.dart  # Product data model
│   ├── screens/
│   │   ├── login_screen.dart     # Sign In screen
│   │   ├── register_screen.dart  # Sign Up screen
│   │   ├── main_screen.dart      # Shell with BottomNavigationBar
│   │   ├── discover_screen.dart  # Product listing & search
│   │   ├── details_screen.dart   # Product details screen
│   │   └── cart_screen.dart      # Shopping cart & checkout
│   └── widgets/
│       ├── custom_button.dart    # Custom styled button
│       ├── custom_text_field.dart # Form text fields
│       └── product_card.dart     # Reusable product list card
├── pubspec.yaml             # Dependencies and assets configuration
└── README.md                # Project documentation
```

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `>=3.13.3`)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or physical device

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ZyadAstal/Ecommerce_App.git
   cd Ecommerce_App
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

---

## 🛠️ Tech Stack & Dependencies

- **Framework:** [Flutter](https://flutter.dev/) (Material 3)
- **Language:** [Dart](https://dart.dev/)
- **Icons:** `cupertino_icons`
- **Design System:** Custom theme with `#2E63E6` primary brand palette

---

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.
