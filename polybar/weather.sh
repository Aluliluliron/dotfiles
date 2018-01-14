#!/bin/bash

LOC="133862"
URL="https://www.accuweather.com/fr/fr/sainte-genevieve-des-bois/133862/weather-forecast/$LOC?lang=fr"

wget -q -o /dev/null -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $12"°c" }' | head -1