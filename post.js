import app from "./index.js";
app.get("/post", (req, res) => {
  connection.query("SELECT * from blog", (err, rows, fields) => {
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
  connection.query(`SELECT * from blog where id=${id}`, (err, rows, fields) => {
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
    `INSERT INTO blog (title, content) VALUES ('${title}', '${content}')`,
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
  connection.query(`DELETE FROM blog WHERE id=${id}`, (err, rows, fields) => {
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
  connection.query(`SELECT * from blog WHERE id=${id}`, (err, rows, fields) => {
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
    `UPDATE blog SET title='${title}', content='${content}' WHERE id=${id}`,
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
