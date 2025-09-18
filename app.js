const express = require("express");
const axios = require("axios");

const app = express();

// Middleware to parse JSON request bodies
app.use(express.json());

// Middleware to log requests (optional - helpful for debugging)
app.use((req, res, next) => {
  console.log(`${req.method} ${req.path} - ${new Date().toISOString()}`);
  next();
});

/**
 * Helper function to fetch a single GitHub user's information
 * @param {string} username - GitHub username to fetch
 * @returns {Promise<Object|null>} User data object or null if failed
 */
async function fetchGitHubUser(username) {
  try {
    const response = await axios.get(
      `https://api.github.com/users/${username}`
    );
    return {
      name: response.data.name,
      bio: response.data.bio
    };
  } catch (error) {
    console.error(`Failed to fetch user ${username}:`, error.message);
    // Return null for failed requests, don't throw
    return null;
  }
}

/**
 * POST / - Get GitHub user information for multiple developers
 *
 * Request body should be:
 * {
 *   "developers": ["username1", "username2", ...]
 * }
 *
 * Returns array of user objects:
 * [
 *   { "name": "User Name", "bio": "User bio..." },
 *   ...
 * ]
 */
app.post("/", async (req, res, next) => {
  try {
    // Validate request body structure
    if (!req.body) {
      return res.status(400).json({
        error: "Request body is required"
      });
    }

    if (!req.body.developers) {
      return res.status(400).json({
        error: 'Missing "developers" field in request body'
      });
    }

    if (!Array.isArray(req.body.developers)) {
      return res.status(400).json({
        error: '"developers" must be an array'
      });
    }

    const { developers } = req.body;

    // Handle empty array case
    if (developers.length === 0) {
      return res.json([]);
    }

    // Validate that all developers are strings
    const invalidDevelopers = developers.filter(
      (dev) => typeof dev !== "string"
    );
    if (invalidDevelopers.length > 0) {
      return res.status(400).json({
        error: "All developer names must be strings"
      });
    }

    console.log(
      `Fetching data for ${developers.length} developers: ${developers.join(
        ", "
      )}`
    );

    // Fetch all users concurrently using Promise.all
    const userPromises = developers.map((username) =>
      fetchGitHubUser(username)
    );
    const userResults = await Promise.all(userPromises);

    // Filter out failed requests (null values) and return only successful ones
    const validUsers = userResults.filter((user) => user !== null);

    console.log(
      `Successfully fetched ${validUsers.length} out of ${developers.length} users`
    );

    // Return the results as JSON
    res.json(validUsers);
  } catch (error) {
    // Pass any unexpected errors to error handling middleware
    next(error);
  }
});

// Health check endpoint (optional but useful)
app.get("/health", (req, res) => {
  res.json({
    status: "ok",
    timestamp: new Date().toISOString(),
    uptime: process.uptime()
  });
});

// 404 handler for all other routes
app.use((req, res) => {
  res.status(404).json({
    error: "Route not found",
    message: `Cannot ${req.method} ${req.path}`
  });
});

// Global error handling middleware
app.use((error, req, res, next) => {
  console.error("Unhandled error:", error);

  // Don't expose internal error details in production
  const isDevelopment = process.env.NODE_ENV !== "production";

  res.status(500).json({
    error: "Internal server error",
    ...(isDevelopment && { details: error.message })
  });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
  console.log(`Health check available at: http://localhost:${PORT}/health`);
  console.log(`Main endpoint: POST http://localhost:${PORT}/`);
});

// Export app for testing purposes
module.exports = app;
