var queryURL = "https://registry.spid.gov.it/entities-idp?&output=json&custom=info_display_base";

// spid_populate function, if '.spid-button[data-spid-remote] ul' exist, try to get the remote json file and pupulate all spid buttons
function spid_populate() {
  let spid_elements = document.querySelectorAll('ul[data-spid-remote]')
  if (spid_elements.length > 0 ) {
    fetch(queryURL)
     .then(function (response) {
        console.log(response)
       return response.json();
      })
     .then(function (idps) {
        console.log(idps)
       idps = idps.sort(() => Math.random() - 0.5)
       for (var u = 0; u < spid_elements.length; u++) {
	      for (var i = 0; i < idps.length; i++) { spid_addIdpEntry(idps[i], spid_elements[u]); }

       }
      })
     .catch(function (error) {
      console.log('Error during fetch: ' + error.message);
      idps.sort(() => Math.random() - 0.5)
      for (var u = 0; u < spid_elements.length; u++) {
        for (var i = 0; i < idps.length; i++) { spid_addIdpEntry(idps[i], spid_elements[u]); }
	    }
     });
  }
}

// function spid_addIdpEntry make a "li" element with the ipd link and prepend this in a element
//
// options:
// - data - is an object with "organization_name", "entity_id" and "logo_uri" values
// - element - is the element where is added the new "li" element
function spid_addIdpEntry(data, element) {
  const att = document.createAttribute("data-idp");
  att.value = data['entity_id'];
  let li = document.createElement('li');
  //li.className = 'spid-idp-button-link';
  li.setAttributeNode(att);
  if (element.id.indexOf('post')!== -1) {
    li.innerHTML = `<button class="" name="${data['organization_name']}" type="submit"><span class="">${data['organization_name']}</span><img class="" src="${data['logo_uri']}" alt="${data['organization_name']}" /></button></li>`
  };  
  if (element.id.indexOf('get')!== -1) {
    li.innerHTML = `<a href="#"><span class="spid-sr-only">${data['organization_name']}</span><img src="${data['logo_uri']}" alt="${data['organization_name']}" /></a>`
  };
  element.prepend(li)
}

// when page is ready populate all spid buttons
document.onreadystatechange = function () {
  if (document.readyState == "interactive") {
    spid_populate()
  }
}