# 🌙 DreamTrack – Flutter UI Sleep Tracker

**DreamTrack** is a beautifully animated **UI-only** sleep tracker app built with Flutter. It showcases modern frontend design using custom widgets, smooth animations, and a manual dark mode toggle — **no backend, no logic**, just pure visual perfection.

<p align="center">
  <img src="preview.gif" width="450" alt="DreamTrack UI demo"/>
</p>

---

## ✨ Features

- 🌕 Glowing Moon Header (floating animation)
- 🌀 Animated Sleep Progress Ring (CustomPainter)
- 🪞 Glassmorphic Stat Cards (Quality, Bed Time, Wake Time)
- 😴 Scrollable Mood Emoji Carousel
- 🌗 Manual Dark/Light Mode Toggle
- 📱 Mobile-first, responsive layout
- 🎨 Material 3 + Custom themes

---

## 🛠️ Tech Stack

| Tech         | Description                     |
|--------------|---------------------------------|
| 🧩 Flutter 3.x | Cross-platform UI framework    |
| 🎯 Dart       | Core programming language       |
| 🎨 Material 3 | Modern design and components    |
| 🧠 CustomPainter | Used for the animated ring  |
| 🌙 ThemeMode + InheritedWidget | Dark mode logic |

---

## 📦 Getting Started

1. Clone the repo
```bash
git clone https://github.com/your-username/dreamtrack_flutter_ui.git
cd dreamtrack_flutter_ui
```
2. Install dependencies
```bash
flutter pub get
```
3. Create platform folders (if needed)
```bash
flutter create .
```

4. Run the app
```bash
flutter run -d ios     # or macos / chrome / android
```
---

## 🧪 Current UI State

**✅ First Push – Foundation**
- All core UI components created: Glowing Moon, Sleep Ring, Stat Cards, Mood Chips  
- Manual dark mode toggle added  
- Initial layout and animation structure implemented

**✅ Second Push – Layout Polish**
- Resized sleep ring using `SizedBox` and reduced canvas size  
- Improved vertical spacing across all sections  
- Adjusted ring animation and alignment  
- Final visual layout matches mockup with clean hierarchy

---

## 📄 License


- This project is licensed under the MIT License.
- You are free to use, remix, and adapt this project for personal or commercial use.
---

##
📝 Attribution is required 
— please credit: "UI design by Dhairya @ GreyScript Technologies"
- Include this credit in your app’s About section, README, or documentation.
---

##
🚀 Roadmap
- Improve progress ring responsiveness for smaller devices
- Enhance spacing and shadows on stat cards
- Add mood selection interactivity
- Add onboarding splash or swipe cards
- Convert into reusable UI kit for GreyScript client projects
---

##
🙌 Acknowledgements
Crafted with care by GreyScript Technologies

If you use this project, drop us a ⭐ or tag us on LinkedIn/Twitter — we’d love to see what you build!
