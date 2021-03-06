# Software Development Plan - Superhero database

### Source control repository 
[Github link](https://github.com/Mauricepwong/superhero_database_T1A3)

## Purpose and Scope

### Purpose:
The purpose of this application is to create a database where you can store all you superhero information all in one location. The application will allow users to create a superhero of their own, view the entire database, find a specific superhero and edit / delete superhero information. Users using the application will be able to view the superheroes name, identity and superpowers. 

### Problem:
With all the superheroes out there these day, coming from different publishers and different comic universes, it can be hard to keep track of all their names, secret identities and powers. This app will provide users with their own database which they can choose to alter as they please. Exercise their creative minds and create new ones as well. If you are ever watching a movie or just needing to prove your friends wrong you can look up the database to check your information.   

### Target audience and usage:
The target audience would be anyone keen to keep a database of superheros. Movie buffs, comic buffs or superhero fans so that they could look up information about their superhero quickly and edit the database as they see fit. Creative types would also enjoy the application, being able to create their own superheroes and see how they compare to other superheroes in the database. 

## Features

### CRUD functionality - Create, List, Edit, Delete superhero 
This feature will allow users to create, edit or delete superhero instances within the application. 

Create - Users will be given an input field that will ask for a name (mandatory), secret identity and superpowers (Minimum of 1 superpower).
The application will take this and create a superhero instance and store to temporary storage. 

Edit - Users will first search for a superhero then be provided with the results that they can edit. Users will then provide input that will override that superhero instance. 

Delete - Users will first search for a superhero then with the results can select which hero they want to delete. The program will then remove the instance from storage.

### Search for a superhero
This feature allows users to search for a particular superhero based on a keyword. The application will then display the results to the user in a nice table format. 

### User menu choices
tty prompt was implemented where possible to give users a choice of options when selecting menu items (instead of typing). This was to reduce user input errors and the need for them re-input an option.  

### Saving to offline storage
When quitting, the application will save the changes made in that current session. This was to prevent unnecessary load on the system especially when the database grows larger.  

### keeping unique IDs
A secure random hexadecimal ID was used to ensure that each superhero got a unique ID.

### run as an executable file. 
This allows users to run the application without having to specify what program needs to run it. 

## User interaction and experience
The users will be welcomed with a header banner and welcome message. They will then have an option to select from several menu items. Each menu item will bring them to a separate feature. Text has been colourised where appropriate, so the page isn't all white. Data will be displayed in table format so that the data is organised.

### How will the user find out how to interact with each feature 
When a user loads the program, there will be an option leading to a help page screen that will describe how a user can interact with the program and features. 

### How will the user interact with each feature 
- Main menu and superhero selections - When users need to provide a specific input they will be presented with the available options and they can navigate these by using the up/down arrows and pressing enter to select.

- List superheroes - When users select this from the main menu they will be lead to a screen that list out all the superheroes in the database.

- Create superheroes - When a user selects this option, the application will present to them a series of input fields where they can type out the new superhero's name, identity and superpowers.

- Search superheroes - With this option, users will be presented with a input field for a keyword then a search will be conducted and display all superheroes that contain that keyword in their name. 

- Edit superheroes - When users select this, first users will input a keyword, a search is done and then results display and are selectable. When the user selects a superhero, they will be presented with input fields to overwrite the superhero's attributes.

- Delete superheroes - When users select this, first users will input a keyword, a search is done and then results display and are selectable. When the user selects a superhero, that superhero will then be deleted from storage. 

### How will errors be handled and displayed to the user?
A selection menu was implemented with tty-prompt, so user input errors could be reduced. When user input is required, and they enter an incorrect value an message will appear clarifying the error and allowing users to correct their input. 

## Control flow diagram
![Control flow diagram](/docs/control_flow.png)

Design decisions: Changes to control flow - I decided to not implement the search by ID. Initially the id was going to be sequential numbers but then decided to use a 5 hexadecimal number as ID. From this, it would not make sense for the user to search by ID so it was removed.

## Implementation plan 
[Trello link](https://trello.com/b/EEClm7Rp/ruby-app-development)

![Trello image](/docs/implementation_plan.png)

Firstly, I broke down my application into the relevant requirements. writing down pseudo code on how the app should function. I then pulled out the features further breaking it down to its functionality to determine what needed to be coded.

I then created the implementation plan and listed out all the features, requirements and functionality. I prioritised items where code needed to be shared between different functions and also ones that spoke directly to the requirements. The remaining items I placed in stretch goals. 

I created checklists for items that needed to be broken down further and t-shirt sizings (S, M, L) to signify the time and effort needed for a particular item.  

## Help documentation - How to use the app

### Dependencies / Steps to install 
1. If you don't have ruby, install ruby [download link](https://www.ruby-lang.org/en/documentation/installation/)
2. Clone or download the project files
```
https://github.com/Mauricepwong/superhero_database_T1A3
```
3. Navigate to the /src folder
```
cd src
```
4. If you don't have bundler, install this 
```
gem install bundler
```
or
```
sudo gem install bundler
```
5. Install the gem bundle file 
```
bundle install
```
6. Then you can run the app. ensure you are still in /src
```
./sd_app
```
