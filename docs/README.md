# Software Development Plan - Superhero database

### Source control repository 
[Github link](https://github.com/Mauricepwong/superhero_database_T1A3)

## Purpose and Scope

### Purpose:
The purpose of this application is to create a database where you can store all you superhero information all in one location. The application will allow users to create a superhero of their own, view the entire database, find a specific superhero and edit / delete superhero information if information changes about that superhero. Users using the application will be able to view the superheroes name, identity and superpowers. 

### Problem:
With all the superheroes out there these day, coming from different publishers and different comic universes, it can be hard to keep track of all their names, secret identities and powers. This app will provide users their own database which they can choose to alter as they please. Exercise their creative minds and create new ones as well. If you are ever watching a movie or just needing to prove your friends wrong you can look up the database to check your information.   


### Target audience and usage:
The target audience would be anyone keen to keep a database of superheros. Movie buffs, comic buffs or superhero fans so that they could look up information about their superhero quickly and edit the database as they see fit. Creative types that would like to create their own superheroes and see how they compare to other superheroes in the database. 

## Features

### CRUD functionality - Create, List, Edit, Delete superhero 
This feature will allow users to create, edit or delete superhero instances within the application. 

Create - Users will be given an input field that will ask for a name (mandatory), secret identity and superpowers (Minimum of 1 superpower).
The application will take this and create a superhero instance and store to temporary storage. 

Edit - Users will first search for a superhero then be provided with the results that they can edit. Users will then provide input that will override that superhero instance 

Delete - Users will first search for a superhero then with the results can select which hero they want to delete. The program will then remove the instance from storage.

### Search for a superhero
This feature allows users to search for a particular superhero based on a keyword. The application will then display the results to the user in a nice table format. 

### User menu choices
tty prompt was implemented where possible to give users a choice of options when selecting menu items (instead of typing). This was to reduce user input errors and the need for them re-input and option.  

### Saving to offline storage
When quitting, the application will save the changes made in that current session. This was to prevent unnecessary load on the system especially when the database grows larger.  

### keeping unique IDs
A secure random hexadecimal ID was used to ensure that each superhero got a unique ID

### run as an executable file. 
This allows users to run the application without having to specify what program needs to run it. 

## User interaction and experience
The users will be welcomed with a header banner and welcome message. They will then have an option to select from several menu items. Each menu item will bring them to a separate feature. Text has been colourised where appropriate, so the page isnt all white. Data will be displayed in table format so that the data is organised.

### How will the user find out how to interact with each feature 
When a user loads the program, there will be an option leading to a help page screen that will describe how a user can interact with feature

### How will the user interact with each feature 


### How will errors be handled and displayed to the user?
A selection menu was implemented with tty-prompt, so user input errors could be reduced. When user input is required, and they enter an incorrect value an msg will appear clarifying the error and allowing them to correct their input. 


## Control flow diagram
![Control flow diagram](/docs/control_flow.png)

Design decisions - 


## Implementation plan 
[Trello link](https://trello.com/b/EEClm7Rp/ruby-app-development)

![Trello image](/docs/implementation_plan.png)
### how each feature was implemented

###

## Help documentation 

### How to use the app

### Dependancies / Steps to install 
1. if you don't have ruby, install ruby [download link](https://www.ruby-lang.org/en/documentation/installation/)
2. Clone or download the project files
ADD THE GITHUB 

3. 
```
gem install bundler
```
4. 
```
bundle install
```
5. 
```
cd src
./sd_app
```
