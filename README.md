# WelcomeToTheGrid

## Installation

Add this line to your application's Gemfile:

    gem 'welcome_to_the_grid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install welcome_to_the_grid

## Usage

With this gem, there are a few functions.


First, you can make a grid of any size...

grid=Grid::Grid.new(10,10)

Then, there are a number of ways to alter the objects within that grid.



Horizontally, you can change a row of objects:

grid.horizontal(2,7,5,'k')

Variables: starting x point, final x point, which y point, and what to change them to.



Vertically, you can change a row of objects:

grid.vertical(1,9,4,'u')

Variables: starting y, final y, which x point, and what to change them to.



You can make a square of objects, which mixes the two previous methods:

grid.square(3,3,7,7,'i')

Variables: starting x, starting y, final x, final y, and what the change them to.



You can fill a square of objects:
grid.fill_square(2,2,6,6,'w')

Variables: starting x, starting y, final x, final y, and what the change them to.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
