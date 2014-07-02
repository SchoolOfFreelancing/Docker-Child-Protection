# JIRA PRIMERO-135
# JIRA PRIMERO-226
# JIRA PRIMERO-255

@javascript @primero
Feature: Services
  As a Social Worker I want to enter information related to services provided 
  so that we can verify that we are providing for the child's needs

  Scenario: As a logged in user, I should be able to create a new case and save information from the services form
    Given I am logged in as an admin with username "primero" and password "primero"
    When I access "cases page"
    And I press the "Create a New Case" button
    And I press the "Services" button
    And I select "Psychosocial/Counseling Services" from "Who referred the client to you?"
    And I fill in the 1st "Services Section" subform with the follow:
      | Type of Service                            | <Select> Safehouse    |
      | Did you refer the client for this service? | <Select> Referred     |
      | Appointment Date                           | 30-May-2014           |
      | Appointment Time                           | 8                     |
      | Service Provider                           | IRC                   |
      | Service Location                           | Kenya                 |
      | Notes                                      | No notes at this time |
    And I press "Save"
    Then I should see "Case record successfully created" on the page
    And I press the "Services" button
    And I should see in the 1st "Service" subform with the follow:
      | Type of Service                            | Safehouse             |
      | Did you refer the client for this service? | Referred              |
      | Appointment Date                           | 30-May-2014           |
      | Appointment Time                           | 8                     |
      | Service Provider                           | IRC                   |
      | Service Location                           | Kenya                 |
      | Notes                                      | No notes at this time |