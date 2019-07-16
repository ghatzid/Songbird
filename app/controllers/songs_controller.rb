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

#Edit Action
post "/songs/:id" do
  @song = Song.find(params[:id])
  @song.title = params[:title]
  @song.release_year = params[:release_year]
  @song.save
  redirect "/songs/#{@song.id}"
end

get "/songs/edit/:id" do 
  @song = Song.find(params[:id])
  erb :"songs/edit"
end 








end