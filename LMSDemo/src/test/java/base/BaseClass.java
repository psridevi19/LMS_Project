package base;

import java.time.Duration;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import utils.ReadConfig;

public class BaseClass {
	public static WebDriver driver;
	ReadConfig config = new ReadConfig();

	public static ThreadLocal<WebDriver> tdriver = new ThreadLocal<WebDriver>();
	
	static
	{
	String path = System.getProperty("user.dir");
	System.setProperty("webdriver.chrome.driver", path+"/src/test/resources/Drivers/chromedriver.exe"); 
	}
	
	public WebDriver setup()
	{
		String driverName = config.getBrowser();
		driver = new ChromeDriver();		
		if(driverName.equalsIgnoreCase("chrome"))
				{
			
					driver = new ChromeDriver();	
				}
				else if(driverName.equalsIgnoreCase("edge"))
				{
					driver = new EdgeDriver();	
				}
				else if(driverName.equalsIgnoreCase("firefox"))
				{
					driver = new FirefoxDriver();	
				}
				
			String baseUrl = config.getBaseURL();
			driver.get("https://lms-frontend-phase2.herokuapp.com/");
			driver.manage().timeouts().pageLoadTimeout(Duration.ofSeconds(20));
			driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(20));
			driver.manage().window().maximize();
			tdriver.set(driver);
			return getDriver();
	}
	
	public static synchronized WebDriver getDriver()
	{
		return tdriver.get();
	}
	
	
}
