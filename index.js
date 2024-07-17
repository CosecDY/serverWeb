var express = require('express')
var cors = require('cors')
const port = process.env.PORT || 8000

var app = express()
app.use(cors())
app.use(express.json())


app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log(`Server is running at port http://localhost:${port}}`);
});

module.exports = app