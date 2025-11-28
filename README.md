# APYHub Currency Conversion – Testes Automatizados com Karate DSL

Este repositório contém uma suíte de testes desenvolvida com **Karate DSL** para validar a API de conversão de moedas da APYHub.  
O projeto foi criado com foco em organização, clareza e boas práticas — servindo como material de estudo e também como parte do portfólio.

---

## 1. Objetivo do Projeto

O objetivo é validar os principais comportamentos da API, garantindo que:

- Conversões entre moedas funcionem corretamente  
- As taxas retornadas sejam consistentes  
- Estruturas e formatos das respostas estejam corretos  
- Cenários positivos e negativos sejam contemplados  

A proposta é demonstrar um fluxo profissional de automação simples, direto e compreensível.

---

## 2. Pré-requisitos

Para executar os testes, você precisará de:

- **Java 11+**
- **Maven 3.8+**
- **API Key da APYHub**

A chave pode ser configurada de duas maneiras:

### Via variável de ambiente:
```bash
export APYHUB_API_KEY=SUA_CHAVE

```


### Via propriedade Maven:
```bash
mvn test -DAPYHUB_API_KEY=SUA_CHAVE

```

## 3. Estrutura do Projeto
```bash

apyhub-currency-karate/
├── pom.xml
├── karate-config.js
└── src/test/java
    ├── currency
    │   ├── convert.feature
    │   ├── rates.feature
    │   └── validations.feature
    └── runners
        └── CurrencyRunner.java

```

## 4. Como Executar os Testes?

Após configurar sua API Key:
```bash

mvn clean test

```

## 5. Escopos de Teste
```bash

| Feature               | Tag      | Descrição                        |
| --------------------- | -------- | -------------------------------- |
| `convert.feature`     | @convert | Testes de conversão entre moedas |
| `rates.feature`       | @rates   | Validação de taxas de câmbio     |
| `validations.feature` | @schema  | Estruturas e cenários inválidos  |


```
##  6. Boas Práticas Utilizadas

 - O projeto segue padrões organizacionais que facilitam estudo e evolução:
 - Configuração centralizada em karate-config.js
 - Organização por temas (conversões, taxas, validações)
 - Uso consistente de Background
 - Reutilização de dados retornados pela API
 - Estrutura simples e direta, fácil de entender
 - Código preparado para CI/CD caso desejado

## 7. Considerações Finais

Este projeto demonstra de forma prática como estruturar testes de API com Karate, mantendo clareza e objetividade.



