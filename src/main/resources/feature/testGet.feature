Feature: Sample API test
    Background:
      * url 'https://reqres.in/api/users?page=2'

      Scenario: get users
        * method get
        * print response
        * match responseStatus == 200
