require_relative '../page_object/spotify_page'

Given(/^Browser is open$/) do
  $spotify = SpotifyPage.new
end

Then(/^Navigate to Spotify\.com$/) do
  $spotify.load
end

Given(/^We are on Spotify\.com$/) do
  sleep 2
end

When(/^we search for '(.*)'$/) do |song_name|
  $spotify.search_song(song_name)
end

Then(/^Search result should display song name$/) do
  sleep 2
end

When(/^I click on Play button$/) do
  $spotify.play_searched_song
end

Then(/^Song is Played$/) do
  sleep 2
end

Given(/^Searched a song$/) do
  $spotify.search_song('Everdream')
  sleep 2
end