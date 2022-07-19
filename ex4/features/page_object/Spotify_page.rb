
class SpotifyPage < SitePrism::Page
  set_url "https://open.spotify.com/"
  element :search_button, :xpath, "//*[@id='main']/div/div[2]/nav/div[1]/ul/li[2]/a"
  element :search_box,:xpath ,"//*[@id='main']/div/div[2]/div[1]/header/div[3]/div/div/form/input"
  element :play_song_image, :xpath,"//*[@id='searchPage']/div/div/section[2]/div[2]/div/div/div/div[2]/div[1]/div/div[1]/div[1]/img"
  element :play_song_button, :xpath, '//*[@id="searchPage"]/div/div/section[2]/div[2]/div/div/div/div[2]/div[1]/div/div[1]/div[1]/button'
  def search_song(text)
    self.search_button.click
    sleep 2
    self.search_box.set(text)
    sleep 3
  end

  def play_searched_song
    self.play_song_image.hover
    sleep 1
    self.play_song_button.click
    sleep 2
  end
end