import app from "./index.js";
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
