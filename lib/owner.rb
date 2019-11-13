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
    puts cat_name 
    puts Cat.all
    found_cat = Cat.all.find{|cat| cat.name == cat_name}
    found_cat.owner= self
  end
  
  def buy_dog(dog_name)
    puts dog_name
    puts Dog.all
    found_dog = Dog.all.find{|dog| dog.name == dog_name}
    found_dog.owner = self
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