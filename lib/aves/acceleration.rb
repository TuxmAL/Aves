# frozen_string_literal: true

require 'matrix'

# +Acceleration+ stores the coordinates of an object placed in the world,
# these coordinates are integer or real numbers.
class Acceleration
  # Your acceleration: you must specify at least +x+-axis and +y+-axis acceleration.
  # If so, +z+-axis values will be 0.
  def initialize(ax, ay, az = 0)
    @p = Vector[ax, ay, az]
  end

  # Get the +x+-axis acceleration for the current object.
  def x
    @p[0]
  end

  # Get the +y+-axis acceleration for the current object.
  def y
    @p[1]
  end

  # Get the +z+-axis acceleration for the current object.
  def z
    @p[2]
  end

  # Set the +x+-axis acceleration for the current object to +value+.
  def x=(value)
    @p[0] = value
  end

  # Set the +y+-axis acceleration for the current object to +value+.
  def y=(value)
    @p[1] = value
  end

  # Set the +z+-axis acceleration for the current object to +value+.
  def z=(value)
    @p[2] = value
  end
end
