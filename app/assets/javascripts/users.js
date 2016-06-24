var geocoder;
var map;
function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(40.707992, -74.006586);
  var mapOptions = {
    zoom: 15,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById("map"), mapOptions);
}

$(document).ready(function(){
  $(window).load(function(){
    // address is grabbed via the data attribute
    var currentLocation = $("#location").data('loc');
    console.log(currentLocation);
    if (currentLocation.length > 1) {
      codeAddress(currentLocation)
    }
  });
  // address is geocoded here
  function codeAddress(address) {
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        // marker is put on the map here
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
        });
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }
});