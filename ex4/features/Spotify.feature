Feature: Search and Play Songs on Spotify
  Scenario: Search Spotify on Chrome
    Given Browser is open
    Then Navigate to Spotify.com

  Scenario Outline: Search for Songs
    Given We are on Spotify.com
    When we search for '<song_name>'
    Then Search result should display song name
    Examples:
    |song_name|
    |The last butterfly|
    |Love Is Here      |
    |Tessa             |
  Scenario: Play a Song
    Given Searched a song
    When I click on Play button
    Then Song is Played
