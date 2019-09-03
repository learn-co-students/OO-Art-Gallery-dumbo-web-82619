class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    Painting.all.select {|paint| paint.artist == self}
  end 

  def galleries 
    paintings.map{|paint| paint.gallery}.uniq
  end 

  def cities 
    galleries.map{|gallery| gallery.city}.uniq
  end 

  def self.total_experience
    Artist.all.map{|art| art.years_experience}
    .inject(:+)
  end 

  def self.most_prolific
    Artist.all.max_by {|art| art.years_experience}
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

end

