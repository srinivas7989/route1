//map

// Initialize and add the map
function initMap() {
  // The location of Uluru
  var uluru = {lat: 17.3850, lng: 78.4867};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}

//faveroite

$(".heart.fa").click(function() {
	  $(this).toggleClass("fa-heart fa-heart-o");
	});
