class PharmaciesController < ApplicationController

 def index 
    @pharmacies = Pharmacy.all
 end

 def show
    @pharmacy = Pharmacy.find(params[:id])
 end

end
