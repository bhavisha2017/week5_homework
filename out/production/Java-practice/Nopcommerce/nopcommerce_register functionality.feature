Feature: Demo nopcommerce's Registration  functionality

  As a user I want to check the Register functionality of nopcommerce

Background:I am on Nopcommerce Registration page
Given       I open the Google Chrome Browser
When        I open the URL  https://demo.nopcommerce.com/register
Then        I am on Nopcommerce Registration Page

Scenario: : I should be able to register with valid mandatory (*) field data on registration page
When      I enter First name "Bhavisha"
And       I enter Last name  "Patel"
And       I enter Email "sweety123@gmail.com"
And       I enter Password "12asdf"
And       I enter Confirm Password "12asdf"
And       I click on register button
Then      I was able to register successfully

Scenario Outline: : I should not be able to register with invalid credentials on mandatory fields (*) of registration page
When      I enter First name "<First Name>"
And       I enter Last Name "<Last Name>"
And       I enter Email address "<Email>"
And       I enter Password "<Password>"
And       I enter Confirm Password "<Confirm Password>"
And       I click on register button
Then      I can see an error message "<Error message>"
And       I was not able to registered successfully

Examples:
| First Name | Last Name | Email                 | Password   | Confirm Password | Error Message                              |
| "     "    | Patel     | sweety123@gmail.com   | 12asdf     | 12asdf           | Please enter First Name                    |
| Bhavisha   | "     "   | sweety123@gmail.com   | 12asdf     | 12asdf           | Please enter Last Name                     |
| Bhavisha   | Patel     | "               "     | 12asdf     | 12asdf           | Please enter valid email                   |
| Bhavisha   | Patel     | sweety123@gmail.com   | "   "      | 12asdf           | Password is required                       |
| Bhavisha   | Patel     | sweety123@gmail.com   | 12asdf     | "    "           | Confirm password is required               |
| Bhavisha   | Patel     | sweety123@gmail.com   | 12asdf     | 123sdf           | Password and Confirm password do not match |
| Bhavisha   | Patel     | sweety123@gmail.com   | 1asdf      | "    "           | minimum 6 character password is required   |
| "     "    | "   "     | "             "       | "   "      | "     "          | Mandatory (*) fields are required          |

Scenario: I should be able to select any one radio button from Gender label of your personal details section
Given     I am on Gender label of your personal detail section
When      I select "Male" radio button
And       I select "Female" radio button
Then      I am able to select any one of the radio button

Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
Given    I am on Date of Birth field of your personal detail section
When     I select day "<Day>"
And      I select month "<Month>"
And      I select  year "<Year>"
Then     I am able to select Day, Month and Year from drop down list

Examples:
| Day   |  Month     |  Year   |
| 12    |  December  |  1986   |

Scenario: I should be able to check and uncheck the Newsletter box on options section
Given     I am on Newsletter label on options section
When      I click on Newsletter checkbox
And       I again click on Newsletter checkbox
Then      I was able to check and uncheck the box next to the Newsletter label

