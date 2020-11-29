const searchTermsForItemsIWant = [
  "rex 2nd beanie baby",
  "magenta old face",
  "cranberry old face"
]

searchTermsForItemsIWant.forEach(function(searchTerm){
  $.ajax({
  	type: "POST",
  	url: 'http://open.api.ebay.com/shopping?callname=FindItemsAdvanced',
  	dataType: "jsonp",
  	jsonp: "callbackname",
  	crossDomain: true,
  	data: {
  		'appid': 'JaredTho-jaredsco-PRD-16c559536-c93f77e3',
  		'version': '771',
  		'siteid': '0',
  		'requestencoding': 'JSON',
  		'responseencoding': 'JSON',
  		'QueryKeywords': searchTerm,
  		'MaxEntries': '3',
  		'PriceMin' : { 'Value' : '10.0', 'CurrencyID' : 'USD'},
  		'PriceMax' : { 'Value' : '200.0', 'CurrencyID' : 'USD'},
  		'callback' : true
  	},
  	success: function(response) {
      console.log(response);
  	},
  	error: function(error) {
      console.log(error);
  	}
  });
});
