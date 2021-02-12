#Aqui estou sorteando os ids da minha massa de dados em /data/matchs.yml
def sort_id
  match_file = YAML.load_file("features/support/data/matches.yml")
  ids = "#{match_file["ids"]}"
  ids = ids.split(",")
  ids = ids[rand(1...ids.length)]
  ids
end

def sort_id_teams
  match_file = YAML.load_file("features/support/data/teams.yml")
  ids = "#{match_file["ids"]}"
  ids = ids.split(",")
  ids = ids[rand(1...ids.length)]
  ids
end
