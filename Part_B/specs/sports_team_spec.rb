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

  # def test_add_new_palyer
  #   assert_equal(5, @team.player().length)
  # end

end
