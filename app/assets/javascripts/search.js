// var geocoder;
// var map;
// function initialize() {
//   geocoder = new google.maps.Geocoder();
// 	var latlng = new google.maps.LatLng (40.707992, -74.006586)
//   var map = new google.maps.Map(document.getElementById('map'), {
//   	center: nycda,
//   	zoom: 15
//     // mapTypeId: google.maps.MapTypeId.ROADMAP
//   });      
// }

// var geocoder;
// var map;
// function initialize() {
//   geocoder = new google.maps.Geocoder();
//   var latlng = new google.maps.LatLng(40.707992, -74.006586);
//   var mapOptions = {
//     zoom: 15,
//     center: latlng
//   }
//   map = new google.maps.Map(document.getElementById("current_location"), mapOptions);
//   document.getElementById('dice').addEventListener('click', function() {
//     geocodeAddress(geocoder, map);
//   });
// }

// function codeAddress() {
//   var address = document.getElementById("current_location").value;
//   geocoder.geocode( { 'current_location': address}, function(results, status) {
//     if (status == google.maps.GeocoderStatus.OK) {
//       map.setCenter(results[0].geometry.location);
//       var marker = new google.maps.Marker({
//           map: map,
//           position: results[0].geometry.location
//       });
//     } else {
//       alert("Geocode was not successful for the following reason: " + status);
//     }
//   });
// }

// var geocoder;
// var map;
// function initialize() {
//   geocoder = new google.maps.Geocoder();
//   var latlng = new google.maps.LatLng(-34.397, 150.644);
//   var mapOptions = {
//     zoom: 8,
//     center: latlng
//   }
//   map = new google.maps.Map(document.getElementById("map"), mapOptions);
// }

// function codeAddress() {
//   var address = document.getElementById("address").value;
//   geocoder.geocode( { 'address': address}, function(results, status) {
//     if (status == google.maps.GeocoderStatus.OK) {
//       map.setCenter(results[0].geometry.location);
//       var marker = new google.maps.Marker({
//         map: map,
//         position: results[0].geometry.location
//       });
//     } else {
//       alert("Geocode was not successful for the following reason: " + status);
//     }
//   });
// }