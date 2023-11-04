const express = require("express");
const app = express();
const port = 4000;
const { connection } = require("./connect");
const cors = require("cors");

app.use(express.json());
app.use(cors());

function rest(fn) {
  setTimeout(fn, 2000);
}

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
app.get("/post", (req, res) => {
  connection.query("SELECT * from post", (err, rows, fields) => {
    if (err) throw err;
    // rest(() =>
    res.send({
      msg: "gesuccess",
      data: rows,
    });
    // );
  });
});
app.get("/post/:id", (req, res) => {
  connection.query(`SELECT * from post where id=${id}`, (err, rows, fields) => {
    if (err) throw err;
    // rest(() =>
    res.send({
      msg: "gesuccess",
      data: rows,
    });
    // );
  });
});
app.post("/post", (req, res) => {
  const { title, content } = req.body;
  connection.query(
    `INSERT INTO post (title, content) VALUES ('${title}', '${content}')`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "success",
        data: "add finished",
      });
      // );
    }
  );
});
app.delete("/post/:id", (req, res) => {
  const { id } = req.params;
  connection.query(`DELETE FROM post WHERE id=${id}`, (err, rows, fields) => {
    // if (err) throw err;
    // rest(() =>
    res.send({
      msg: "delete success",
      data: null,
    });
    // );
  });
});
app.get("/post/:id", (req, res) => {
  const { id } = req.params;
  connection.query(`SELECT * from post WHERE id=${id}`, (err, rows, fields) => {
    // if (err) throw err;
    // rest(() =>
    res.send({
      msg: "detail get success",
      data: rows && rows[0],
    });
    // );
  });
});
app.put("/post/:id", (req, res) => {
  const { id, title, content } = req.body;
  connection.query(
    `UPDATE post SET title='${title}', content='${content}' WHERE id=${id}`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "update detail success",
        data: rows,
      });
      // );
    }
  );
});
app.get("/thought", (req, res) => {
  connection.query("SELECT * from thought", (err, rows, fields) => {
    if (err) throw err;
    // rest(() =>
    res.send({
      msg: "gesuccess",
      data: rows,
    });
    // );
  });
});
app.get("/thought/:id", (req, res) => {
  connection.query(
    `SELECT * from thought where id=${id}`,
    (err, rows, fields) => {
      if (err) throw err;
      // rest(() =>
      res.send({
        msg: "gesuccess",
        data: rows,
      });
      // );
    }
  );
});
app.post("/thought", (req, res) => {
  const { title, content } = req.body;
  connection.query(
    `INSERT INTO thought (title, content) VALUES ('${title}', '${content}')`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "success",
        data: "add finished",
      });
      // );
    }
  );
});
app.delete("/thought/:id", (req, res) => {
  const { id } = req.params;
  connection.query(
    `DELETE FROM thought WHERE id=${id}`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "delete success",
        data: null,
      });
      // );
    }
  );
});
app.get("/thought/:id", (req, res) => {
  const { id } = req.params;
  connection.query(
    `SELECT * from thought WHERE id=${id}`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "detail get success",
        data: rows && rows[0],
      });
      // );
    }
  );
});
app.put("/thought/:id", (req, res) => {
  const { id, title, content } = req.body;
  connection.query(
    `UPDATE thought SET title='${title}', content='${content}' WHERE id=${id}`,
    (err, rows, fields) => {
      // if (err) throw err;
      // rest(() =>
      res.send({
        msg: "update detail success",
        data: rows,
      });
      // );
    }
  );
});
