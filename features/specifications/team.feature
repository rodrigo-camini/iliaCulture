#language: en

@teams
Feature: teams Api

    Feature Description: serach api teams
    Validate operation teams api

    @get_teams
    Scenario: Validate GET Teams API with success
        When I do a request on teams API
        Then the service teams should be return code 200
        And return a team list
