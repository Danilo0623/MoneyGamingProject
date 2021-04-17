package com.moneygaming.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features",
        glue = "com/moneygaming/stepDefinitions",
        dryRun = false,
        tags = {"@registration"},
        strict = false,
        plugin = {"pretty",
                "html:target/cucumber-default-reports",
                "rerun:target/FailedTests.txt",
                "json:target/cucumber.json"})
public class TestRunner {
}
