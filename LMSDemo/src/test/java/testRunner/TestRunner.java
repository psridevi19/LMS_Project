package testRunner;

//import io.cucumber.testng.AbstractTestNGCucumberTests;
//import io.cucumber.testng.CucumberOptions;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

import org.junit.runner.RunWith;
//import org.testng.annotations.DataProvider;

@RunWith(Cucumber.class) //Junit execution

@CucumberOptions(
  //plugin = {"pretty", "json:target/cucumber.json"}, //reporting purpose
  plugin = {"pretty", "html:target/MyTest.html"}, //reporting purpose
  monochrome=true,  //console output
  tags = "@tag", //tags from feature file
  features = {"Features"}, //location of feature files
  glue= "classpath:stepDefinitions",
  publish = true) //location of step definition files


public class TestRunner {//extends AbstractTestNGCucumberTests{
/* 
 @Override
    @DataProvider(parallel = false)
    public Object[][] scenarios() {
    
  return super.scenarios();
 
    }
*/

}
