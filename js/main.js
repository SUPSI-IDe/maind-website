(function() {
	//HEADER RESIZES ON SCROLL AND LOGO SWITCH SUPSI/MAIND
	var header = $('header');
	var main_logo = $('icon supsi logo');

	function onScroll() {
		var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
		/*
		if(scrollTop) {
			header.classList.add('scrolled');
		} else {
			header.classList.remove('scrolled');
		}
		*/

		if(scrollTop > 190) {
			document.getElementById('main_logo').classList.add('maind');
		} else {
			document.getElementById('main_logo').classList.remove('maind');
		}
	}

	window.addEventListener('scroll', onScroll);
	

	// PROJECT FILTER (PORTFOLIO PAGE)
	function filterByTarget(targetid) {		// targetid is the container of the elements that has to be shown or not, for instance "project_container" class
		//collect all filter values for same target

		//console.log("filterByTarget()");

		var values = {};
		var text = [];
		var descel;

		$$('select.filter[aria-controls="' + targetid + '"]').forEach(function(select) {
			var val = select.value;
			descel = $('.filter-desc', select.closest('.two-pane-filter'));
			
			$$('.option.selected', select.parentNode).forEach(function(e) {
				e.classList.remove('selected');
			});

			$('.option[data-value="'+ val +'"]', select.parentNode).classList.add('selected');

			var k = select.getAttribute('data-filter-attribute');
			var label = select.getAttribute('data-filter-label');
			values[k] = val;

			text.push({label: label, value: select.options[select.selectedIndex].text});

		});

		//hide or show elements in the projects list based on all filter values
		$$('#' + targetid + ' > *').forEach(function(element) {

			for(var k in values) {
				if(k == 'data-module' && values[k] == 'featured') {
					if(element.getAttribute('data-tag') != 'featured') {
						element.style.display = 'none';
						return;
					}
				} else {
					if(element.getAttribute(k) != values[k]) {
						element.style.display = 'none';
						return;
					}
				}
			}
			element.style.display = 'inline-block';
		});

		//set description of the slected items in the filter panel
		var str = "<b>" + text[0].value + "</b> - " + text[1].value;
		descel.innerHTML = str;

		for(k in values) {
			Cookies.remove(k.split('-')[1]);
			Cookies.set(k.split('-')[1], values[k]);
		}
	}

	var targets = [];		// array containing the containers with the elements to be shown (in this case "projects_container", so only one)

	$$('select.filter').forEach(function(s) {
		var ctrls = s.getAttribute('aria-controls');	// collect the element to witch the filter has to be applied (for instance "projects_container")

		if(targets.indexOf(ctrls) == -1) {
			targets.push(ctrls);	// add the element found to the targets array
		}

		var cookie_year = Cookies.get('year');
		var cookie_module = Cookies.get('module');

		if(cookie_year != null && cookie_module != null) {

			if(s.getAttribute('data-filter-attribute') == 'data-year') {
				s.value = cookie_year;
			}
			else if(s.getAttribute('data-filter-attribute') == 'data-module') {
				s.value = cookie_module;
			}
		}
		
		s.addEventListener('change', function() {		// add the event listener to the <select> <options...>
			var targetid = this.getAttribute('aria-controls');
			filterByTarget(targetid);
		});

	});

	targets.forEach(filterByTarget); // edit and filter each projects container found (for instance "projects_container")

	// visual filter widget, add the selection "click", where the action starts
	$$('.pane .select .option').forEach(function(s) {
		s.addEventListener('click', function() {
			var select = $('select', s.parentNode);
			select.value = this.getAttribute('data-value');
			$.fire(select, 'change');
		});
	});

	
	// STUDENTS FILTER //

	var toggle = document.getElementById('students-page-toggle');
    var checkbox = document.getElementById('chekbox-students-page');
    var years_opt = document.querySelectorAll('[property=students-year-selection]');
    var people_list = document.getElementsByClassName('people-list');


    // init
    if(toggle) {
	    var init_year = toggle.innerHTML.replace('/', '-');
	    changeYear(init_year);


	    // add the eventlistener to the label to open the years's list
	    toggle.addEventListener("click", function() {
	        checkbox.checked = checkbox.checked ? false : true;     //toggle the years's list

	    });
	}

    // scroll all the years and add the event listener to them in order to select a new year
    for(var i=0; i<years_opt.length; i++) {
        years_opt[i].addEventListener("click", function() {
            var year = this.getAttribute('data-value');
            changeYear(year);
        });
    }
   
   	// change visibility to the students by year
    function changeYear(y) {

        for(var i=0; i<people_list.length; i++) {
            if(people_list[i].className.includes(y)) {
                people_list[i].setAttribute("style", "display: block");
            } else {
                people_list[i].setAttribute("style", "display: none");
            }
        }

        toggle.innerHTML = y.replace('-', '/');

    };

    // this function is used to generate the transformation values
    // that need to be applied to the different columns
    function mapToMarginValues (marginBottom, element) {
    	// marginBottom is partially applied
    	// and this function should never be called directly

    	// we return the actually element on which we want to apply
    	// the transformations later adn the difference between
    	// the height of the dom node (li) and the containing box (the whitespace below the box)
    	return [element, element.clientHeight - element.firstElementChild.clientHeight - marginBottom];
    }

    // in this function we actually apply the values from the map
    // call onto the elements.
    // We use the accumulator total to store the amount of already
    // transformed pixels so that the lower boxes actually catch up
    // to the top boxes
    function addTransformations (total, value) {
    	// we unpack the incoming array
    	var e = value[0],
			style = value [1];

		// we apply the transform to the element
		e.style.transform = 'translateY(-' + total + 'px)';
		// and return the sum of accumulator whitespace of the
		// current element
		return total + style;
    }

	// stuff for the home page
	// we use the ready function so that we actually get the correct values
	// from the DOM
	$.ready().then(function ready () {
		if ($('body.home')) { // if we are in home
			// we calculate the amount of columns
			var columnsCount = parseInt(Math.round($('main > ul').clientWidth / $('main > ul > li').clientWidth));
			// we are going to push the columns into this var later
			var columns = [];

			// if there is only one columns no works needs to be done
			// let's return early
			if (columnsCount === 1) {
				return;
			}

			// push the correct elements as arrays into
			// columns var
			if (columnsCount === 2) {
				columns.push(
					$$('main > ul > li:nth-child(even)'),
					$$('main > ul > li:nth-child(odd)')
					); 
			}

			if (columnsCount === 3) {
				columns.push(
					$$('main > ul > li:nth-child(3n+1)'),
					$$('main > ul > li:nth-child(3n+2)'),
					$$('main > ul > li:nth-child(3n+3)')
					); 
			}

			window.requestAnimationFrame(function weWaitAFrame() {
				// for each of the columns array
				columns.forEach(function masonry (items) {
					// we setup the partiallyApplied function to map over the items
					// we only add this value one time because the margin bottom
					// of all the elements is the same
					var partiallyAppliedMapWithMarginBottom = mapToMarginValues.bind(null, parseInt(window.getComputedStyle(items[0].firstElementChild).marginBottom));

					// we package this up in a requestAnimationFrame call
					// to avoid to trash the layout too often
					window.requestAnimationFrame(function measureAndExecute () {
						items.map(partiallyAppliedMapWithMarginBottom).reduce(addTransformations, 0);
					});
				});
			});			
		}
	});
})()
