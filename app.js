const express = require("express");

const app = express();

app.get("/", (req, res) => {
    console.log(req.query);
    res.json({txt: "hello test branch"})
})

app.listen(8181, () => {
    console.log("Solaris test branch 1");
});