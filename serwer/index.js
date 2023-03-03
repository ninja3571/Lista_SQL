const cors = require("cors")
const express = require("express")
const mysql = require("mysql")
const app = express()

const port = 3000

app.use(cors())

var todolist =[
    {'zadanie':'zadanie13','daystoend':'3','czy':'1'},
    {'zadanie':'spac','daystoend':'1','czy':'0'}
]

var con = mysql.createConnection({
    host:"localhost",
    user:"root",
    passworld:"",
    database:"1pro"
})

con.connect(function(err){
    if (err) console.log(err)
    console.log("Poloczono")
})

app.get("/select",function(req,ers){
    const sql = "SELECT*FROM lista"
    con.querry(sql,function(err,resuld,fields){
        if(err) console.log(err)
        resuld.send(result)
    })
})

app.get('/gettodos',function(req,res){
    res.json(todolist)
    console.log("request on get todos endpoints")
})

app.get("/add/:nazwa/:czy_wykonane/:termin",function(req,res){
    const nazwa =req.params.nazwa
    const wykonane =req.params.czy_wykonane
    const termin =req.params.termin

    const sql = `INSERT INTO lista (nazwa,czy_wykonane,termin) VALUES ('${nazwa}','${wykonane}','${termin}')`

    todolist.push(sql)

    con.query(sql,function(err,result,fields){
        
    if(err){
        console.log(err)
        res.send("nie dodano")
    } else res.send("dodano")
})
})


app.listen(port)