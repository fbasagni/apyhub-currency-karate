package com.fbasagni.apyhub.currency.runners;

import com.intuit.karate.junit5.Karate;

class CurrencyConversionRunner {
    @Karate.Test
    Karate testCurrencyConversion() {
        return Karate.run("classpath:com/fbasagni/apyhub/currency/features/currency_conversion_multiple.feature");
    }
}
