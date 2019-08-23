# frozen_string_literal: true

class TestAvis < Minitest::Test
  def setup
    @avis = Avis.new(x: 10, y: 12, vx: 2, vy: 1, ax: 1, ay: 2, color: '#ff0000', foresight: [1, 0, 0.5, 0.5, 0, 0])
  end

  def test_avis_position
    assert_equal 10, @avis.position.x
    assert_equal 12, @avis.position.y
    assert_equal 0, @avis.position.z
  end

  def test_avis_velocity
    assert_equal 2, @avis.velocity.x
    assert_equal 1, @avis.velocity.y
    assert_equal 0, @avis.velocity.z
  end

  def test_avis_acceleration
    assert_equal 1, @avis.acceleration.x
    assert_equal 2, @avis.acceleration.y
    assert_equal 0, @avis.acceleration.z
  end

  def test_avis_color
    assert_equal '#ff0000', @avis.color
  end

  def test_avis_foresight
    assert_equal [1, 0, 0.5, 0.5, 0, 0], @avis.foresight
  end
end
