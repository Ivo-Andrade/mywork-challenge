# Timetracking Challenge
This is [mywork](https://www.mywork.com.br)'s full-stack internship coding challenge. It is intended to test both you back- and front-end, as well as your critical thinking and problem solving skills.
We don't think there is a single solution to this problem. If you don't know some of the technologies we ask for, try to learn some of it and let us know if that's the case.
## Background
### Timetracking
Timetracking (_controle de ponto_) is currently our main feature. It consists of recording the date and time at which an employee presses the "checkin" button, sequentially. Every time the button is pressed, a timetracking event should be recorded.
#### Timetracking object sample
```
{
  type: 'timetracking',
  latitude: '58.4343',
  longitude: '-120.9245',
  created_at: 'Thu, 29 Nov 2018 09:16:09 UTC +00:00'
  // xxx: 'any other field you think you should add'
}
```
One feature of a timetracking is that an user cannot delete it.
### Geofencing
Geofencing (_cerca eletrônica_) is a virtual fence, where certain actions can be allowed or denied, based on whether the user's location is inside or outside the delimited area. It can have any format, but for the purposes of this challenge, it should be considered as a radius around a location point (latitude and longitude).
## User Stories (for mandatory items only)
As a product-oriented company, the most important part of our job is to understand and build features based on our users' needs. These are the main stories for this challenge:
* As a company manager, I want to have online access to the time at which my employee checked in or out of the company so that I can later calculate and pay or discount worked hours.
* As a company manager, I want to see where my employee was when the timetracking was recorded so that I can tell if the employee was at the correct workplace.
* As a company manager, I want to set specific timetracking geofences so that I can limit timetrackings being recorded only within certain boundaries.
* As an employee, I want to be able to record my timetrackings so that I can report my work to the company manager and later get paid the correct due amount.

## The Challenge
You should create a timetracking solution that serves all user stories described above.
In this challenge you should use (at least) the following technologies:
* Ruby on Rails
* Relational Database
* Javascript
* CSS3 or SCSS
* HTML5

## The Solution
* Create a repository with your solution on Github
* The solution should be ready to run
* Instructions to build the code (database migrations etc) should be clear
* Write all instructions and explain the reasoning behind your technical choices in the README file

### Mandatory Items
* Views
  * Timetracking
    * New/Create timetracking - should contain at least a clock that updates every second, a comment field and a button
    * Show timetracking - shows database information on a particular timetracking
    * Index timetrackings - table with timetrackings, 1 line per item
  * Geofence
    * New/Create - should contain at least latitude, longitude and radius
    * Show - shows database information on a particular geofence
    * Index - table with geofences, 1 line per item
* Timetrackings and Geofences should be stored in the database
* **Disable timetracking button if the user is not inside any of the geofences**
* At least one front-end and one back-end validation
* Timetrackings should be stored with geolocalization information - latitude and longitude are enough and don't need to be precise, but you are expected to implement browser HTML5 geolocalization
* Unit tests. RSpec is recommended. If you are writing tests, make sure they test something meaningful. All written tests should be working and pass when ran.

### Optional Items
These are optional items that could show extra dedication or a particular skill.
* Show timetracking containing the geolocation on a map (you can use google maps api for this)
* Create timetracking - Geolocalization could be created by clicking the location on the map
* Use the SLIM scripting language for views
* Integration and E2E tests (capybara)
* [extra points] At least one component in React

## Expectations
### What we expect
* Use clean code (principles such as DRY, manageable and maintanable)
* Organized and well indented code. Indent with 2 spaces
* It is highly recommended that all names in your code are written in English rather than Portuguese. The UI should be either in Portuguese or English

### What we DON'T expect
* Don't worry about timezone management
* Don't implement authorization or authentication
* Don't waste a huge amount of time on this challenge
* Don't worry about browser compatibility. Assume a modern browser is being used
* Don't worry about creating the most beautiful design or user experience. Views should be DECENT. Feel free to use bootstrap or any other UI framework
* Don't worry about 100% coverage. We just want to see how you think about testing

## Other Information
* Feel free to use any public gems
