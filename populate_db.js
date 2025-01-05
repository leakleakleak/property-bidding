const sqlite3 = require("sqlite3").verbose();

// Initialize database
const db = new sqlite3.Database("./bidding_system.db", (err) => {
  if (err) return console.error(err.message);
  console.log("Connected to the database.");
});

// Create tables
const setupDatabase = () => {
  db.serialize(() => {
    db.run(`CREATE TABLE property_listing (
      id INTEGER PRIMARY KEY,
      street_address TEXT,
      city_address TEXT,
      current_winning_bid_amount REAL DEFAULT 0,
      last_bid_value REAL DEFAULT 0,
      images TEXT,
      lat INTEGER,
      long INTEGER
    );`);

    db.run(`CREATE TABLE your_bids (
      id INTEGER PRIMARY KEY,
      outbid_counts INTEGER DEFAULT 0,
      active_counts INTEGER DEFAULT 0,
      winning_bid_counts INTEGER DEFAULT 0
    );`);

    db.run(`CREATE TABLE bids (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      property_id INTEGER,
      user_id INTEGER,
      bid_amount REAL,
      FOREIGN KEY (property_id) REFERENCES property_listing(id)
    );`);
  });
};

// Insert sample data
const insertSampleData = () => {
  db.serialize(() => {
    db.run(`INSERT INTO property_listing (street_address, city_address, current_winning_bid_amount, images, lat, long) VALUES 
      ('123 Main St', 'New Oreleans, LA 70122' , 0 , '["image1.jpg", "image2.jpg"]',  14.760271, 120.902920),
      ('456 Elm St', '24 Washington Ave.' , 999999,'["image3.jpg"]',14.408216, 121.0328574),
      ('789 Oak St', '289 Hempstead St.' ,0, '["image4.jpg", "image5.jpg"]', 15.175988151669037, 120.79804030322211);
`);

    db.run(`INSERT INTO your_bids DEFAULT VALUES;`);
  });
};

// Function to place a bid
const placeBid = (propertyId, userId, bidAmount) => {
  db.serialize(() => {
    // Insert the new bid into the 'bids' table
    db.run(
      `INSERT INTO bids (property_id, user_id, bid_amount) VALUES (?, ?, ?)`,
      [propertyId, userId, bidAmount],
      (err) => {
        if (err) {
          console.error("Error inserting new bid:", err);
          return;
        }
        console.log("New bid placed successfully.");
      }
    );
    // Increment active_counts
    db.run(
      `UPDATE your_bids SET active_counts = active_counts + 1 WHERE id = ?`,
      [userId],
      (err) => {
        if (err) console.error("Error updating active counts:", err);
      }
    );

    // Get the current winning bid amount for the property
    db.get(
      `SELECT current_winning_bid_amount FROM property_listing WHERE id = ?`,
      [propertyId],
      (err, row) => {
        if (err) {
          console.error("Error fetching current winning bid:", err);
          return;
        }

        const currentWinningBid = row.current_winning_bid_amount;

        if (bidAmount > currentWinningBid) {
          // Update the current winning bid and difference
          db.run(
            `UPDATE property_listing 
             SET current_winning_bid_amount = ?,
                 last_bid_value = ?
             WHERE id = ?`,
            [bidAmount, currentWinningBid, propertyId],
            (err) => {
              if (err) console.error("Error updating winning bid:", err);
            }
          );

          // Increment winning_bid_counts for the user
          db.run(
            `UPDATE your_bids SET winning_bid_counts = winning_bid_counts + 1 WHERE id = ?`,
            [userId],
            (err) => {
              if (err) console.error("Error updating winning bid counts:", err);
            }
          );
        } else {
          // Increment outbid_counts for the user
          db.run(
            `UPDATE your_bids SET outbid_counts = outbid_counts + 1 WHERE id = ?`,
            [userId],
            (err) => {
              if (err) console.error("Error updating outbid counts:", err);
            }
          );
        }
      }
    );
  });
};

// init
setupDatabase();
insertSampleData();
// Place a bid (propertyId, userId, bidAmount)
placeBid(1, 1, 90000);
placeBid(2, 1, 30000);
placeBid(3, 1, 10000);

const placeBidWithDelay = (propertyId, userId, bidAmount, delayInMillis) => {
  setTimeout(() => {
    placeBid(propertyId, userId, bidAmount);
  }, delayInMillis);
};

placeBidWithDelay(1, 1, 200000, 5000);

// Print results
setTimeout(() => {
  db.all(`SELECT * FROM property_listing`, [], (err, rows) => {
    if (err) console.error("Error fetching property listings:", err);
    else console.log("Property Listings:", rows);
  });

  db.all(`SELECT * FROM your_bids`, [], (err, rows) => {
    if (err) console.error("Error fetching user bids:", err);
    else console.log("Your Bids:", rows);
  });
}, 1000);
