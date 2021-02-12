module Rest
  class Teams
    include HTTParty

    base_uri CONFIG["base_uri"]
    headers "Content-Type" => "application/json"
    headers "X-Auth-Token" => "60ede863a97a4c01bf7ccb4c6bfcf69a"

    def get_teams(id)
      self.class.get("/v2/competitions/#{id}/teams")
    end
  end
end
