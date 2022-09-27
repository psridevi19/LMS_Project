#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag 
Feature: Pagination

 Background: User is logged on to LMS website
  	Given User is logged on to LMS website
  	When User is on Batch page 
  	
  @tag33
  Scenario: Verify previous link on the first page
    Given User is logged on to LMS website
    When User is on first page of Manage Batch 
    Then Verify that previous link is disabled

  @tag34
   Scenario: Verify next link
    Given User is on page number '1' 
    When User clicks angle right > button
    Then User navigated to page number '2'
    
    @tag35
   Scenario: Verify previous link
    Given User is on page number '2'
    When User clicks angle left < button
    Then User navigated to page number '1'
    
    @tag36
   Scenario: Verify next link on the last page
    Given User is logged on to LMS website
    When User is on last page of Manage Batch
    Then Verify that next link is disabled
