$(document).ready(function () {

    // check if browser supports the geolocation api
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(success); // if geolocation supported, call function
    } else {
        $("#location").val('Your browser doesn\'t support the geolocation api.');
    }

    function success(position) {
        var latitude = position.coords.latitude; // set latitude variable
        var longitude = position.coords.longitude; // set longitude variable

        var mapcanvas = document.createElement('div'); // create div to hold map
        mapcanvas.id = 'map'; // give this div an id of 'map'
        mapcanvas.style.height = '400px'; // set map height
        mapcanvas.style.width = '100%'; // set map width

        document.querySelector('#map-container').appendChild(mapcanvas); // place new div within the 'map-container' div

        var coords = new google.maps.LatLng(latitude, longitude); // set lat/long object for new map

        var options = { // set options for map
            zoom: 15,
            center: coords,
            mapTypeControl: false,
            navigationControlOptions: {
                style: google.maps.NavigationControlStyle.SMALL
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map"), options); // create new map using settings above

        var marker = new google.maps.Marker({ // place a marker at our lat/long
            position: coords,
            map: map
        });

        var response = 'Latitude: ' + latitude + ' / Longitude: ' + longitude; // build string containing lat/long
        //$("#location").val(response);

        $("#latitude").val(latitude);
        $("#longitude").val(longitude);
    }
});