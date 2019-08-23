# frozen_string_literal: true

require 'matrix'

# +Velocity+ stores the coordinates of an object placed in the world,
# these coordinates are integer or real numbers.
class Velocity
  # Your velocity: you must specify at least +x+-axis and +y+-axis speed.
  # If so, +z+-axis values will be 0.
  def initialize(vx, vy, vz = 0)
    @p = Vector[vx, vy, vz]
  end

  # Get the +x+-axis speed for the current object.
  def x
    @p[0]
  end

  # Get the +y+-axis speed for the current object.
  def y
    @p[1]
  end

  # Get the +z+-axis speed for the current object.
  def z
    @p[2]
  end

  # Set the +x+-axis speed for the current object to +value+.
  def x=(value)
    @p[0] = value
  end

  # Set the +y+-axis speed for the current object to +value+.
  def y=(value)
    @p[1] = value
  end

  # Set the +z+-axis speed for the current object to +value+.
  def z=(value)
    @p[2] = value
  end
end
