When("I do a request on teams API") do
  @id = sort_id_teams.to_i
  @request_teams = teams.get_teams(@id)
end

Then("the service teams should be return code {int}") do |status_code|
  expect(@request_teams.code).to eq status_code
end

Then("return a team list") do
  expect(@request_teams.message).not_to be_falsy
end
