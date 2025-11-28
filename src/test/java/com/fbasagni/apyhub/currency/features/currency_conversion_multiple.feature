Feature: Conversão de moeda - múltiplas moedas (ApyHub)

Background:
    * url baseUrl
    * configure headers = headers
    * def resourcePath = ['data','convert','currency','multiple']

@happy_path
Scenario: Requisição válida
    Given path resourcePath
    And request { "source": "inr","targets": ["usd","aed","eur"],"date": "2025-11-01" }
    When method post
    Then status 200
    And match response !contains { error: '#present' }
    And match response.inr_usd == '#number'
    And match response.inr_aed == '#number'
    And match response.inr_eur == '#number'

@missing_targets
Scenario: Targets ausente
    Given path resourcePath
    And request { "source": "inr" }
    When method post
    Then assert responseStatus == 200 || responseStatus == 400
    And match response.error.code == 101
    And match response.error.message contains 'targets'

@invalid_currency
Scenario: Moeda inválida
    Given path resourcePath
    And request { "source": "moeda_invalida","targets": ["usd"] }
    When method post
    Then assert responseStatus == 400 || responseStatus == 500
    And match response.error.code == 110
    And match response.error.message contains 'Internal server error'

@auth
Scenario: Token ausente
    * configure headers = { 'Content-Type': 'application/json' }
    Given path resourcePath
    And request { "source": "inr","targets": ["usd"] }
    When method post
    Then status 401
