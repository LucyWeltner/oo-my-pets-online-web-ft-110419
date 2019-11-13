class Cat
  attr_accessor :mood
  attr_reader :name, :owner
  @@all_cats = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
    self.owner.cats << self
  end
  
  def owner=(owner)
    @owner = owner
    if owner
     @owner.cats << self
    end
  end
  
  def self.all 
    @@all_cats
  end
end