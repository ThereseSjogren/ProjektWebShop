//function populate(s1, s2) {
//    var s1 = document.getElementById(s1);
//    var s2 = document.getElementById(s2);
//    s2.innerHTML = "";
//    if (s1.value == "Puma") {
//        var optionArray = ["|","puma|Puma","adidas|Adidas","tommy hifiger|Tommy Hilfiger"]
//    }
//    for (var option in optionArray) {
//        var pair = optionArray[option].split("|");
//        var newOption = document.createElement("option");
//        newOption.value = pair[0];
//        newOption.innerHTML = pair[1];
//        s2.options.add(newOption);
//    }
//}
(function ($) {
    jQuery.expr[':'].Contains = function (a, i, m) {
        return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase()) >= 0;
    };

    function listFilter(header, list) {
        var form = $("<form>").attr({ "class": "filterform", "action": "#" }),
			input = $("<input>").attr({ "class": "filterinput", "type": "text" });
        $(form).append(input).appendTo(header);

        $(input)
		  .change(function () {
		      var filter = $(this).val();
		      if (filter) {
		          $(list).find("a:not(:Contains(" + filter + "))").parent().slideUp();
		          $(list).find("a:Contains(" + filter + ")").parent().slideDown();
		      } else {
		          $(list).find("li").slideDown();
		      }
		      return false;
		  })
		.keyup(function () {
		    $(this).change();
		});
    }

    $(function () {
        listFilter($("#header"), $("#list"));
    });
}(jQuery));