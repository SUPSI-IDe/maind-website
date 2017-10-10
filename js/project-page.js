// PROJECT PAGE IN PORTFOLIO

/* script to filter and show "Other projects" at the end of the page

json file containing all the projects organised like this:

"year#"=>
	{"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"thesis"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]} },
"year#"=>
	{"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"cas#"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]},
	"thesis"=>
		{"featured"=>["project#", "project#", ...],
		"normal"=>["project#", "project#", ...]} },
"year#" ...


*/

var filtered = [];
var filteredSel = [];
var current = 0;
var hide_other_projects = false;


function getHashValue(key) {	// get the cookie values for year and module

	var matches = Cookies.get(key);
	return matches ? matches : null;
}

// sort the projects of the same year and module
var filterYear = getHashValue('year');
var filterModule = getHashValue('module');
var filterTag = null;
if (filterModule == 'featured') {
	filterTag = 'featured';
} else {
	filterTag = '';
}

//console.log(filterModule);

if (filterModule == null && filterYear == null) {		// comes from the homepage, hide the arrow
	document.getElementById('icon_back_portfolio').classList.add('hidden');
	document.getElementById('icon_back_home').classList.remove('hidden');
	hide_other_projects = true;

} else {
	document.getElementById('icon_back_portfolio').classList.remove('hidden');
	document.getElementById('icon_back_home').classList.add('hidden');
}


for(var year in allprojects) {

	if(filterYear && filterYear != year) continue;		// sorting all the projects of the same year

	for(var module in allprojects[year]) {

		if(filterTag == 'featured') {		// get all the projects of the year of each module from the "featured" array


				for (var i = 0; i < allprojects[year][module]['featured'].length; i++) {
					var item = allprojects[year][module]['featured'][i];
					var item_url = item.url;
					item.url = item_url.replace('index.html', '');

					var link = document.querySelector('a[href="' + item.url + '"]');

					filteredSel.push(link);

					link.hash = location.hash;

					if(location.pathname == item.url) {
						current = filteredSel.length;
					}

				}
		}
		else {		// get all the module projects, both featured and not

			if(filterModule && filterModule != module) continue;

			for (var i = 0; i < allprojects[year][module]['featured'].length; i++) {
				var item = allprojects[year][module]['featured'][i];
				var item_url = item.url;
				item.url = item_url.replace('index.html', '');

				var link = document.querySelector('a[href="' + item.url + '"]');

				filteredSel.push(link);

				link.hash = location.hash;

				if(location.pathname == item.url) {
					current = filteredSel.length;
				}
			}

			for (var i = 0; i < allprojects[year][module]['normal'].length; i++) {
				var item = allprojects[year][module]['normal'][i];
				var item_url = item.url;
				item.url = item_url.replace('index.html', '');
				var link = document.querySelector('a[href="' + item.url + '"]');

				filteredSel.push(link);

				link.hash = location.hash;

				if(location.pathname == item.url) {
					current = filteredSel.length;
				}
			}
		}
	}
}


// have at maximum alway only "5" projects in the list of "other projects"
var y = 0;
var amount = 0;

if(filteredSel.length >= 5 && !hide_other_projects) {
	amount = 5;
} else if(filteredSel.length == 1 || hide_other_projects) {
	document.getElementById('other-projects-title').innerHTML = '';
} else {
	amount = filteredSel.length-1;
}

for(var i = current; i < (current+amount); i++) {

	if (i >= filteredSel.length) {
		y = i - filteredSel.length;
	} else {
		y = i;
	}

	filteredSel[y].classList.add('relevant');
}
