@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="latitude" class="col-md-4 control-label">Latitude</label>

                            <div class="col-md-6">
                                <input id="latitude" type="text" class="form-control" name="latitude">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="longitude" class="col-md-4 control-label">Longitude</label>

                            <div class="col-md-6">
                                <input id="longitude" type="text" class="form-control" name="longitude" >
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="" class="col-md-4 control-label"> </label>
                            <div class="col-md-8">
                                <div id="map-container"></div>    
                            </div>
                        </div>


                        

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script  src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="  crossorigin="anonymous"></script>
<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=true&key=<?php echo env('GOOGLE_API_KEY')?>"></script>
<script>
	"use strict";
	
	$(document).ready(function() {
	
		// check if browser supports the geolocation api
		if(navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(success);			// if geolocation supported, call function
		} else {
  			$("#location").val('Your browser doesn\'t support the geolocation api.');
		}
				
		function success(position) {
			var latitude		= position.coords.latitude;				// set latitude variable
			var longitude		= position.coords.longitude;			// set longitude variable
			
			var mapcanvas		= document.createElement('div');		// create div to hold map
			mapcanvas.id = 'map';										// give this div an id of 'map'
			mapcanvas.style.height = '400px';							// set map height
			mapcanvas.style.width = '100%';								// set map width
			
			document.querySelector('#map-container').appendChild(mapcanvas);	// place new div within the 'map-container' div
			
			var coords = new google.maps.LatLng(latitude,longitude);	// set lat/long object for new map
  
			var options = {												// set options for map
				zoom: 15,
				center: coords,
				mapTypeControl: false,
				navigationControlOptions: {
					style: google.maps.NavigationControlStyle.SMALL
				},
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			
			var map = new google.maps.Map(document.getElementById("map"), options);	// create new map using settings above

			var marker = new google.maps.Marker({						// place a marker at our lat/long
				position:	coords,
				map:		map
			});
			
			var response = 'Latitude: ' + latitude + ' / Longitude: ' + longitude;	// build string containing lat/long
			//$("#location").val(response);
            
            $("#latitude").val(latitude);
            $("#longitude").val(longitude);	
		}
	});
</script>


@endsection
