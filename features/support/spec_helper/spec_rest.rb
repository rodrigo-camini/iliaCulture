module REST
  def matches
    Rest::Matches.new
  end

  def teams
    Rest::Teams.new
  end
end
