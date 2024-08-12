# ********RoostGPT********

# Test generated by RoostGPT for test Karate-CSV using AI Type Open AI and AI Model gpt-4
# 
# Feature file generated for /events_post for http method type POST 
# RoostTestHash=6bbed7894a
# 
# 

# ********RoostGPT********
Feature: Events API

  Background:
    * def urlBase = karate.properties['url.base'] || karate.get('urlBase', 'http://localhost:4010')
    * url urlBase

  Scenario Outline: Test POST /events endpoint
    Given path '/events'
    And header Authorization = karate.properties['AUTH_TOKEN']
    And header Content-Type = 'application/json'
    And header x-fapi-auth-date = '<x-fapi-auth-date>'
    And header x-fapi-customer-ip-address = '<x-fapi-customer-ip-address>'
    And header x-fapi-interaction-id = '<x-fapi-interaction-id>'
    And header Accept-Language = '<Accept-Language>'
    And request {"ack":["<ack>"],"returnImmediately":<returnImmediately>,"maxEvents":<maxEvents>}
    When method post
    Then status <status_code>
    And match response contains {sets:'#object', moreAvailable:'#boolean'}
    And match responseHeaders['Content-Type'] == 'application/json'
    And match responseHeaders['x-fapi-interaction-id'] == '#string'

    Examples:
      | read('events_post.csv') |