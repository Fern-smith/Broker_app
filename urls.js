const fs = require("fs");
const axios = require("axios");
const { URL } = require("url");

//Get filename from command line arguments
const filename = process.argv[2];

if (!filename) {
  console.error("Error: Please provide a filename as an argument");
  console.error("Usage: node urls.js FILENAME");
  process.exit(1);
}

//Function to get hostname from URL
function getHostname(urlString) {
  try {
    const url = new URL(urlString);
    return url.hostname;
  } catch (error) {
    return null;
  }
}

//Function to download content from URL and save to file
async function downloadAndSave(url) {
  try {
    const hostname = getHostname(url);
    if (!hostname) {
      console.error(`Error: Invalid URL format: ${url}`);
      return;
    }

    console.log(`Downloading ${url}...`);
    const response = await axios.get(url);

    //write content to file named after hostname
    fs.writeFileSync(hostname, response.data);
    console.log(`Saved content from ${url} to ${hostname}`);
  } catch (error) {
    if (error.code === "ENOTFOUND" || error.response) {
      console.error(`Error downloading ${url}: ${error.message}`);
    } else if (error.code === "EACCES" || error.code === "EPERM") {
      console.error(`Error writing file for ${url}: Permission denied`);
    } else {
      console.error(`Error processing ${url}: ${error.message}`);
    }
  }
}

//Main function
async function main() {
  try {
    // Read the file contents
    const fileContents = fs.readFileSync(filename, "utf8");

    // Split into lines and filter out empty lines
    const urls = fileContents
      .split("\n")
      .map((line) => line.trim())
      .filter((line) => line.length > 0);

    if (urls.length === 0) {
      console.log("No URLs found in the file");
      return;
    }

    console.log(`Found ${urls.length} URLs to process`);

    // Process each URL
    for (const url of urls) {
      await downloadAndSave(url);
    }

    console.log("Finished processing all URLs");
  } catch (error) {
    if (error.code === "ENOENT") {
      console.error(`Error: Cannot read file '${filename}' - file not found`);
    } else if (error.code === "EACCES") {
      console.error(
        `Error: Cannot read file '${filename}' - permission denied`
      );
    } else {
      console.error(`Error reading file '${filename}': ${error.message}`);
    }
    process.exit(1);
  }
}

// Run the script
main();
