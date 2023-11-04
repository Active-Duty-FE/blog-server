const express = require("express");
const app = express();
const port = 4000;
const { connection } = require("./connect");
const cors = require("cors");

app.use(express.json());
app.use(cors());

export default app;
function rest(fn) {
  setTimeout(fn, 2000);
}

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
