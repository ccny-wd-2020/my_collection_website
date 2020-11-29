var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');

var app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: 'application/vnd.api+json'}));

app.use(express.static('./client'));

app.get('/', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/index.html'));
});

app.get('/ebay', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/ebay_api.html'));
});

app.get('/watching', function(req,res){
	res.sendFile(path.join(__dirname, '../client/html/pending_ebay_purchases.html'));
});

var PORT = process.env.PORT || 8000;

app.listen(PORT, function(){
	console.log("Listening on PORT " + PORT);
});
