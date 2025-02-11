# BMI Calculator App

A simple and responsive BMI (Body Mass Index) calculator app built with Flutter. This app allows users to calculate their BMI based on their height, weight, and age. It supports both light and dark themes and is designed to work seamlessly on phones and tablets in both portrait and landscape orientations.

---

## Features

- **BMI Calculation**: Calculate your BMI based on height, weight, and age.
- **Responsive Design**: Works on phones and tablets in both portrait and landscape modes.
- **Theme Support**: Switch between light and dark themes.
- **Interactive UI**: Slider for height, buttons for weight and age adjustments.
- **Result Page**: Displays BMI result, category, and feedback in a visually appealing way.
- **Animations**: Smooth animations for the BMI result and circular progress indicator.

---

## Screenshots

| Light Theme | Dark Theme |
|-------------|------------|
| ![Light Theme](screenshots/light_theme.png) | ![Dark Theme](screenshots/dark_theme.png) |

---

## Getting Started

### Prerequisites

- Flutter SDK: Make sure you have Flutter installed on your machine. If not, follow the [official installation guide](https://flutter.dev/docs/get-started/install).
- IDE: Android Studio, VS Code, or any other IDE with Flutter support.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/MrNegative001/flutter_bmi_calculator_D_jallabiya.git
   cd flutter_bmi_calculator_D_jallabiya
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

---

## Project Structure

Here’s an overview of the project structure:

```
lib/
├── components/
│   ├── app_themes.dart
│   ├── appbar_components.dart
│   ├── buttons.dart
│   ├── calculator_brain.dart
│   ├── constants.dart
│   ├── value_card.dart
├── screens/
│   ├── app_body.dart
│   ├── result_page.dart
├── main.dart
```

---

## Code Overview

### Key Files

1. **`main.dart`**:
   - Entry point of the app.
   - Manages theme switching using `GetX`.

2. **`app_body.dart`**:
   - Contains the main UI for the BMI calculator.
   - Includes widgets for height, weight, and age input.

3. **`result_page.dart`**:
   - Displays the BMI result, category, and feedback.
   - Uses a circular progress indicator with animations.

4. **`calculator_brain.dart`**:
   - Contains the logic for BMI calculation, result categorization, and feedback.

5. **`constants.dart`**:
   - Stores all colors, text styles, and responsive design constants.

6. **`buttons.dart`**:
   - Contains reusable button widgets like `RectangularButton` and `FooterButton`.

7. **`appbar_components.dart`**:
   - Contains custom app bar widgets like `AppBarTitle` and `AppBarActions`.

8. **`value_card.dart`**:
   - Contains reusable card widget like `Weight ValueCard` and `Age ValueCard`.

---

## Dependencies

This project uses the following packages:

- **`cupertino_icons`**: For icons used in the app.
- **`percent_indicator`**: For the circular progress indicator on the result page.
- **`font_awesome_flutter`**: For icons used in the app.
- **`get`**: For state management and theme switching.

To add these dependencies, check the `pubspec.yaml` file.

---

## How to Use

1. **Select Gender**:
   - Tap on the "MALE" or "FEMALE" card to select your gender.

2. **Adjust Height**:
   - Use the slider to set your height. The ruler on the side shows the height in centimeters.

3. **Adjust Weight and Age**:
   - Use the "+" and "-" buttons to adjust your weight and age.

4. **Calculate BMI**:
   - Tap the "CALCULATE" button to see your BMI result.

5. **View Result**:
   - The result page displays your BMI, category (e.g., Underweight, Normal), and feedback.

6. **Switch Theme**:
   - Use the sun/moon icons in the app bar to switch between light and dark themes.

---

## Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to open a pull request.

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeatureName`).
3. Commit your changes (`git commit -m Add_some_feature`).
4. Push to the branch (`git push origin feature/YourFeatureName`).
5. Open a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

- Thanks to the Flutter team for the amazing framework.
- Inspired by the design of the BMI calculator in the [Flutter Apprentice](https://www.raywenderlich.com/books/flutter-apprentice) book.

---

## Contact

If you have any questions or feedback, feel free to reach out:

- **Email**: anasyusufjallabiya@gmail.com
- **GitHub**: [MrNegative001](https://github.com/MrNegative001)
