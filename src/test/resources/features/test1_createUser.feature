@create
Feature: Create new object in restful-api

  Scenario: Create object successfully

    Given url baseUrl + '/objects'
    And request
    """
    {
    "name": "Apple MacBook Blah",
    "data": {
    "year": 2025,
    "price": 100000,
    "CPU model": "Intel Core i9",
    "Hard disk size": "1 TB"
    }
    }
    """

    When method POST
    Then status 200
    And match response.name == 'Apple MacBook Blah'
    And match response.data.price == 100000
    * def id = response.id
    * print 'id : ', id
    # comment
    * karate.write(response,'data/create_object.json')
    * karate.log("response :",response)

