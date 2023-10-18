const express = require('express');
const app = express();
const port = process.env.PORT || 8080; // Use the PORT environment variable, or default to 8080

app.get('/fastsearch', (req, res) => {
  // Handle the fast search logic here
  res.json({ message: 'Fast search response' });
});

app.listen(port, () => {
  console.log(`Fast Search service is running on port ${port}`);
});
