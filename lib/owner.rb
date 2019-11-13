class Owner
  attr_reader :name, :species, :cats, :dogs
  @@owners = []
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    @cats = []
    @dogs = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_cat(cat_name)
    found_cat = Cat.all.find{|cat| cat.name == cat_name}
    if found_cat
      found_cat.owner = self
    else 
      bought_cat = Cat.new(cat_name, self)
    end
  end
  
  def buy_dog(dog_name)
    found_dog = Dog.all.find{|dog| dog.name == dog_name}
    if found_dog
      found_dog.owner = self
    else 
      bought_dog = Dog.new(dog_name, self)
    end
  end
  
  def walk_dogs
    @dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats 
    @cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets 
    @cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil
    end 
    @dogs.each do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats = []
    @dogs = []
  end
  
  def list_pets 
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.length 
  end
  
  def self.reset_all
    @@owners = []
  end 
  # code goes here
end