class Owner
  attr_reader :name, :species
  #attr_accessor :all_cats, :all_dogs # code goes here
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @all_cats = []
    @all_dogs = []
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cats.all.select {|cat| cat.owner == self}
  end
  
  def self.find_or_create_by_name(name)
    @@all.find{ |owner| owner.name == name } ||  self.new(name)
  end
  
  # def dogs
  #   Dogs.all.select {|dog| dog.owner == self}
  # end
  
  # def buy_cat(this_cat)
    
  #   @all_cats << this_cat
  #   binding.pry
  # end
  
  # def buy_dog(this_dog)
  #   @all_dogs << this_dog
  # end
  
  
end