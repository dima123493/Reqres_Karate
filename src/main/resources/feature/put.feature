Feature: Put API
  Background:
    * url 'https://reqres.in'
    * def expectedOutput = read("response.json")
    * def expectedInput = read("request.json")

  Scenario: Put a user from json file
    * path '/api/users/2'
    * request expectedInput
    * set expectedInput.job = "zion resident"
    * method put
    * match responseStatus == 200
    * match response == {"name": "morpheus","job": "zion resident","updatedAt": "#ignore"}