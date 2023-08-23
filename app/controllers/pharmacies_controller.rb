class PharmaciesController < ApplicationController


 def index 
    @pharmacies = Pharmacy.all
    #@pharmacies = Pharmacy.where("")
 end

 def show
    @pharmacy = Pharmacy.find(params[:id])
 end


end
