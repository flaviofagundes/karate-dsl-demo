Feature: serviço de gestão de posts
  
  Scenario: validar disponibilidade da consulta de posts
    Given url   urlBase 
    And   path 'posts'
    When  method get
    Then  status 200

  Scenario: validar criação de posts
    Given url   urlBase 
    And request { userId: 1, title: "Test", body:  "fake content" }
    And   path 'posts'
    When  method post
    Then  status 201
    And match $ contains {id:"#notnull"}