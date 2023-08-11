import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class PageTitleVerification {
    public static void main(String[] args) {
        // Set the path to your ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");

        // Create an instance of Chrome WebDriver
        WebDriver driver = new ChromeDriver();

        // Navigate to the desired webpage
        driver.get("https://www.example.com");

        // Get the page title
        String pageTitle = driver.getTitle();

        // Expected page title
        String expectedTitle = "Example Domain";

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
