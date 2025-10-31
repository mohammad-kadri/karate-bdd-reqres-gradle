@update
Feature: Update existing object

  Scenario: Update object
    * def jsonpayload  = read('data/create_object.json')
    Given url baseUrl + '/objects/' + jsonpayload.id
    And request
      """
      {
        "name": "Apple MacBook halb",
        "data": {
          "year": 2024,
          "price": 50000,
          "CPU model": "Intel Core i7",
          "Hard disk size": "0.5 TB"
        }
      }
      """
    When method PUT
    Then status 200
    And match response.name == 'Apple MacBook halb'
    * karate.log("response :",response)
