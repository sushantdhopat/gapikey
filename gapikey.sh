#!/bin/bash
#ref:-https://github.com/streaak/keyhacks#Google-Maps-API-key

echo -e "\e[1;32m"
echo -e "\e[1;33m"
echo -e "\e[;32m"
key=$1


echo -e "\e[1;32m Static Maps - 2 \e[0m"
echo 
curl 'https://maps.googleapis.com/maps/api/staticmap?center=45%2C10&zoom=7&size=400x400&key=$key'
echo
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Streetview - 7 \e[0m"
echo 
curl 'https://maps.googleapis.com/maps/api/streetview?size=400x400&location=40.720032,-73.988354&fov=90&heading=235&pitch=10&key=$key'
echo
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Embed - varies \e[0m"
echo
curl 'https://www.google.com/maps/embed/v1/place?q=place_id:ChIJyX7muQw8tokR2Vf5WBBk1iQ&key=$key'
echo
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Directions - 5 \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood4&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Geocoding - 5 \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/geocode/json?latlng=40,30&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Distance Matrix - 5 \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=40.6655101,-73.89188969999998&destinations=40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.6905615%2C-73.9976592%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626%7C40.659569%2C-73.933783%7C40.729029%2C-73.851524%7C40.6860072%2C-73.6334271%7C40.598566%2C-73.7527626&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Find Place from Text - Varies \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=Museum%20of%20Contemporary%20Art%20Australia&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry&key=$key'
echo
echo
echo -e "\e[1;32m Autocomplete - varies \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Bingh&types=%28cities%29&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Elevation - 5 \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/elevation/json?locations=39.7391536,-104.9847034&key=KEY_HERE'
echo
echo
echo -e "\e[1;32m Timezone - 5 \e[0m"
echo
curl 'https://maps.googleapis.com/maps/api/timezone/json?location=39.6034810,-119.6822510&timestamp=1331161200&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Roads - 10 \e[0m"
echo
curl 'https://roads.googleapis.com/v1/nearestRoads?points=60.170880,24.942795%7C60.170879,24.942796%7C60.170877,24.942796&key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;32m Geolocate - 5 \e[0m"
echo
curl 'https://www.googleapis.com/geolocation/v1/geolocate?key=$key'
echo -e "------------------------------------------------------------------------------------------"
echo
echo -e "\e[1;33m [+] Finished \e[0m"
