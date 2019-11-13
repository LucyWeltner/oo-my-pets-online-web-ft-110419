class Dog
  attr_accessor :mood 
  attr_reader :name, :owner
  @@all_dogs = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner 
    @mood = "nervous"
    @@all_dogs << self
    self.owner.dogs << self
  end 
  
  def owner=(owner)
    @owner = owner
    if owner 
      @owner.dogs << self
    end
  end 
  
  def self.all 
    @@all_dogs
  end
  # code goes here
end