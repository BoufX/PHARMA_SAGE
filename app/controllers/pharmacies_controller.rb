class PharmaciesController < ApplicationController


 def index 
    @pharmacies = Pharmacy.all
    #@pharmacies = Pharmacy.where("")
    @markers = @pharmacies.geocoded.map do |pharmacy|
      {
        lat: pharmacy.latitude,
        lng: pharmacy.longitude
      }
    end
 end

 def show
    @pharmacy = Pharmacy.find(params[:id])
 end




end
