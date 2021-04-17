package com.moneygaming.base;


import com.moneygaming.utils.ConfigsReader;
import com.moneygaming.utils.Constants;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import java.util.concurrent.TimeUnit;

public class BaseClass {
    public static WebDriver driver;

    /**
     * this method will open a browser, set up configuration and navigate to the URL
     */
    public static void setUp() {

        ConfigsReader.readProperties(Constants.CONFIGURATION_FILEPATH);
        switch (ConfigsReader.getPropertyValue("browser").toLowerCase()) {
            case "chrome":
                WebDriverManager.chromedriver().setup();
                driver = new ChromeDriver();
                break;
            case "firefox":
                WebDriverManager.firefoxdriver().setup();
                driver = new FirefoxDriver();
                break;
            default:
                throw new RuntimeException("Invalid browser");
        }


        driver.get(ConfigsReader.getPropertyValue("url"));
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(Constants.IMPLICIT_WAIT, TimeUnit.SECONDS);
        PageInitializer.pageObjectsInitializer();

    }

    /**
     * this method will close any open browser
     */
    public static void tearDown() throws InterruptedException {
        if (driver != null) {
            Thread.sleep(6000);
            driver.quit();
        }
    }
}
