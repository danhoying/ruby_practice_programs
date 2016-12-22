# Practicing writing classes in Ruby. This class creates a "tree" object
# with height, age, and fruit-bearing methods.

class OrangeTree
    
    def initialize
        @height = 3
        @age = 2
        @fruit = 0
        puts "Congratulations, you have adopted an orange tree!"
        puts "Your tree is " + @height.to_s + " feet tall and " + @age.to_s + " years old."
        puts ""
    end
    
    def height 
        puts "Your tree is growing fast! It is now " + @height.to_s + " feet tall."
    end
    
    def age
        puts "Your tree is now " + @age.to_s + " years old."
    end
    
    def fruit
        if @fruit > 0
            puts "Your tree is flourishing. It now bears " + @fruit.to_s + " oranges."
        else
            puts "Your tree has no fruit."
        end
    end
    
    def oneYearPasses
        puts "A year has passed. Your tree grows, but loses its fruit during the harsh winter."
        @age += 1
        @height += 1
        @fruit = 0
    end
    
    def treeLife
        if @age > 10
            puts "Sad times. Your tree has died. :( It was " + @age.to_s + " years old."
        else
            puts "Your tree is healthy."
        end
    end
    
    def produceFruit
        if @age > 5
            @fruit += @age
            puts "Your tree has started to produce fruit! There are " + @fruit.to_s + " oranges."
        end
    end
    
    def pickOrange
        if @fruit > 0
            @fruit -= 1
            puts "You are hungry and take an orange from your tree."
            puts "There are now only " + @fruit.to_s + " oranges left."
        elsif @fruit == 0
            puts "There are no oranges left!"
        end
    end
    
end

tree = OrangeTree.new
tree.oneYearPasses
tree.height
tree.age
tree.oneYearPasses
tree.oneYearPasses
tree.height
tree.age
tree.oneYearPasses
tree.produceFruit
tree.pickOrange
tree.oneYearPasses
tree.produceFruit
tree.fruit
tree.oneYearPasses
tree.pickOrange
tree.treeLife
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.fruit
tree.age
tree.treeLife
