module AcceptsComments
  def comments
    if @comments
      @comments
    else
      @comments = []
    end
  end
  def add_comment(comment)
#call the "comments" method to get the array in "@comments" and append a comment to it  
    comments << comment
  end
end
class Clip

  def play
    puts "Playing #{object_id}..." #show the id of the object we're playing
  end
end

class Video < Clip
  include AcceptsComments
  attr_accessor :resolution
end
class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments
  def show
    puts "Displaying #{object_id}..."
  end
end
photo = Photo.new
photo.add_comment("Beautiful colors.")
video = Video.new #set up a new video object
video.add_comment("Cool slow motion effect!") #add comments to it
video.add_comment("Weird ending.")
song = Song.new #set up a new song object
song.add_comment("Awesome beat.") #add a comment to it

p video.comments, song.comments, photo.comments #inspect all elements
