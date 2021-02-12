module Rest
  class Matches
    include HTTParty

    base_uri CONFIG["base_uri"]
    headers "Content-Type" => "application/json"
    headers "X-Auth-Token" => "60ede863a97a4c01bf7ccb4c6bfcf69a"

    def get_matches
      self.class.get("/v2/matches/")
    end

    def get_matches_id(id)
      self.class.get("/v2/matches/#{id}")
    end
  end
end
