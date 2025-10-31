@delete
Feature: Delete object from restful-api

  Scenario: Delete object by id
    * def jsonpayload  = read('data/create_object.json')
    Given url baseUrl + '/objects/' + jsonpayload.id
    When method DELETE
    Then status 200
