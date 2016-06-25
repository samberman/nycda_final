// var suggestions = []

// input = document.getElementById("yelp_search")
$(document).ready(function(){

$("#next").on("click", function(){
	i += 1
})

// suggestions = $("#button").on("click",function(){
// 	$("#current_location").val;
// 	console.log("this is working")
// 		$("#type").val;
// 		console.log("this is working")
// 		$("#radius_filter").val;
// 		console.log("this is working")
// })

// $('suggestions').hide;

// function Restaurant(name, phone, address, review){
// 	this.name = name;
// 	this.phone = phone;
// 	this.address = address;
// 	this.review = review;
// }

// function viewResults(){
// 	this.currentView = 0;
// 	this.suggestions = [];
// 	this.nextResult = function(){
// 		this.currentView++;
// 	}
// }
});

	var geocoder;
	var map;
	function initialize() {
	  geocoder = new google.maps.Geocoder();
	  var latlng = new google.maps.LatLng(-34.397, 150.644);
	  var mapOptions = {
	    zoom: 8,
	    center: latlng
	  }
	  map = new google.maps.Map(document.getElementById("map"), mapOptions);
	}

	function codeAddress() {
	  var address = document.getElementById("address").value;
	  geocoder.geocode( { 'address': address}, function(results, status) {
	    if (status == google.maps.GeocoderStatus.OK) {
	      map.setCenter(results[0].geometry.location);
	      var marker = new google.maps.Marker({
	        map: map,
	        position: results[0].geometry.location
	      });
	    } else {
	      alert("Geocode was not successful for the following reason: " + status);
	    }
	  });
	}