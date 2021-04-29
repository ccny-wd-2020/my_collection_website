var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');

var app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: 'application/vnd.api+json'}));

app.use(express.static('./client'));

var mysql = require('mysql');
const databaseConnection = mysql.createConnection("mysql://root:@localhost:3306/beanie_babies");
databaseConnection.connect();

app.get('/', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/index.html'));
});

app.get('/ebay', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/ebay_api.html'));
});

app.get('/watching', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/pending_ebay_purchases.html'));
});

app.get('/ebay-sales', function(req, res){
	const ebaySalesSelectQuery = "SELECT * FROM ebay_sales";
  databaseConnection.query(ebaySalesSelectQuery, function(err, data){
    try {
      if(err){
        throw err
      }
      res.json({success: true, data: data})
    } catch (e) {
      res.json({success: false, error: e})
    }
  });
});

var PORT = process.env.PORT || 8000;

app.listen(PORT, function(){
	console.log("Listening on PORT " + PORT);
});
