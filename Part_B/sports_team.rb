class Team

attr_reader :team_name, :players, :coach
attr_writer :coach

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
end

# def add_new_player(name)
#   players << name
# end

end
