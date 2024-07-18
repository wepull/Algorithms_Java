# ********RoostGPT********

# Test generated by RoostGPT for test Karate-CSV using AI Type Open AI and AI Model gpt-4
# 
# Feature file generated for /aisp/account-consents/{consentId}_delete for http method type DELETE 
# RoostTestHash=ac51f8b6e8
# 
# 

# ********RoostGPT********
Feature: Account Consent Setup

  Background:
    * def urlBase = karate.properties['url.base'] || karate.get('urlBase', 'http://localhost:4010')
    * url urlBase

  Scenario Outline: Consent deletion
    Given path '/aisp/account-consents/', '<consentId>'
    And I set headers
      """
      {
        "Authorization": "Bearer LbGDbcFVVfE-ngpjj8KaH5wrEfg",
        "x-fapi-auth-date": "Sun, 10 Sep 2017 19:43:31 UTC",
        "x-fapi-customer-ip-address": "169.254.169.254",
        "x-fapi-interaction-id": "<x-fapi-interaction-id>",
        "Accept-Language": "<Accept-Language>"
      }
      """
    When method delete
    Then status <statusCode>
    And match responseHeaders['x-fapi-interaction-id'] == '<x-fapi-interaction-id>'
    And match response == { id: '#string', errors: '#[]' }

    Examples:
      | read('aisp_account-consents_consentId_delete.csv') |
