# frozen_string_literal: true

# This is the bidimensional world where all will take place, mapped with exhagonal tiles.
class World
  MAX_WIDTH = 100
  MAX_HEIGHT = 100
  MAX_DEPTH = 100

  def initialize
    @prng = Random.new
    @stage = AxialGrid.new
    @max_iterate = (MAX_WIDTH / 2) * (MAX_HEIGHT / 2) / 10
  end

  def free?(pos)
    pos.data.nil?
  end

  def free_rnd_pos
    free_pos = nil
    (1..@max_iterate).each do
      x = @prng.rand(MAX_WIDTH)
      y = @prng.rand(MAX_HEIGHT)
      pos = @stage.cget(x, y)
      pos ||= @stage.cset(x, y)
      neighbors = pos.surrounding_hexes
      neighbors.prepend pos
      free_pos = neighbors.find { |p| free?(p) }
      break unless free_pos.nil?
    end
    free_pos
  end

  def on_stage(obj)
    @stage.cset(obj.position.x, obj.position.y).data = obj
  end

  def clear_from_stage(pos)
    obj = @stage[pos.x, pos.y].data
    @stage[pos.x, pos.y] = nil
    obj
  end
end
