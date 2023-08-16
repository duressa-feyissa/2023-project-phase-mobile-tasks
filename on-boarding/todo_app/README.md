# todo_app

A new Flutter project.

## Getting Started

Flutter To-Do App
These instructions will help you set up and run the project on your local machine.

## Prerequisites

Flutter: Make sure you have Flutter installed. You can download it from the official Flutter website: Flutter Installation

## Installation

1. Clone the repository: git clone https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks.git

2. Navigate to the project directory: cd todo-app

3. Install dependencies: flutter pub get

Running the App
Connect your Android or iOS device to your computer, or set up an emulator.
flutter run

## App Structure

The app is organized into different screens and widgets for better code modularity and maintainability.

## Screen Shot

<img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2013-45-35.png"> <img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2013-45-49.png"> <img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2012-36-37.png" > <img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2012-36-58.png" >
<img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2013-42-22.png" > <img src="https://github.com/duressa-feyissa/2023-project-phase-mobile-tasks/blob/main/on-boarding/todo_app/Screen%20Shot/Screenshot%20from%202023-08-16%2013-42-47.png">


## Screens

Home: Get start.
TodoList: Shows a list of tasks.
AddEditTask: Allows the user to add a new task or edit an existing one.
TaskDetail: Displays detailed information about a task.
Navigation
The app uses named routes to navigate between screens. The routes are defined in the main.dart file. You can navigate to different screens using the following routes:

/: Home screen
/todoList: TodoList screen
/addEditTask: AddEditTask screen
/taskDetail: TaskDetail screen

## Custom Page Transition

The app uses a custom page transition for the /addEditTask route. The _createPageRoute function in main.dart defines a slide transition animation when navigating to the AddEditTask screen.

## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please create an issue or submit a pull request.
