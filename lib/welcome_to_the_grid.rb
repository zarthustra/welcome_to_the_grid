#require "welcome_to_the_grid/version"

module Grid

  class Grid
    attr_accessor :grid

    def initialize(width, height, default = 0)
      row = [default] * width
      @grid  = []
      height.times do
        @grid << row.clone
      end
      self
    end

    def inspect  
      grid = @grid
      grid.each {|g| puts g.join(' ')}
    end

    def input(x, y, val)
      @grid[y][x] = val[0]
    end

    def horizontal(start_x, end_x, y, val)
      (start_x..end_x).each do |x|
        input(x, y, val)
      end
    end

    def vertical(start_y, end_y, x, val)
      (start_y..end_y).each do |y|
        input(x, y, val)
      end
    end

    def square(start_x, start_y, end_x, end_y, val)
      horizontal(start_x, end_x, start_y, val)
      horizontal(start_x, end_x, end_y, val)
      vertical(start_y, end_y, start_x, val)
      vertical(start_y, end_y, end_x, val) 

    end  

    def fill_square(start_x, start_y, end_x, end_y, val)
      (start_y..end_y).each do |y|
        horizontal(start_x, end_x, y, val) 
      end
    end

  end
end
