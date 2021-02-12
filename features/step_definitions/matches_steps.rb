When("I do a request on Matchs API") do
  @request_matches = matches.get_matches
end

Then("the service matchs should be return code {int}") do |status_code|
  expect(@request_matches.code).to eq status_code
end

Then("return a matchs list") do
  expect(@request_matches.message).not_to be_falsy
end

When("I do a request on Matchs API with match id") do
  @id = sort_id.to_i
  @request_matches = matches.get_matches_id(@id)
end

Then("return a match id") do
  expect(@request_matches.parsed_response["ID"]) == @id
end

When("I do a request on Matchs API with a invalid id") do
  @id = 5555555
  @request_matches = matches.get_matches_id(@id)
end

Then("the error message {string}") do |invalidId|
  expect(@request_matches.parsed_response["message"]).to eq invalidId
end
