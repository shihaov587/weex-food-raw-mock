const express = require("express");
const app = express();
const router = require("./router");
const bodyParser = require("body-parser");
const cors = require("cors");

const port = 3000;

app.use(cors());
app.use("/api",router)
app.use(bodyParser.urlencoded({
    extended:true
}))
// cors跨域处理
app.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Content-Type,Access-Token");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    res.header("X-Powered-By",' 3.2.1');
    res.header("Content-Type", "application/json;charset=utf-8");
    next();
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
