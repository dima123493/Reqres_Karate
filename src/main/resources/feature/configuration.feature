Feature: Configuration test

  Background:
    * url baseUrl

  Scenario: Configuration
    * print name

  Scenario: Get ser with configuration file
    * path '/users/2'
    * method get
    * match responseStatus == 200