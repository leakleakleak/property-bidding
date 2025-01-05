const express = require("express");
const sqlite3 = require("sqlite3").verbose();
const app = express();
const port = 3000;

const cors = require("cors");
app.use(cors());

// Initialize database
const db = new sqlite3.Database("./bidding_system.db", (err) => {
  if (err) return console.error(err.message);
  console.log("Connected to the database.");
});

// Function to get all property listings
const getPropertyListings = (req, res) => {
  db.all(`SELECT * FROM property_listing`, [], (err, rows) => {
    if (err) {
      console.error("Error fetching property listings:", err);
      res.status(500).send("Error fetching property listings");
    } else {
      res.status(200).json(rows);
    }
  });
};

// Function to get all user bids
const getUserBids = (req, res) => {
  db.all(`SELECT * FROM your_bids`, [], (err, rows) => {
    if (err) {
      console.error("Error fetching user bids:", err);
      res.status(500).send("Error fetching user bids");
    } else {
      res.status(200).json(rows);
    }
  });
};

// Function to get bids_lst
const getUserBidlist = (req, res) => {
  db.all(`SELECT * FROM bids`, [], (err, rows) => {
    if (err) {
      console.error("Error fetching user bids:", err);
      res.status(500).send("Error fetching user bids");
    } else {
      res.status(200).json(rows);
    }
  });
};

// Function to get the latest bid for a property_id
const getUserLatestBidOfPropertyId = (req, res) => {
  // Query to fetch the latest bid for the given property_id
  const query = `
    SELECT property_id, MAX(bid_amount) AS latest_bid
    FROM bids
    GROUP BY property_id;
  `;

  db.all(query, [], (err, rows) => {
    if (err) {
      console.error("Error fetching latest bids:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    if (rows.length === 0) {
      res.status(200).json({ error: "No bids found" });
    } else {
      res.json(rows);
    }
  });
};

// Define routes
app.get("/api/property-listings", getPropertyListings);
app.get("/api/user-bids", getUserBids);
app.get("/api/bid-list", getUserBidlist);
app.get("/api/latest-bid", getUserLatestBidOfPropertyId);

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
