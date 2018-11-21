# Timetracking Challenge
This is [mywork](https://www.mywork.com.br)'s full-stack internship coding challenge. It is intended to test both you back- and front-end, as well as your critical thinking and problem solving skills.
We don't think there is a single solution to this problem. If you don't know some of the technologies we ask for, try to learn some of it and let us know if that's the case.
## Background
Timetracking (_controle de ponto_) is currently our main feature. It consists of tracking the time at which an employee presses the "checkin" button. One feature of a timetracking is that an user cannot delete it.
## The Challenge
You should create a simple timetracking solution.
In this challenge you should use (at least) the following technologies:
* Ruby on Rails
* Relational Database
* Javascript
* CSS3 or SCSS
* HTML5
## The Solution
* Create a repository with your solution on Github
* The solution should be ready to be run
*Instructions to build the code (database migrations etc) should be clear
* Write all instructions and explain the reasoning behind your technical choices in the README file
### Mandatory Items
* Views
  * New/Create timetracking - should contain at least a clock that updates every second, a comment field and a button
  * Show timetracking - shows database information on a particular timetracking
  * Index timetrackings - table with timetrackings, 1 line per item
* Timetrackings should be stored in the database
* At least one front-end and one back-end validation
* Timetrackings should be stored with geolocalization information - latitude and longitude are enough and don't need to be precise, but you are expected to implement browser HTML5 geolocalization.
* Unit tests. RSpec is recommended. If you are writing tests, make sure they test something meaningful. All written tests should be working and pass when ran.
### Optional Items
These are optional items that could should extra dedication or a particular skill.
* Show timetracking containing the geolocation in a map (you can use google maps api for this)
* Create timetracking - Geolocalization could be created by clicking the location on the map
* Use the SLIM scripting language for views
* Integration and E2E tests (capybara)
## Expectations
### What we expect
* Use clean code (principles such as DRY, manageable and maintanable)
* Organized and well indented code. Use 2 spaces for indent
* It is highly recommended that all names in your code are written in English rather than Portuguese. The UI should be either in Portuguese or English
### What we DON'T expect
* Don't worry about timezone management
* Don't implement authorization or authentication
* Don't waste a huge amount of time on this challenge
* Don't worry about browser compatibility. Assume the user uses a modern browser
* Don't worry about creating the most beautiful design or user experience. Views should be DECENT. Feel free to use bootstrap or any other UI framework
* Don't worry about test coverage. We just want to see how you think about testing
## Other Information
* Feel free to use any public gems
