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
Feature: Edit batch
  
   Background: User is logged on to LMS website
  	Given User is logged on to LMS website
  	When User is on Batch page 
  	
  @tag6
  Scenario: Edit Batch Name
    Given User is on Batch details page
    When User edits Name
    Then User can see edited Name
    
   @tag7
  Scenario: Edit  Batch Description
    Given User is on Batch details page
    When user edits description
    Then User can see edited descricption
    
  @tag8
  Scenario: Edit program name
    Given User is on Batch details page
    When user edits program name
    Then user can see edited program name
    
  @tag9
  Scenario: change status
    Given User is on Batch details page
    When user changes status
    Then User can see updated Status

     @tag10
  Scenario: Edit No of classes
    Given User is on Batch details page
    When user edits No of classes
    Then user can see updated No of classes
    
     @tag11
  Scenario: Click Cancel
    Given User is on Batch details page
    When user clicks cancel button
    Then User can see Batch Details are not updated 
    
    @tag12
  Scenario: click save
    Given User is on Batch details page
    When user clicks save button
    Then User can see 'Successful Batch Updated' alert
    
     @tag13
  Scenario: Verify Edited Batch details
    Given User is on Batch page
    When User searches with newly updated "Batch Name"
    Then User verifies that the details are correctly updated.
    
     @tag14
  Scenario: Select Batch
    Given User is on Batch page
    When User selects more than one Batch using checkbox
    Then Baches gets selected
    
     @tag15
  Scenario: Delete  multiple batches 
    Given User is on Batch page
    When User clicks on Delete button
    Then User lands on Confirm Deletion form.
    
     @tag16
  Scenario: Click Yes
    Given user is on Batch Confirm Deletion page
    When User clicks Yes button
    Then User can see 'Successful BatchDeleted' message

     @tag17
  Scenario: Verify deleted batches
    Given User is on Batch page
    When User Searches for "Deleted Batch names"
    Then There should be zero results

    @tag18
  Scenario: click no
    Given User is on Batch Confirm Deletion Page after selecting multiple batches
    When User clicks No button
    Then User can see Batches are still selected and not deleted
    
    @tag19
  Scenario: delete feature
    Given user is on the Batch page
    When user clicks delete  button for any batch
    Then user will get confirm deletion popup
    
      @tag20
  Scenario: Click Yes
    Given user is on Batch Confirm Deletion page
    When User clicks Yes button
    Then User can see 'Successful BatchDeleted' message
    
      @tag21
  Scenario: Verify deleted batch
    Given user is on the Batch page
    When User Searches for "Deleted Batch name"
    Then There should be zero results
    
     @tag22
  Scenario: click no
    Given User is on Batch Confirm Deletion Page after selecting a batch to delete
    When User clicks No button
    Then User can see Batch is not deleted
    
        @tag23
  Scenario: validate add new batch
    Given User is on Batch page
    When User clicks A New Batch button
    Then user can see Batch details form
    
        @tag24
  Scenario: Empty form submission
  
    Given User is on Batch details page by clicking A New Batch
    When User clicks Save button without entering data
    Then User gets message 'Name is required.'

        @tag25
  Scenario: Click Cancel
    Given User is on Batch details page by clicking A New Batch
    When user clicks cancel button
    Then User can see Batch Details form disappears
    
        @tag26
  Scenario: Enter Batch Name
    Given User is on Batch details page by clicking A New Batch
    When user enters name in text box
    Then User can see 'Batch Name' entered

    
        @tag27
  Scenario: Enter Batch Description
    Given User is on Batch details page by clicking A New Batch
    When User enters Description in text box
    Then User can see 'Description' entered
    
           @tag28
  Scenario: Enter Program name
    Given User is on Batch details page by clicking A New Batch
    When User selects Program name
    Then User can see 'Program Name' selected

       @tag29
  Scenario: Select Status
    Given User is on Batch details page by clicking A New Batch
    When User selects Status using radiobutton
    Then User can see 'Active/Inactive' status selected

           @tag30
  Scenario: Enter No of classes
    Given User is on Batch details page by clicking A New Batch
    When User enters No of classes in text box
    Then User can see 'No of classes' entered

           @tag31
  Scenario: Click Save
    Given User is on Batch details page by clicking A New Batch
    When user clicks save button
    Then User gets message 'Successful batch created'

      @tag32
  Scenario: Verify Added Batch is created
    Given User is on Batch page
    When User searches with newly created "Batch Name"
    Then records of the newly created  "Batch Name" is displayed
    
    

    
    


