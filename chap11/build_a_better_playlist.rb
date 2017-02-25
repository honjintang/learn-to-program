#music_shuffle trying to reduce clumping at the beginning of the playlist
#treat as if this is shuffling cards - shuffling twice and then cutting the deck once.

def music_shuffle filenames

  number_of_songs = filenames.length

  #shuffle twice
  2.times do
    left_index = 0
    right_index = number_of_songs/2
    shuffled = []

    while shuffled.length < number_of_songs
      if shuffled.length % 2 == 0
        #take track from right
        shuffled << filenames[right_index]
        right_index += 1
      else
        #take track from left
        shuffled << filenames[left_index]
        left_index += 1
      end
  end

  shuffled = filenames
  end

  final = []
  cut = rand(number_of_songs) #index of card to cut at
  counter = 0

  while counter < number_of_songs
    final << filenames[(counter+cut)%number_of_songs]
    counter += 1
  end

  final
end

#cutting the deck
