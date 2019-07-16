class SongsController < ApplicationController

  #Index Action 
  get "/songs" do
    @songs = Song.all
    erb :"songs/index" 
  end
  
  #New Action
  get "/songs/new" do 
    erb :"songs/new"
  end


  get "/index" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/new" do 
    erb :"songs/new"
  end


end