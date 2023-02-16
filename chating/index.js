const express = require('express');
const mysql= require ('mysql') 
const pool= mysql.createPool(config);
const BodyParser=require("body-parser")
const sessilion=require('express-session')
const flush=require('connect-flash')
const path = require('path');
const flash = require('req-flash');
const app= express();


//server baru http
const http=require("http");
const { url } = require('inspector');
const server=http.createServer(app);
const {Server}=require("socket.io");
const { match } = require('assert');
const io=new Server (server);

app.use(BodyParser.urlencoded({extended: true}))
app.use(sessilion ({
    secret:'secret',
    cookie : {maxAge : 60000},
    resave : false,
    saveUninitialized : false 
}))
app.use(flush())
app.set('view engine', 'ejs');

//app.use(express.static ("views"));

const db= mysql.createConnection ( {
    host : "localhost",
    database : "chatgirl",
    user : "root",
    password : "",
    
})

db.connect ((err)=> {
    if (err) throw err
    console.log("database connect")
    //get data

    app.post("/login",async(req,res) => {
        let log=req.body.imel;
        let pas=req.body.passw;
        if (log && pas) {
            pool.getConnection(function (err,connect) {
                if (err) throw err;
                connect.query (`SELECT EMAIL,PASSWORD FROM website WHERE EMAIL LIKE ('${log}') AND PASSWORD LIKE ('${pas}')`,function (err,results) {
                    if (err) throw err;
                    if (results.length>0) {
                        req.session.loggedin = true;
                        req.session.userid = results[0].user_id;
                        req.session.username = results[0].user_name;
                        res.redirect('/');
                    } else {
                        req.flash('color', 'danger');
                        req.flash('status', 'Oops..');
                        req.flash('message', 'Akun tidak ditemukan');
                        res.redirect('/')
                    }
                });
                connect.release();
            })
        }
            })
        
        
    //insert data 
    app.post("/register",(req,res)=> {
        var insertsql= `INSERT INTO website (EMAIL,NAMA,ALAMAT,PASSWORD) VALUES ('${req.body.email}', '${req.body.nama}','${req.body.alamat}','${req.body.password}')`;
        db.query(insertsql,(err,result) =>{
            if (err) {
                throw err
            } else if (!err) {
                console.log("Success");
                
            }
            res.redirect("/");
            })
        })

})

app.get("/",(req,res)=>{
    res.render('\login/login',{title : "Silahkan Login"})
})
app.get("/index",(req,res)=>{
    res.render('index',{title : "Masuk Room"})
})
app.get("/isi",(req,res) => {
    res.render('isi',{feature:"Framework"})
})

io.on("connection",(socket)=>{
    socket.on("message",(data)=>{
        const {id,message} = data
        socket.broadcast.emit("message",id,message);
    })
})
var port=3000;
server.listen(port, function () {
console.log ("server ready");
})