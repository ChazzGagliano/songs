class SongsController < ApplicationController

  def show
    @song = Song.find_by(id: params["id"])
    render :show
  end

  def index
    @songs = Song.all
    render :index
    end

  def create
    @song = Song.new(
    title: params[:title],
    album: params[:album],
    artist: params[:artist],
    year: params[:year]
    )
    @song.save
    render :show
  end

end
