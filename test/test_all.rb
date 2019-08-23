# frozen_string_literal: true

# Helper to execute all test
#############################

# Requiring all the files to test
require_relative '../lib/aves.rb'

# require minitest suite
require 'minitest/autorun'

# require all test files
require_relative 'test_avis.rb'
require_relative 'spec_world_free_pos.rb'
