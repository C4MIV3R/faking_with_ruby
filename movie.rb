class Movie
  require 'json'
  require 'httparty'
  attr_accessor :title, :director, :plot
  def initialize(url)
    response = HTTParty.get(url)
    @title = response["Title"]
    @director = response["Director"]
    @plot = response["Plot"]
  end
  def to_hash
    return {
      :title => @title,
      :director => @director,
      :plot => @plot
    }
  end
  def to_json
    self.to_hash.to_json
  end
  def to_s
    p "#{title}"
    # p  @title +' is my favorite movie, directed by '+ @director +'. The plot of the movie is '+ @plot
  end
end

desp_me = Movie.new('http://www.omdbapi.com/?t=despicable+me&y=&plot=short&r=json')
