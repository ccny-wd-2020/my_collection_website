let data;
fetch('/ebay-sales').then(function (response) { return response.json(); }).then(function (ebay_sales) {
	data = ebay_sales.data;
  data.sort((a, b) => (b.salePrice > a.salePrice) ? 1 : -1)
  const keys = Object.keys(data[0]);

	populateTableHeader(keys);
  populateTableBody(data);
  createDropdowns(data);

}).catch(function (err) {
	console.warn('Error: ', err);
});

function convertBooleanToText(field, value){
  const booleanFields = ["mint", "authentic", "hangTagAttached", "auction", "bestOfferAccepted"]

  if(booleanFields.includes(field)){
    if(value == 1){
      return "No"
    } else {
      return "Yes"
    }
  } else {
    return value
  }
}

function createDropdowns(data){
	const keys = Object.keys(data[0]);

	keys.forEach(function(field){
		const values = [...new Set(data.map(function(ebay_sale){ return ebay_sale[field] }))];
		const valueTh = document.querySelector("#"+field+"-th");
		const valueDropdown = document.createElement("select");
		valueDropdown.setAttribute("id", field + "-dropdown");
		valueDropdown.setAttribute("class", "filter-dropdown")

		let defaultOption = document.createElement("option");
		defaultOption.textContent = "Select " + field;
		defaultOption.setAttribute("disabled", true);
		defaultOption.setAttribute("selected", true);

		let allOption = document.createElement("option");
		allOption.textContent = "All "+field+"s";

		let nullOption = document.createElement("option");
		nullOption.textContent = "Null";

		valueDropdown.append(defaultOption);
		valueDropdown.append(allOption);
		valueDropdown.append(nullOption);

		values.forEach(function(value){
			if(value){
				let valueOption = document.createElement("option");
				valueOption.textContent = value;
				valueDropdown.append(valueOption)
			}
		});

		valueTh.append(valueDropdown);

		document.querySelector("#"+field+"-dropdown").addEventListener('change', (event) => {
			const valueChoice = event.target.value;
			let valueData;
			if(valueChoice == "All "+field+"s"){
				valueData = data;
			} else {
				valueData = data.filter(function(ebay_sale){ return ebay_sale[field] == valueChoice});
			}
			populateTableBody(valueData)
		});
	})
}

function populateTableHeader(keys){
	const thead = document.querySelector('thead');
	const headerTr = document.createElement('tr');
	keys.forEach(function(key){
		let headerTh = document.createElement('th');
		headerTh.setAttribute('id', key + "-th");
		headerTh.textContent = key
		headerTr.append(headerTh)
	})
	thead.append(headerTr)
}

function populateTableBody(data){
  const tbody = document.querySelector('tbody');
  tbody.innerHTML = "";
  data.forEach(function(ebay_sale){
    let bodyTr = document.createElement('tr');
    for(var i in ebay_sale){
      let bodyTd = document.createElement('td');
			bodyTd.textContent = convertBooleanToText(i, ebay_sale[i]);
      bodyTr.append(bodyTd)
    }
    tbody.append(bodyTr);
  });
}

setTimeout(function(){
	let selectedDropdowns = []
	document.querySelectorAll(".filter-dropdown").forEach(item => {
	  item.addEventListener('change', event => {
			let key = item.getAttribute("id").split("-")[0];
			let value = item.value;
			for(var i = 0; i < selectedDropdowns.length; i++){
				if(selectedDropdowns[i].key == key){
					if(value.includes("All")){
						selectedDropdowns.splice(i, 1)
					} else {
						selectedDropdowns[i].value = value;
					}
				}
			}
			let selectedDropdownsKeys = selectedDropdowns.map((sd) => sd.key);
			if(!selectedDropdownsKeys.includes(key) && !item.value.includes("All") && !item.value.includes("Select")){
				value = value == "Null" ? null : value;
				selectedDropdowns.push({key: key, value: value})
			}
			const filteredData = data.filter(function(d){
				let result = true;
				for(var i = 0; i < selectedDropdowns.length; i++){
					if(d[selectedDropdowns[i].key] != selectedDropdowns[i].value){
						result = false;
					}
				}
				return result
			});
			populateTableBody(filteredData)
		})
	})
}, 500)
