const express = require('express');
const app = express();

// Settings
app.set('port', process.env.PORT || 4490);

// Middlewares
app.use(express.json());

// Routes
app.use(require('./routes/news'));

app.listen(app.get('port'), () => {
  console.log(`API server running on port ${app.get('port')}`);
});
