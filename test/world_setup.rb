# frozen_string_literal: true

require '../lib/aves'
require 'pry'

puts 'Aves world preparation in progress...'

world = World.new
a = 0
20.times do
  puts a
  pos = world.free_rnd_pos
  puts 'World is too crowded!' if pos.nil?
  break if pos.nil?

  a += 7
  bird = Avis.new(color: "#99#{a + 40}#{a}", x: pos.q, y: pos.r)

  world.on_stage(bird)
end

puts 'Aves world terminated.'
