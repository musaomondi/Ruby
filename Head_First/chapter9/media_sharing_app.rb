class Clip
  attr_reader :comments
  def initialize
    @comments = []
  end

  def add_comment(comment)
#call the "comments" method to get the array in "@comments" and append a comment to it  
    comments << comment
  end
  def play
    puts "Playing #{object_id}..." #show the id of the object we're playing
  end
end

class Video < Clip
  attr_accessor :resolution
end
class Song < Clip
  attr_accessor :beats_per_minute
end

video = Video.new #set up a new video object
video.add_comment("Cool slow motion effect!") #add comments to it
video.add_comment("Weird ending.")
song = Song.new #set up a new song object
song.add_comment("Awesome beat.") #add a comment to it

p video.comments, song.comments #inspect all elements
