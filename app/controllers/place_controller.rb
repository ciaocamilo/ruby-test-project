class PlaceController < ApplicationController
  
  skip_before_action :verify_authenticity_token

  def create
    if request.post?
      place = Place.create(person_name: params[:person_name], ligth: params[:ligth], latitude: params[:latitude], longitude: params[:longitude])
      redirect_to "/place/view/" + place.id.to_s 
    end
  end

  def view
    @place = Place.find_by(id: params[:id])
  end

  def show
    @places = Place.all
  end

  def delete
    place = Place.find_by(id: params[:id])
    place.destroy
    redirect_to "/place/show/" 
  end

  def update
    if request.post? 
      place = Place.find_by(id: params[:id])
      place.update(person_name: params[:person_name], ligth: params[:ligth], latitude: params[:latitude], longitude: params[:longitude])
      redirect_to "/place/view/" + place.id.to_s 
    else
      @place = Place.find_by(id: params[:id])
    end
  end

end
