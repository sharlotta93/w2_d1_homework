require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestTeam < MiniTest::Test

  def setup
      @Team = Team.new("Wild Dogs", ["Becky", "Agatha", "Alex", "Tina"], "Jack The Ripper")
  end

  def test_get_team_name
    assert_equal("Wild Dogs", @Team.team_name())
  end

  def test_number_of_players
    assert_equal(4, @Team.players.length)
  end

  def test_get_coach
    assert_equal("Jack The Ripper", @Team.coach())
  end

  def test_change_coach_name
    @Team.coach = 'Not a killer'
    assert_equal('Not a killer', @Team.coach())
  end

  def test_add_new_player
    result = @Team.add_new_player("Andrea")
    assert_equal(5, result.length)
  end

  def test_check_if_player_exists__true
    result = @Team.check_name("Tina")
    assert_equal(true, result)
  end

  def test_check_if_player_exists__false
    result = @Team.check_name("Jackie")
    assert_equal(false, result)
  end

  def test_add_points_after_win
    result = @Team.register_point("win")
    assert_equal(1, result)
  end
end
