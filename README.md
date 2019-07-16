Goal: Build a Songs App 

## - Using Corneal create a new Sinatra app called songs
## - A Song has a title, and release\_year
## - Build out full CRU (create, read, update) for the Song model with applicable controller actions

PUT form and corresponding route:

<form action="/song/<%=@song_object.id%>" method="post">
  <input type="hidden" name="_method" value="PUT">
  --------------------------------
  YOUR FORM FIELDS HERE
  --------------------------------
  <input type="submit" value="Edit song">
</form>

put '/song/:id' do
  @song_object = Song.find(params[:id])
  @song_object.update(params[:song])
  redirect to("/song/#{params[:id]}")
end