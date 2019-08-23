# frozen_string_literal: true

# The +Avis+ class generate the moving object for this simulation. Every instance has a +position+, a +velocity+ and an +acceleration+ as vectors,
# and a +color+ as string in the #rrggbb format.
class Avis
  # Position of the object (a vector)
  attr_accessor :position
  # Velocity of the object (a vector)
  attr_accessor :velocity
  # Acceleration the object (a vector)
  attr_accessor :acceleration
  # how aware the object is of his surrounding when in motion (array of 6 float ranging from 0 to 1: Head, Tail, Head-Sx, Head-Dx, Tail-Sx, Tail-Dx)
  attr_accessor :foresight
  # Used to graphically spot the object on the map
  attr_accessor :color

  # Create a new objet to place in the world you may assign a +position+, a +velocity+ and an +acceleration+
  # :args: args hash with parameters:
  #   :x, :y, :z    -> object initial position on the map
  #   :vx, vy, vz -> object initial velocity
  #   ax, ay, az -> object initial acceleration
  #   color      -> object color on the map, default to #1199bb
  def initialize(**args)
    @position = Position.new(args.fetch(:x, 0), args.fetch(:y, 0), args.fetch(:z, 0))
    @velocity = Velocity.new(args.fetch(:vx, 0), args.fetch(:vy, 0), args.fetch(:vz, 0))
    @acceleration = Acceleration.new(args.fetch(:ax, 0), args.fetch(:ay, 0), args.fetch(:az, 0))
    @foresight = args.fetch(:foresight, [1, 0, 0.5, 0.5, 0, 0])
    @color = args[:color]
    @color ||= '#1199bb'
  end
end
