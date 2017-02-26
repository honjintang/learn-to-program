class OrangeTree

  def initialize
  @height = 5
  @age = 0
  @fruit = 0
  @alive = true
  puts "An orange tree is planted"
  end

  def height
    if @alive
      @height
    puts "The tree is #{@height.to_s}m tall."
    else
    "Your tree is dead"
    end
  end

  def countTheOranges
    if @alive
      @fruit
    puts "The tree has #{@fruit} oranges"
    else
      puts "Dead trees bear no oranges"
    end
  end

  def oneYearPasses
    if @alive
    @height += 1
    @age += 1
    @fruit = 0 #old oranges fall off
      if @age == 30
        @alive = false
        puts "Your tree is too old and has died"
      elsif @age <= 2
        puts "This year your tree has grown to #{@height.to_s}m tall, but is too young to bear fruit."
      else
        @fruit += 15
        puts "This year your tree has grown to #{@height.to_i}m tall, and has #{@fruit} oranges."
      end
    elsif @age > 30
      puts "A year later, and your tree is still dead."
  end

  def pickAnOrange
    if @alive
      if @fruit < 1
      puts "Sorry, there are no oranges to pick this year"
      else
      @fruit -= 1
      puts "You picked an orange, now there are #{@fruit} oranges left"
      end
    else
      puts "Your tree is dead. There are no oranges to pick."
    end
  end
end
end

 tree = OrangeTree.new
  25.times do
  tree.oneYearPasses
end

tree.pickAnOrange
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.pickAnOrange
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.pickAnOrange
