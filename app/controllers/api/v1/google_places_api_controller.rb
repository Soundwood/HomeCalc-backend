class Api::V1::GooglePlacesApiController < ApplicationController
    def show
        city = params['id']
        google_place_search_api_url = "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=#{city}&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry&key=#{ENV["GOOGLE_PLACES_API_KEY"]}"
        place_search_response = HTTParty.get(google_place_search_api_url)
        photo_reference = place_search_response["candidates"][0]["photos"][0]["photo_reference"]
        render json: place_search_response
        # google_places_api_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=1600&photoreference=#{photo_reference}&key=#{ENV["GOOGLE_PLACES_API_KEY"]}"
        # place_photo_response = HTTParty.get(google_places_api_url)
        # render place_photo_response
    end
end