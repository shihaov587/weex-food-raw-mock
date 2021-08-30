const mysql=require('mysql');
const sqlobj={
    host:"localhost",
    port: 3306,
    user:"root",
    password:"root",
    database:"food"
}

const client=mysql.createConnection(sqlobj);

function sqlConnect(sql,arr,callback){
    client.query(sql,arr,(error,result)=>{
        if(error){
            console.log(error);
            return;
        }
        callback(result)
    })
}
module.exports=sqlConnect;