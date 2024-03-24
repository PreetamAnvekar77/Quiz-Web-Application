# Quiz Web Application

This is a simple quiz web application built using HTML, CSS, PHP, and JavaScript. It allows users to take quizzes and provides immediate feedback on their answers.

## Features:

1. **User Authentication**: Users can register, login, and logout securely.
2. **Quiz Taking**: Users can take quizzes consisting of multiple-choice questions.
3. **Immediate Feedback**: Users receive immediate feedback on their answers after submitting.
4. **Score Tracking**: The application tracks and displays users' scores for each quiz.
5. **Responsive Design**: The application is designed to be responsive and work well on various devices.

## Technologies Used:

- HTML: Markup language for creating the structure of the web pages.
- CSS: Styling language used to enhance the appearance of the web pages.
- PHP: Server-side scripting language for handling backend logic and database operations.
- JavaScript: Client-side scripting language for interactive features and dynamic content.

## Usage:

1. Clone or download the repository to your local machine.
2. Set up a local web server environment (e.g., XAMPP, WAMP, or MAMP).
3. Import the provided SQL file into your database management system.
4. Update the `db_connection.php` file with your database credentials.
```bash
<?php
    $host = "localhost";
    $user = "root";
    $password = "";
    $db = "quiz"; // Name of the Database
    $link = mysqli_connect($host,$user,$password,$db);
?>
```
5. Access the application through your web browser.


## License:

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
