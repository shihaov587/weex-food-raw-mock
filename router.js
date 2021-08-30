const express = require("express");
const router = express.Router();
const sqlConnect = require("./sqlConnect");
const bodyParser = require("body-parser");
const url = require("url");

router.use(
  bodyParser.urlencoded({
    extended: true,
  })
);

// 获取食疗推荐列表
router.get("/food/rec/list", (req, res) => {
  const sql =
    "select * from food_rec_list";
  sqlConnect(sql, null, (result) => {
    if (result.length > 0) {
      res.send({
        status: 200,
        data: {
          result
        },
      });
    } else {
      res.send({
        status: 500,
        msg: "暂无数据",
      });
    }
  });
});

// 获取商品推荐列表
router.get("/index/selectedFood", (req, res) => {
    const sql = "select * from product where isSelected = 1";
    sqlConnect(sql, null, (result) => {
      if (result.length > 0) {
        res.send({
          status: 200,
          data: {
            result
          },
        });
      } else {
        res.send({
          status: 500,
          msg: "暂无数据",
        });
      }
    });
  });

// 购物车添加
router.post('/mycart/add', (req, res) => {
    console.log(req.body);
    const id = req.body.id;
    const img = req.body.img;
    const title = req.body.title;
    const price = req.body.price;
    const num = req.body.num;
    const sql = "insert into mycart values(?,?,?,?,?)";
    var arr = [id, img,price,num,title];
    // console.log(arr);
    sqlConnect(sql, arr, result => {
      // 删除返回的是影响行数
      if (result.affectedRows > 0) {
        res.send({
            status: 200,
            success: true
        })
    } else {
        res.send({
            status: 500,
            msg: "删除失败"
        })
    }
    })
  
  })

module.exports = router;