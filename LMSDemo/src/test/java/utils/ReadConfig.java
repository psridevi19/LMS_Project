package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ReadConfig {
	
	Properties prop;
	
	public ReadConfig()
	{
		File src = new File("./src/test/java/configs/config.properties");
	
		try {
			FileInputStream fin = new FileInputStream(src);
			prop = new Properties();
			prop.load(fin);
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}
	
	public String getUsername()
	{
		return prop.getProperty("username");
	}
	
	public String getPassword()
	{
		return prop.getProperty("password");
	}
	
	public String getBaseURL()
	{
		return prop.getProperty("baseurl");
	}
	
	public String getBrowser()
	{
		return prop.getProperty("browser");
	}
	
}