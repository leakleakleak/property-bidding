const express = require("express");
const sqlite3 = require("sqlite3").verbose();
const swaggerUi = require("swagger-ui-express");
const swaggerDocs = require("./swaggerConfig");
const app = express();
const port = 3000;
const cors = require("cors");

app.use(cors());
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));

const db = new sqlite3.Database("./bidding_system.db", (err) => {
  if (err) return console.error(err.message);
  console.log("Connected to the database.");
});

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

const getUserLatestBidOfPropertyId = (req, res) => {
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

/**
 * @swagger
 * /api/property-listings:
 *   get:
 *     tags: [property bidding]
 *     summary: Get a list of property listings
 *     description: Fetches all the property listings.
 *     responses:
 *       200:
 *         description: A list of property listings
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   street_address:
 *                     type: string
 *                   city_address:
 *                     type: string
 *                   current_winning_bid_amount:
 *                     type: integer
 *                   last_bid_value:
 *                     type: integer
 *                   images:
 *                     type: array
 *                     items:
 *                        type: string
 *                   lat:
 *                     type: number
 *                   long:
 *                     type: number
 *
 */
app.get("/api/property-listings", getPropertyListings);

/**
 * @swagger
 * /api/user-bids:
 *   get:
 *     tags: [property bidding]
 *     summary: Get a list of user bids
 *     description: Fetches all the user bids.
 *     responses:
 *       200:
 *         description: A list of user bids
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   outbid_counts:
 *                     type: integer
 *                   active_counts:
 *                     type: integer
 *                   winning_bid_counts:
 *                     type: integer
 *
 *
 */
app.get("/api/user-bids", getUserBids);
/**
 * @swagger
 * /api/bid-list:
 *   get:
 *     tags: [property bidding]
 *     summary: Get a list of bid list
 *     description: Fetches all the bid list.
 *     responses:
 *       200:
 *         description: A list of bid list
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   property_id:
 *                     type: integer
 *                   user_id:
 *                     type: integer
 *                   bid_amount:
 *                     type: integer
 *
 */
app.get("/api/bid-list", getUserBidlist);
/**
 * @swagger
 * /api/latest-bid:
 *   get:
 *     tags: [property bidding]
 *     summary: Get a list of the latest highest bid for each properties.
 *     description: Fetches all the latest winning bids.
 *     responses:
 *       200:
 *         description: A list of winning bids
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   property_id:
 *                     type: integer
 *                   latest_bid:
 *                     type: integer
 *
 */
app.get("/api/latest-bid", getUserLatestBidOfPropertyId);

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
