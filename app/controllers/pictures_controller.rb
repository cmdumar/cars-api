class PicturesController < ApplicationController
  def create
    pic = Picture.create(picture_params)
    if pic.save
      json_response(pic, :created)
    else
      json_response(pic.errors, :unprocessable_entity)
    end
  end

  def destroy
    pic = Picture.find_by(id: params[:id])
    pic.destroy
    json_response('Deleted the picture', :ok)
  end

  private

  def picture_params
    params.permit(:image, :category, :car_id)
  end
end
