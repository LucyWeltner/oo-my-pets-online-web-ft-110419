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
    p dog_name
    found_dog = Dog.all.find{|dog| dog.name == dog_name}
    if found_dog
      found_dog.owner = self
    else 
      bought_dog = Dog.new(dog_name, self)
    end
  end
  
  def walk_dogs(dog_name)
    walked_dog = @dogs.find{|dog| dog.name == dog_name}
    walked_dog.mood = "happy"
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