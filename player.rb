class Player
  attr_reader :name, :position

  def initialize(name, max_movement)
    @name = name
    @position = 0
    @max_movement = max_movement
  end

  def move(spaces)
    if (@position + spaces > @max_movement)
      @position = @max_movement
    else
      @position += spaces
    end
  end
end

# pass number of spaces to move and 
# if when you add it the resulting position is greater than the max_movement allowed (passed as a parameter), then set the position to the last square (max movement =  8 here, passed as a parameter on instantiation), otherwise go ahead and add it to create new position which is before last square.