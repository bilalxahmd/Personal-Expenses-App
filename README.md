# General Expenses App

A **Flutter** application that helps users track and manage their personal expenses efficiently. The app allows users to add, view, and delete expenses with details such as title, amount, and date. It also provides a visual representation of weekly spending through dynamic charts.

## Features

- **Add Expenses**: Easily add new expenses by providing a title, amount, and date.
- **View Expenses**: View a list of all your expenses in a clean and organized manner.
- **Delete Expenses**: Remove any expense from the list with a simple tap.
- **Weekly Expense Chart**: Visual representation of your spending over the past week.
- **Responsive UI**: Adaptive design for both portrait and landscape orientations.
- **Platform Adaptive Widgets**: Seamless experience on both iOS and Android platforms.
- **Persistent Data**: (Planned for future) Save and retrieve data using local storage or cloud services.
- **Dark Mode Support**: (Planned for future) Support for dark mode for better usability in low-light conditions.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- **Flutter SDK**: Ensure you have Flutter installed on your system.
  - [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Comes bundled with Flutter SDK.
- **Android Studio or VS Code**: Recommended IDEs for Flutter development.
- **Emulator or Physical Device**: For running and testing the application.

### Installation

1. **Clone the Repository**

    ```bash
    git clone https://github.com/your_username/personal_expenses_app.git
    ```

2. **Navigate to the Project Directory**

    ```bash
    cd personal_expenses_app
    ```

3. **Fetch Dependencies**

    ```bash
    flutter pub get
    ```

4. **Configure Platforms**

   - **For Android**:
     - Ensure you have an Android emulator set up or connect a physical Android device.
   - **For iOS**:
     - Ensure you have Xcode installed and configured.
     - Run the following command to set up iOS dependencies:
       ```bash
       cd ios
       pod install
       cd ..
       ```

### Running the App

- **On Android Emulator or Device**

    ```bash
    flutter run
    ```

- **On iOS Simulator or Device**

    ```bash
    flutter run
    ```

- **Specifying Device**

    List available devices:

    ```bash
    flutter devices
    ```

    Run on a specific device:

    ```bash
    flutter run -d device_id
    ```

## Usage

### Adding a New Transaction

1. Tap the **Add** button (`+`) located at the top right corner of the app.
2. Enter the **Title**, **Amount**, and **Date** of the expense.
3. Tap **Add Transaction** to save the expense.

### Viewing Transactions

- All added transactions are displayed in a scrollable list on the home screen.
- Each item shows the expense title, amount, and date.

### Deleting a Transaction

- Swipe the transaction item to the left (or tap the delete icon) to remove it from the list.
- A confirmation dialog can be implemented for accidental deletions. *(Planned)*

### Viewing Charts

- The top section displays a bar chart summarizing your expenses over the past week.
- Each bar represents a day's total spending, providing quick insights into your spending habits.

## Project Structure

### Overview

The project follows a modular structure, separating concerns into different directories and files for better maintainability and scalability.

### Key Components

#### 1. `main.dart`

- **Description**: Entry point of the application.
- **Responsibilities**:
  - Sets up the MaterialApp.
  - Defines theme data and routes.
  - Initializes the home screen (`MyHomePage`).

#### 2. `models/transaction.dart`

- **Description**: Defines the `Transaction` model.
- **Fields**:
  - `id`: Unique identifier for each transaction.
  - `title`: Description of the expense.
  - `amount`: Monetary value of the expense.
  - `date`: Date when the expense occurred.

#### 3. `widgets/transaction_input.dart`

- **Description**: Widget for inputting new transactions.
- **Features**:
  - Form fields for title, amount, and date.
  - Validates input before submission.
  - Communicates with the parent widget to add new transactions.

#### 4. `widgets/transaction_list.dart`

- **Description**: Displays the list of all transactions.
- **Features**:
  - Utilizes `ListView.builder` for efficient rendering.
  - Each item is represented using `TransactionItem`.
  - Supports deletion of transactions.

#### 5. `widgets/transaction_item.dart`

- **Description**: Represents a single transaction in the list.
- **Features**:
  - Shows formatted amount, title, and date.
  - Includes delete functionality with an icon button.
  - Uses a `Card` layout for aesthetic presentation.

#### 6. `widgets/chart.dart`

- **Description**: Displays a summary chart of expenses over the last 7 days.
- **Features**:
  - Aggregates transaction data by day.
  - Passes data to `ChartBar` widgets for individual bars.
  - Provides a quick visual overview of spending patterns.

#### 7. `widgets/chart_bar.dart`

- **Description**: Represents an individual bar in the weekly expense chart.
- **Features**:
  - Displays spending amount and day label.
  - Adjusts height proportionally based on the maximum spending in the week.

#### 8. `utils/constants.dart`

- **Description**: Stores constant values and configurations used across the app.
- **Features**:
  - Defines color palettes, text styles, and other reusable constants.

## Dependencies

The project uses the following dependencies:

| Dependency | Version | Description                                  |
|------------|---------|----------------------------------------------|
| flutter    | ^2.5.0  | Flutter SDK for building the application.    |
| intl       | ^0.17.0 | Formatting dates and numbers.                |
| cupertino_icons | ^1.0.2 | Icons consistent with iOS design language. |

**Development Dependencies**:

| Dependency       | Version | Description                             |
|------------------|---------|-----------------------------------------|
| flutter_test     | any     | Testing framework for Flutter apps.     |

Add these dependencies to your `pubspec.yaml` file and run `flutter pub get` to install them.

## Future Enhancements

- **Persistent Storage**: Implement local storage using SQLite or Hive to save transactions permanently.
- **Authentication**: Add user authentication to secure personal data.
- **Expense Categories**: Allow categorization of expenses for better organization.
- **Monthly and Yearly Charts**: Extend chart functionality to display monthly and yearly spending.
- **Export Data**: Enable exporting expense data to formats like CSV or PDF.
- **Multi-language Support**: Provide support for multiple languages.
- **Dark Mode**: Implement dark mode for better usability in low-light environments.
- **Notifications**: Add reminders for recording expenses or budgeting alerts.

## Contact

- **Author**: Bilal Ahmed
- **Email**: bilaltahirb10@gmail.com
- **GitHub**: [bilalxahmd](https://github.com/bilalxahmd)
- **LinkedIn**: [Bilal Ahmed](https://www.linkedin.com/in/bilal-ahmed-233a20246)

Feel free to reach out for any questions or collaboration opportunities!

---
