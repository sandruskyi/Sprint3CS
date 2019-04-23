Feature: Test Interface
    As a client, I the youtube interface to work properly.

    Scenario: Search in youtube
        Given I am on Youtube main page
        When I search Javier Garzas - Errores comunes en agilidad
        Then I can found the video

    Scenario: Show Rob Agile Channel
        Given page of the Javier Garzas - Errores comunes en agilidad video
        When you click Rob Agile
        Then you can see the channel

    Scenario: Stop the video
        Given page of the last video 
        When you push in stop button
        Then the video stop

    Scenario:  Go to youtube main page
        Given page of the Javier Garzas video
        When click on Youtube
        Then access to Youtube main page

    Scenario: Mute
        Given page of the Garzas video
        When push mute 
        Then silence