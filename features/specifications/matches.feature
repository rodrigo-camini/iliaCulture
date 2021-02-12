#language: en

@matchs
Feature: Matches Api

    Feature Description: Search Matches
    Validate operations Matches api

    @get_matches
    Scenario: Validate GET API Matchs
        When I do a request on Matchs API
        Then the service matchs should be return code 200
        And return a matchs list

    @get_matches_id
    Scenario: Validate GET API Matchs with id
        When I do a request on Matchs API with match id
        Then the service matchs should be return code 200
        And return a match id

    @get_matches_invalid_id
    Scenario: Validate GET API Matchs with invalid id
        When I do a request on Matchs API with a invalid id
        Then the service matchs should be return code 400
        And the error message "The resource you are looking for does not exist."

