class Team

attr_reader :team_name, :players, :coach, :points
attr_writer :coach, :points

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end



def add_new_player(name)
  @players << name
end

def check_name(name)
  for person in @players
    if person == name
      return true
    end
  end
  return false
end

def register_point(score)
  if score == "win"
    @points += 1
  end
  return @points
end

end
