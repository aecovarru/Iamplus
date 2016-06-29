class UserController < ApplicationController

  def spotify

    auth_hash = request.env['omniauth.auth']
    auth_hash["info"].merge!({ "id" => auth_hash["uid"] })
    spotify_user = RSpotify::User.new(auth_hash)

    user = User.find_or_create_by(user_id: spotify_user.id.to_i)
    playlists = spotify_user.playlists.delete_if { |playlist| playlist.owner.id != spotify_user.id }
    tracks = playlists.map { |playlist| playlist.tracks }.flatten
    artists = tracks.map { |track| track.artists }.flatten
    genres = artists.map { |artist| artist.genres }.flatten

    user.create_artists(artists)
    user.create_genres(genres)

  end
  
end
