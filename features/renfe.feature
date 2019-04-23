Feature: Test Interface
    As a client, I the interface to work properly.

    Scenario: Change page language 
        Given I am on Renfe in English
        When you click on Bienvenido
        Then page language changes to Spanish

    Scenario: Go to customer service
        Given page in Spanish
        When you click Atencion al cliente
        Then the page goes to customer service

    Scenario: Change ticket 
        Given the main page
        When you click Cambios
        Then the page goes to changes

    Scenario: Main Page 
        Given the login page
        When click on Inicio renfe
        Then access to main page

    Scenario: Buy Ticket
        Given the Renfe page
        When find Madrid-Dos Hermanas trains
        Then return trains