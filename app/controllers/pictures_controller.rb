class PicturesController < ApplicationController
  def index
    pictures = Picture.all
    json_response(pictures)
  end

  def create
    pic = Picture.create(picture_params)
    if pic.save
      json_response(pic, :created)
    else
      json_response(pic.errors, :unprocessable_entity)
    end
  end

  def destroy
    pic = set_pic
    return unless pic

    if pic.destroy
      json_response('Successfully deleted the picture')
    else
      json_response(car, 'Something went wrong')
    end
  end

  private

  def picture_params
    params.permit(:image, :category, :car_id)
  end

  def set_pic
    pic = Picture.find_by(id: params[:id])
    return pic if pic

    find_error('picture')
    nil
  end
end
