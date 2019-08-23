# frozen_string_literal: true

require 'rhex'

class World
  MAX_WIDTH = 100
  MAX_DEPTH = 100
  MAX_HEIGHT = 100

  def initialize
    @stage = AxialGrid.new
  end

  def rand_pos
      
  end
  
  def self.free?(pos)
    @stage.cget[pos.x, pos.y].data.nil?
  end

  def self.free_rnd_pos
    pos = @stage.random(MAX_WIDTH, MAX_DEPTH, MAX_HEIGHT)
    loop do
      pos = @stage .random(MAX_WIDTH, MAX_DEPTH, MAX_HEIGHT)
      break if pos.free?
    end
    pos
  end

  def on_stage(obj)
    @stage.cset(obj.position.x, obj.position.y].data = obj
  end

  def clear_from_stage(pos)
    obj = @stage[pos.x, pos.y].data
    @stage[pos.x, pos.y] = nil
    obj
  end
end         
               
puts 'Aves world preparation in progress...'

world = World.new
20.times do
  bird = Avis.new
  world.on_stage(bird.position, bird)
end

puts 'Aves world terminated.'
