Feature: Delete API

  Background:
    * url 'https://reqres.in'

  Scenario: Delete a user
    * path '/api/users/2'
    * method delete
    * match responseStatus == 204