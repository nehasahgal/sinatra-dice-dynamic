require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:dice/:sides") do #make "zebra" a wildcard using a colon
  @number_of_dice = params.fetch("dice").to_i
  @number_of_sides = params.fetch("sides").to_i
  
  @rolls = []

  @number_of_dice.times do
    die = rand(1..@number_of_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
