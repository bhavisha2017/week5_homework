Feature: demo nopcommerce's Top Menu Tabs acceptance criteria

As a user I would like to check acceptance criteria of nopcommerce Top Menu Tabs

Background: I am on given URL
When        I open the URL https://demo.nopcommerce.com/
And         I click on enter button
Then        I am on nopcommerce home page

Scenario Outline: I should be able to click Top Menu Tabs
When       I observe the Top Menu Tabs
And        I click on the "<Top Menu Tabs>"
Then       I am able to click Top Menu Tabs

Examples:
| Top Menu Tabs       |
| Computers           |
| Electronics         |
| Apparel             |
| Digital downloads   |
| Books               |
| Jewellery           |
| Gift card           |




