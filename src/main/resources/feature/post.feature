Feature: Post API
  Background:
    * url 'https://reqres.in'
    * def expectedOutput = read("response.json")
    * def expectedInput = read("request.json")

  Scenario: Post a user
    * path '/api/users'
    * request {"name": "morpheus", "job": "leader"}
    * method post
    * match responseStatus == 201

  Scenario: Post a user and check response
    * path '/api/users'
    * request {"name": "morpheus", "job": "leader"}
    * method post
    * match responseStatus == 201
    * match response == {"createdAt": "#ignore", "name": "morpheus", "job": "leader", "id": "#string"}

  Scenario: Post a user and read response from json file
    * path '/api/users'
    * request {"name": "morpheus", "job": "leader"}
    * method post
    * match responseStatus == 201
    * match response == expectedOutput

  Scenario: Post a user from json file
    * path '/api/users'
    * request expectedInput
    * method post
    * match responseStatus == 201
    * match response == expectedOutput

  Scenario: Post changed user from json file by where condition
    * path '/api/users'
    * request expectedInput
    * set expectedInput.job = "unemployed"
    * method post
    * match responseStatus == 201
    * match response == { "name": "morpheus", "job": "unemployed", "id": "#string", "createdAt": "#ignore"}