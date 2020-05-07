Feature: serviço de gestão de usuários

  Scenario: obtem todos os usuários e seleciona o primeiro, após isso obtem seu detalhamento
    Given url   urlBase 
    And   path 'users'
    When  method get
    Then  status 200

    * def first = response[0]

     Given url   urlBase 
     And   path 'users', first.id
     When method get
     Then status 200

  Scenario: cria um usuário e recupera pelo id
    * def user =
      """
      {
        "name": "Test User",
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """

    Given url   urlBase
    And   path 'users'    
    And request user
    When method post
    Then status 201

    * def id = response.id
    * print 'Usuário criado id is: ', id

    # esse teste irá falhar devido ao fato da API não persistir o registro de fato
    # Given url   urlBase
    # And   path 'users', id
    # When method get
    # Then status 200
    
    # And match response contains user     