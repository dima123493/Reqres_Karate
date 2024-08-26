Feature: Get API

  Background:
    * url 'https://reqres.in'

  Scenario: get users
    * path '/api/users'
    #parammeters (?page=2) use spaces
    * param page = 2
    * method get
    * print response
    * match responseStatus == 200
    * print responseStatus
    * print responseTime
    * print responseHeaders
    * print responseCookies

  Scenario: get selected user assertion
    * path '/api/users'
    * param page = 2
    * method get
    * match responseStatus == 200
    * match response.data[0].first_name == "Michael"
    * assert response.data.length == 6