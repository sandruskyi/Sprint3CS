Feature: Test Headless
    As a capybara and poltergeist user, I want to see the if it works on Renfe.

    @javascript 
    Scenario: Change page language (Headless)
        Given I am on Renfe in English
        When you click on Bienvenido
        Then page language changes to Spanish

    @javascript 
    Scenario: Go to customer service (Headless)
        Given page in Spanish
        When you click Atencion al cliente
        Then the page goes to customer service

    @javascript 
    Scenario: Change ticket (Headless)
        Given the main page
        When you click Cambios
        Then the page goes to changes

    @javascript 
    Scenario: Main Page (Headless)
        Given the login page
        When click on Inicio renfe
        Then access to main page

    @javascript 
    Scenario: Buy Ticket (Headless)
        Given the Renfe page
        When find Madrid-Dos Hermanas trains
        Then return trains