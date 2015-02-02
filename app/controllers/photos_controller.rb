class PhotosController < ApplicationController

  def index

    @list_of_photos = Photo.all

  end

  def show

    @photo = Photo.find(params[:id])

  end

  def new_form

  end

  def create_row

    @photo = Photo.new

    @photo.source = params["the_source"]
    @photo.caption = params["the_caption"]

    @photo.save

  end

  def destroy

    @photo = Photo.find(params[:id])

    @photo.destroy

  end


end
