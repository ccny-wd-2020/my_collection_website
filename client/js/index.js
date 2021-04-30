let data;
fetch('/ebay-sales').then(function (response) { return response.json(); }).then(function (ebay_sales) {
	data = ebay_sales.data;
  data.sort((a, b) => (b.salePrice > a.salePrice) ? 1 : -1)
  const keys = Object.keys(data[0]);

  const thead = document.querySelector('thead');
  const headerTr = document.createElement('tr');
  keys.forEach(function(key){
    let headerTh = document.createElement('th');
    headerTh.setAttribute('id', key + "-th");
    headerTh.textContent = key
    headerTr.append(headerTh)
  })
  thead.append(headerTr)

  populateTableBody(data);

  createDropdown(data);

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

function createDropdown(data){
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

		valueDropdown.append(defaultOption);
		valueDropdown.append(allOption);

		values.forEach(function(value){
			let valueOption = document.createElement("option");
			valueOption.textContent = value;
			valueDropdown.append(valueOption)
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

function dropdownLogic(data){
	const keys = Object.keys(data[0]);
	const selectedDropdowns = [];
	keys.forEach(function(field){
		let dropdownValue = document.querySelector("#"+field+"-dropdown").value;
		if(!dropdownValue.includes("All") && !dropdownValue.includes("Select")){
			selectedDropdowns.push(dropdownValue);
		}
	});
	return selectedDropdowns;
}

setTimeout(function(){
	const selectedDropdowns = []
	document.querySelectorAll(".filter-dropdown").forEach(item => {
	  item.addEventListener('change', event => {
			if(!item.value.includes("All") && !item.value.includes("Select")){
				selectedDropdowns.push({key: item.getAttribute("id").split("-")[0], value: item.value})
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
