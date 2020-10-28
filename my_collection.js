$("#submit-to-ebay").click(function(){
	var q = $("#query").val();
	$("#ajaxLoad").html('<b>Loading</b><marquee direction="right">...............</marquee>');

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
			'QueryKeywords': q,
			'MaxEntries': '3',
			'PriceMin' : { 'Value' : '250.0', 'CurrencyID' : 'USD'},
			'PriceMax' : { 'Value' : '300.0', 'CurrencyID' : 'USD'},
			'callback' : true
		},
		success: function(object) {
			$("#ajaxLoad").html('');
			alert('success');
			$("#eBayXMLResponse").val(JSON.stringify(object,null,4));
		},
		error: function(object,x,errorThrown) {
			$("#ajaxLoad").html('');
			alert("call failure");
			$("#eBayXMLResponse").val(JSON.stringify(errorThrown,null,4));
		}
	});

});
