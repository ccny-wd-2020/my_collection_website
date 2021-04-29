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

  // const tbody = document.querySelector('tbody');
  // data.forEach(function(ebay_sale){
  //   let bodyTr = document.createElement('tr');
  //   for(var i in ebay_sale){
  //     let bodyTd = document.createElement('td');
  //     bodyTd.textContent = convertBooleanToText(i, ebay_sale[i]);
  //     bodyTr.append(bodyTd)
  //   }
  //   tbody.append(bodyTr);
  // });
  populateTableBody(data);

  createTypeDropdown(data);

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

function createTypeDropdown(data){
  const types = [...new Set(data.map(function(ebay_sale){ return ebay_sale.type }))];
  const typeTh = document.querySelector("#type-th");
  const typeDropdown = document.createElement("select");
  typeDropdown.setAttribute("id", "type-dropdown");

  let defaultOption = document.createElement("option");
  defaultOption.textContent = "Select Type";
  defaultOption.setAttribute("disabled", true);
  defaultOption.setAttribute("selected", true);

  let allOption = document.createElement("option");
  allOption.textContent = "All Types";

  typeDropdown.append(defaultOption);
  typeDropdown.append(allOption);

  types.forEach(function(type){
    let typeOption = document.createElement("option");
    typeOption.textContent = type;
    typeDropdown.append(typeOption)
  });

  typeTh.append(typeDropdown);

  document.querySelector("#type-dropdown").addEventListener('change', (event) => {
    const typeChoice = event.target.value;
    let typeData;
    if(typeChoice == "All Types"){
      typeData = data;
    } else {
      typeData = data.filter(function(ebay_sale){ return ebay_sale.type == typeChoice});  
    }
    populateTableBody(typeData)
  });
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
