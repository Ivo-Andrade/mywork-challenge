# Development Notes

## Introduction
Time-tracking is a fundamental feature to a company's ability to both regulate and organize its administration and find and create opportunities to remain functional and efficient. It allows companies to, by the means of registering the times of clock-in, clock-out and other breaks or halts in work hours, keep track of working hours of its employees and processes, allowing the company to fulfill its obligations with their workers and, likewise, be able to tell if they are all fulfilling theirs.

The automation of these processes not only allows a company to be able to both attend and track said obligations with much more autonomy, but also opens room to both study its data and model and improve upon it. Being able to identify and address outliers and unexpected results can wield better results on short term which, along with the understanding and study of the current model of work processes, can allow the improvement of a company's methods to expand positive effects into long term, possibly making a better workplace environment for workers and an easier accountability for company managers.

The goal of this application, initially, is to replicate a simple model, provided by the mywork Challenge, of a business company looking for an application able to record the time-tracking of its employees via the use of 'geofences', which takes the location of a given employee during a clock-in or clock-out and validates it on the basis of said employee being inside the company's 'geofence', and invalidating it otherwise.

The challenge possess specific goals, both in terms of meeting the needs of said company and in technical terms regards the tools expected to be used and express through this project, and they can be found in the Challenge.md file.
## Tools and Concepts
As established by the exercise, its expected that the project makes use of concept of Relational Models, which will allow us to study the dynamics between the elements present in the project, along with the use of tools like Ruby on Rails, for the management of the database, and web development related tools, such as HTML, CSS and Javascript, in order to display our application.

Regards Ruby on Rails, this will be my first project and, as such, I'll be working on tutorials and guides in order to gain enough grasp of it to apply it on this project. Regards web development related tools, however, I've been experienced with the HTML/CSS/JS model for quite and been able to practice it in similar challenges for companies, so it might be more than enough to meet the project's goals.

I'll be also making use of Bootstrap, MDS and JQuery on the front-end of the project, along with my knowledge in MySQL on the back-end whenever the possibility or necessity suffices.
## Relational Model
In order to build an application for this project, a time-tracking app for a company, its employees and the geofences that said time-tracking will be interacting with, it's necessary to have a considerable grasp of how all these elements interact with each other and the necessary properties, relations and elements to be applied and preserved in the project.

That's where the relational model comes in, and the unified process and UML in general. In order to keep track of a software development, its goals, tools, methods and other intricacies, it's up-most important the creation of artifacts, documents with the purpose of documenting all the process leading up to a software conceptualization, study, development, deployment and maintenance. The relational model is on itself an artifact with the purpose of organizing the elements of a project, along with all their inner elements, inter-relations and cardinalities.

For this project, for example, we need to establish the relations present in a company's time-tracking application. Initially, there's a need to organize four main elements present in this environment:
* The time-tracking itself, which needs to track the location it was created at, along with its opening and closing dates, a boolean to point if said time-tracking is active or not, and a comment section.
* The geofence, which needs to store its location, along with the radius of its circular area in this case.
* The employees, which for this simplified model will have a name and an contract ID. These employees need to be able to view and create their own time-tracking clock-ins and outs.
* The company manager, which for this model will only have a name field. The company manager should be able to view the company's time-tracking and geofences, being able to also edit the geofences if necessary.

With said concepts, we can create a simplified model of our project, that will both supply our project needs and be also expandable whenever it proves necessary (i. e. adding a 'Salary' class with values such as 'Hours served', and 'Amount' to be paid):

![Relational-Model.pdf](https://github.com/Ivo-Andrade/mywork-challenge/blob/master/relationalModel.pdf)

It's important to notice the cardinalities of the project, as each of multiples employees will be able to create multiple time-tracking entries for their clock-ins, but for this project, each time-tracking will related to a single geofence, since its expected that the worker stay within its boundaries until clock-outs. It's also expected that the company manager (or managers) will look forward creating more than one geofence.

Unrelated to the relational model, but worth noting, we will not validate if an specific worker needs to make a time-tracking event in a specific geofence for this model, although it can be applicable on a later update. 
## Ruby on Rails
### Getting Started
Being the first time working with Ruby on Rails, or Ruby in general, I took up the challenge in order to learn this new tool and language and be able to make use of said tool in this project.

Initially, after the setup of the necessary tools needed, the [native tutorial for Ruby on Rails](https://guides.rubyonrails.org/getting_started.html) been used in order to understand the syntax and nature of creating a project with it. In a brief summary, the tutorial covers the creation of a blog website, with articles and comment sections linked to them and a generic authenticating method for allowing only the page managers to run tasks such as adding articles or deleting comments.

With said bases, and assuming the reader has at least this basic knowledge on Ruby on Rails, it's possible to model our project with a mentality of building an Employee class, which can register themselves in the system with a brief profile such as seen in our relational model, and a depending class 'Time-tracking', which can be created by employee class with its geolocation, the date it was opened (and eventually closed with a clock-out), along with methods and attributes to show eventual stoppages for leaving its related geofence, and validating the creation of a time-tracking if said employee in present within the a geofence. 

Likewise, it's possible to make a CompanyManager class, with also a brief but expandable profile (for this project, we'll identify them by a name and authentication method), with a dependable class Geofence, which can be created and edited by a company manager and will store its related TimeTracking as they are validated and created.
### Creating the model
[rails new timetrackingApp]
[ruby bin\rails generate controller Welcome index]
[ruby bin\rails generate controller Home index]
[ruby bin\rails generate controller Employees]
[ruby bin\rails generate model Employee name:string contract_ID:integer password:string profile_desc:string]
[ruby bin\rails generate controller Geofences]
[ruby bin\rails generate model Geofence latitude:float longitude:float radius:float]
[ruby bin\rails generate controller Timetrackings]
[ruby bin\rails generate model Timetracking latitude:float longitude:float active:boolean clock_in:datetime clock_out:datetime comment:string employee:references]
 [ruby bin\rails routes]
[ruby bin\rails db:migrate]
[Setup HTML.ERBs]
 [Welcome]
  [Register Employee]
 [Home]
  [List of employees]
   [show, edit, delete]
  [List of geofences]
   [add, show, edit, delete]
  [Add time tracking]
  	[search by contract_ID, creates/updates timetracking]
##(Web page)
(HTML / CSS)
(Bootstrap / MDB)
(JS / JQuery)