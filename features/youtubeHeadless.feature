Feature: Test Interface
    As a client, I the youtube interface to work properly.

    @javascript 
    Scenario: Search in youtube (Headless)
        Given I am on Youtube main page
        When I search Javier Garzas - Errores comunes en agilidad
        Then I can found the video

    @javascript 
    Scenario: Show Rob Agile Channel (Headless)
        Given page of the Javier Garzas - Errores comunes en agilidad video
        When you click Rob Agile
        Then you can see the channel

    @javascript 
    Scenario: Stop the video (Headless)
        Given page of the last video 
        When you push in stop button
        Then the video stop

    @javascript 
    Scenario:  Go to youtube main page (Headless)
        Given page of the Javier Garzas video
        When click on Youtube
        Then access to Youtube main page

    @javascript 
    Scenario: Mute (Headless)
        Given page of the Garzas video
        When push mute 
        Then silence