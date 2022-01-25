<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
<style>
/* padding left and right is for search and reset icons */
.slinput input {
  padding:10px;
  width:100%;
  border:1px solid #ccc;
  padding-left:31px;
  padding-right:30px;
  color:black;
  font-family: arial,sans-serif;
  font-size: 16px;
}
/* Remove IE10's “clear field” X button */
.slinput input::-ms-clear {
    display: none;
}
.slinput input:focus {
  border:1px solid #4d90fe;
}

/* left side icon style (search icon) */
.slinput .left-icon {
  position:absolute;
  left:10px;
  top:13px;
}
.slinput .fa {
  color:#444;
  font-size: 16px;
}
.slinput .fa-close {
  color:#ccc;
}

/* right side icon style (search icon) */
.slinput .right-icon {
  position:absolute;
  right:10px;
  top:13px;
  cursor:pointer;
}
.slinput {
  position:relative;
  width:100%;
  margin-bottom:7px;
}
* {
  box-sizing:border-box;
}
body {
  background-color:#e9eaed;
}

.user {
  padding:10px;
  margin-top:5px;
  background-color:white;
  border: 1px dotted #aaa;
}

.user .media-left img {
  width:52px;
}
</style>
<div id="materials_content" style="display: none;"><?php echo $data['materials']; ?></div>
<div class="materials-area">
	<div class="materials-title">
        <h2>Materials</h2>
    </div>
    <div class="container">
        <div class="row align-items-center">
        	<div style="width:730px;margin:auto;margin-top:25px;">
				<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- demos -->
				<ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-4537529140156254" data-ad-slot="4444050329"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
				</div>
				<div style="width:100%;margin:auto;padding-top:5px;">
				  <!-- Search text box with clear field -->
				  <div class="slinput">
					<i class="fa fa-search left-icon"></i> 
					<input id="searchInput" onkeyup="searchUsers()"	placeholder="Search here" /> 
					<i class="fa fa-close right-icon"></i>
				  </div>
				  
				  <!-- Users information will be in this div -->
				  <div id="users">
				  </div>
				</div>
        </div>
    </div>
</div>
<script>
var userData = JSON.parse($("#materials_content").html());
// user's input for search
var searchVal = '';

$(function(){
	  // if text box value is not null, then darken reset icon
	  $(".slinput input").keyup(function(){
	    var val = $(this).val();   
	    if(val.length > 0) {
	       $(this).parent().find(".right-icon").css('color','#555');
	    } else {
	      $(this).parent().find(".right-icon").css('color','#ccc');
	    }
	  });
	  
	  // if user click on reset icon, clear text field
	  $(".slinput .right-icon").click(function(){
	    $(this).parent().find("input").val('');
	    $(this).css('color','#ccc');
	    loadData(userData);
	  });
	  
	  loadData(userData);
});

// Displaying Information to Users
function loadData(data) {
	var htmlData = '';
	$.each(data, function(index, val){
		htmlData += '<div class="media user">'+
		'  <div class="media-left">'+
		'    <a href="#">'+
		// '      <img class="media-object" src="'+val.pic+'" alt="...">'+
		'    </a>'+
		'  </div>'+
		'  <div class="media-body">'+
		'    <h4 class="media-heading">'+val.name+'</h4>'+
		'    '+val.content+
		'  </div>'+
		'</div>';
	});
	$("#users").html(htmlData);
}

// Search users data based input search keyword
function searchUsers() {
	var val = $("#searchInput").val();
	if(val == searchVal) {
	    return;	
	} else {
		searchVal = val;
		var searchResults = {};
		searchResults = [];
		$.each(userData, function(i, v) {
		    if (v.name.toLowerCase().indexOf(val) != -1) {
		    	searchResults.push(v);  
		    }
		});
		loadData(searchResults);	
	}
}
</script>