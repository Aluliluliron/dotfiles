#!/bin/sh

#get_icon() {
#    case $1 in
#        01d) icon="";;
#        01n) icon="";;
#        02d) icon="";;
#        02n) icon="";;
#        03*) icon="";;
#        04*) icon="";;
#        09d) icon="";;
#        09n) icon="";;
#        10d) icon="";;
#        10n) icon="";;
#        11d) icon="";;
#        11n) icon="";;
#        13d) icon="";;
#        13n) icon="";;
#        50d) icon="";;
#        50n) icon="";;
#        *) icon="";
#    esac
#
#    echo $icon
#}

get_icon() {
    case $1 in
        01d) icon="";;
        01n) icon="";;
        02d) icon="";;
        02n) icon="";;
        03*) icon="";;
        04*) icon="";;
        09d) icon="";;
        09n) icon="";;
        10d) icon="";;
        10n) icon="";;
        11d) icon="";;
        11n) icon="";;
        13d) icon="";;
        13n) icon="";;
        50d) icon="";;
        50n) icon="";;
        *) icon="";
    esac

    echo $icon
}

KEY="8484af70a99d9a13c197c73b00b75694"
CITY="792680"
UNITS="metric"
SYMBOL="°"

API="https://api.openweathermap.org/data/2.5"

wget -q --spider http://google.com

if ! [ $? -eq 0 ]; then
    echo "%{T5}%{T-} ??${SYMBOL}C %{T4}%{B#EE99cc99}%{FEEffcc66}%{T- B- F-}"
    echo "Offline "
    exit
fi

if [ -n "$CITY" ]; then
    if [ "$CITY" -eq "$CITY" ] 2>/dev/null; then
        CITY_PARAM="id=$CITY"
    else
        CITY_PARAM="q=$CITY"
    fi

    weather=$(curl -sf "$API/weather?appid=$KEY&$CITY_PARAM&units=$UNITS")
else
    location=$(curl -sf https://location.services.mozilla.com/v1/geolocate?key=geoclue)

    if [ -n "$location" ]; then
        location_lat="$(echo "$location" | jq '.location.lat')"
        location_lon="$(echo "$location" | jq '.location.lng')"

        weather=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")
    fi
fi

if [ -n "$weather" ]; then
    weather_temp=$(echo "$weather" | jq ".main.temp" | cut -d "." -f 1)
    weather_icon=$(echo "$weather" | jq -r ".weather[0].icon")
    if [ $1 = "-1" ]; then
        echo " $weather_temp$SYMBOL "
    elif [ $1 = "-2" ]; then
        echo "  $(get_icon "$weather_icon")  "
    else
        echo "%{T5}$(get_icon "$weather_icon")%{T-} $weather_temp${SYMBOL}C %{T4}%{B#EE99cc99}%{FEEffcc66}%{T- B- F-}"
    fi
fi
