import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class PageTitleVerification {
    public static void main(String[] args) {
        // Set the path to your ChromeDriver executable
        System.setProperty("webdriver.gecko.driver", "C:\\gecko\\geckodriver.exe");

        // Create an instance of Chrome WebDriver
        WebDriver driver = new FirefoxDriver();

        // Navigate to the desired webpage
        driver.get("https://www.google.com");

        // Get the page title
        String pageTitle = driver.getTitle();

        // Expected page title
        String expectedTitle = "Googles";

        // Compare the actual and expected page titles
        if (pageTitle.equals(expectedTitle)) {
            System.out.println("Page title verification passed!");
        } else {
            System.out.println("Page title verification failed!");
            System.out.println("Expected title: " + expectedTitle);
            System.out.println("Actual title: " + pageTitle);
        }

        // Close the browser
        driver.quit();
    }
}
-----------------------------------------------------------------------------------------------------
      <dependencies>
  <!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.11.0</version>
</dependency>
  
  </dependencies>
