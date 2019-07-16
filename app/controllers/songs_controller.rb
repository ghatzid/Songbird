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

  #Show Action
get "/songs/:id" do 
  @song = Song.find(params[:id])
  erb :"songs/show"
end 

#Create Action
post "/songs" do 
  song = Song.create(params)
  redirect "/songs/#{song.id}"
end





end