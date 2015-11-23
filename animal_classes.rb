
class Bear
  def initialize(name, type, food=nil)
    @name = name
    @type = type
    @food = []
  end

  def name
    @name
  end

  def type
    @type
  end

  def roar
    puts "#{@name} says ROOOOOOOOAAARRRRRR!!!!"
  end

  def eaten
    puts "#{@name} has eaten:\n"
    @food.each {|item| puts item.name}

  end

  def take_fish_from(river_name)
    puts "#{@name} reaches into the river and grabs #{river_name.fish_array.last.name} to eat."
    @food << river_name.fish_array.pop 
  end

  def fussy_eater(river_name, type)

    right_fish = river_name.fish_array.find {|fish| fish.type == type}

    if right_fish.class == Fish
      puts "#{@name} is a fussy eater and wants a #{type}. They look around the river and find #{right_fish.name} to eat."
       @food << right_fish
        river_name.fish_array.delete_if {|fish| fish.name == right_fish.name }
    else 
      puts "#{@name} is a fussy eater and wants a #{type}. They look around the river and find nothing to eat."
      puts "#{self.roar}"
    end
  end

end



class Fish
  def initialize(name, type)
    @name = name
    @type = type
  end

  def name
    @name
  end

  def type
    @type
  end

  def wiggle
    puts "#{@name} wiggles."
  end
end



class River
  def initialize(fish_array)
    @fish_array = fish_array
  end

  def view_fish
    puts "Current fish in the river:"
    @fish_array.each {|fish| puts fish.name}
    puts "\n"
  end

  def fish_array
    @fish_array
  end

end

