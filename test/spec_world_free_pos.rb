# frozen_string_literal: true

require_relative '../lib/aves'
require 'minitest/autorun'

describe World do
  before do
    @world = World.new
  end

  describe 'when asked to get a free random position on the grid' do
    it 'retuns an hexagon from grid' do
      @world.free_rnd_pos.wont_equal nil
    end
  end
end
