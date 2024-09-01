Feature: Different assertions API
  Background:
    * url baseUrl
    * def expectedOutput = read("response.json")
    * def expectedInput = read("postRequest.json")

  Scenario: Post a user
    * path '/api/users'
    * request {"name": "morpheus", "job": "leader"}
    * method post
    * match responseStatus == 201

  Scenario: get users
    * path '/api/users'
    * param page = 2
    * method get
    * def res = response
    * match responseStatus == 200
    * match res..id == [7,8,9,10,11,12]

  Scenario: get users
    * path '/api/users'
    * param page = 2
    * method get
    * def res = response
    * match responseStatus == 200
    * match res..first_name contains ['Tobias','Byron']

  Scenario: get users
    * path '/api/users'
    * param page = 2
    * method get
    * def res = response
    * match responseStatus == 200
    * match res.data[*].last_name contains ['Ferguson','Howell']

  Scenario: get users
    * path '/api/users'
    * param page = 2
    * method get
    * def res = response
    * match responseStatus == 200
    * def isLessThenFifty = function(x){return x < 50}
    * match each res.data[*].id == '#? isLessThenFifty(_)'