@read
Feature: Get object from restful-api

  Scenario: Retrieve details of a single object

    * def jsonpayload  = read('data/create_object.json')
    Given url baseUrl + '/objects/' + jsonpayload.id
    When method GET
    Then status 200
    And match response.name == 'Apple MacBook Blah'
    And match response.data.year == 2025
    And match response.data.price == 100000


    # https://restful-api.dev/

