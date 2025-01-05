# Property Bidding App [Dart, Node Js, Sqlite]

## Overview
a project evaluation assessment.

## Key Features
- **Bid Management**: Track bids, winning bids, and outbidded cases.
- **Data Population**: Predefined datasets to simulate realistic scenarios.
- **Cross-Platform Compatibility**: Runs seamlessly in web environments such as Edge or Chrome.

## Steps to Run the App
1. **Populate the Database**:
   - Run the `populate_db.js` script to initialize the database with sample data.
     ```bash
     node populate_db.js
     ```

2. **Start the Backend API**:
   - Start the backend server by executing the `app.js` file.
     ```bash
     node app.js
     ```

3. **Run the Frontend**:
   - Launch the Flutter application by running the `main.dart` file. Ensure you use a browser like Edge or Chrome for optimal performance.
     ```bash
     flutter run -d chrome
     ```

## Sample Data Description
The application initializes with the following sample data:

1. **Winning Bid with Previous Bid Winner Value**:
   - This dataset highlights a scenario where the current bid surpasses the previous highest bid to show the increase in winning bid the user placed.

2. **Outbid Case**:
   - A record where a bid value (e.g., `999999`) is outbid by a higher offer, showing the bid difference.

3. **Initial Winning Bid**:
   - Represents a scenario where a bid is immediately recognized as the winner, serving as the starting point for the bidding process.

## Notes
- Ensure all dependencies for the backend (`app.js`) and frontend (`main.dart`) are installed before running the application.
- Use the provided scripts in sequence to avoid initialization issues.



