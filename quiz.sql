-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 02:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cpp_quiz`
--

CREATE TABLE `cpp_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpp_quiz`
--

INSERT INTO `cpp_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'Which of the following is a correct identifier in C++?', 'VAR_1234', '$var_name', '7var_name', '1_VARNAME', 'VAR_1234'),
(2, 'Which of the following approach is used by C++?', 'Left-right', 'Right-left', 'Bottom-up', 'Top-down', 'Bottom-up'),
(3, 'What is the difference between delete and delete[] in C++?', 'delete is syntactically correct but delete[] is wrong and hence will give an error if used in any case', 'delete is a keyword whereas delete[] is an identifier', 'delete is used to delete normal objects whereas delete[] is used to pointer objects', 'delete is used to delete single object whereas delete[] is used to multiple(array/pointer of)objects', 'delete is used to delete single object whereas delete[] is used to multiple(array/pointer of)objects'),
(4, 'Which of the following type is provided by C++ but not C?', 'double', 'int', 'bool', 'float', 'bool'),
(5, 'Which of the following symbol is used to declare the preprocessor directives in C++?', '#', '$', '^', '&', '#'),
(6, 'What is meant by a polymorphism in C++?', 'class having only single form', 'class having many forms', 'class having no forms', 'class having two forms', 'class having many forms'),
(7, 'Which of the following constructors are provided by the C++ compiler if not defined in a class?', 'Copy constructor', 'Default constructor', 'Assignment constructor', 'All of the mentioned', 'All of the mentioned'),
(8, 'Pick the incorrect statement about inline functions in C++?', 'They are generally very large and complicated function', 'Saves overhead of a return call from a function', 'These functions are inserted/substituted at the point of call', 'They reduce function call overheads', 'They are generally very large and complicated function'),
(9, 'Which of the following is used to terminate the function declaration in C++?', ':', '0', ';', ']', ';'),
(10, 'Which is more effective while calling the C++ functions?', 'call by object', 'call by reference', 'call by pointer\r\n', 'call by value', 'call by reference');

-- --------------------------------------------------------

--
-- Table structure for table `css_quiz`
--

CREATE TABLE `css_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css_quiz`
--

INSERT INTO `css_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'The full form of CSS is:', 'Cascading Style Sheets', 'Coloring Style Sheets', 'Color and Special Sheets', 'Cascading Sheets Style', 'Cascading Style Sheets'),
(2, 'In how many ways can CSS be written in?', '1', '2', '3', '4', '3'),
(3, 'How can we select an element with a specific ID in CSS?', '.', '^', '#', '&', '#'),
(4, 'Can negative values be allowed in padding property?', 'Yes', 'No', 'Depend on property', 'Depend on value', 'No'),
(5, '\r\nWhat value should be passed to the width parameter if we want an element, say a table, to span the entire width of the screen?', '50%', '0%', '25%', '100%', '100%'),
(6, 'Which of the following CSS properties specifies the stack order of elements?', 'overlap', 'z-index', 'No such property is present', 'x-index', 'z-index'),
(7, 'Which of the following are types of length units in CSS?', 'Absolute', 'Relative', 'Both', 'None of the above', 'Both'),
(8, 'How can we add more importance to a property/value than normal?', 'important', 'thick', 'bold', '!important', '!important'),
(9, 'Which CSS property specifies the painting area of the background?', 'background-img', 'background-size', 'background-clip', 'background-hint', 'background-clip'),
(10, 'Which of the following properties is used to align text in CSS?', 'text-align', 'text-alignment', 'text-position', 'text', 'text-align');

-- --------------------------------------------------------

--
-- Table structure for table `c_quiz`
--

CREATE TABLE `c_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_quiz`
--

INSERT INTO `c_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'Which is correct with respect to the size of the data types?', 'double > char > int', 'int > char > float', 'char > int > float', 'char < int < double', 'char < int < double'),
(2, 'If the two strings are identical, then strcmp() function returns', 'Correct', '1', '0', 'Yes', '0'),
(3, 'Which keyword is used to come out of a loop only for that iteration?', 'break', 'goto', 'Continue', 'exit', 'Continue'),
(4, 'How many times is a do while loop guaranteed to loop?', '0', '1', 'Varies', 'Depend on compiler', '1'),
(5, 'What will happen if in a C program you assign a value to an array element whose subscript exceeds the size of array?', 'The program may crash if some important data gets overwritten.', 'The compiler would report an error.', 'The element will be set to 0.', 'The array size would appropriately grow.', 'The program may crash if some important data gets overwritten.'),
(6, 'An array of similar data types which themselves are a collection of dissimilar data type are ___________', 'Tree', 'Linked Lists', 'Array of structure', 'B and C', 'Array of structure'),
(7, 'The default parameter passing mechanism is', 'call by value result', 'call by value', 'call by reference', 'None of these.', 'call by value'),
(8, 'The recursive functions are executed in a ...........', 'Last In First Out order', 'First In First Out order', 'Random order', 'Parallel order', 'Last In First Out order'),
(9, 'Choose a correct statement about C structures.', 'Structure elements can be initialized at the time of declaration.', 'Structure members can not be initialized at the time of declaration', 'Only integer members of structure can be initialized at the time of declaraion', 'None of the above', 'Structure members can not be initialized at the time of declaration'),
(10, 'Which of the following return-type cannot be used for a function in C?', 'char *', 'void', 'sturct', 'None of above', 'None of above');

-- --------------------------------------------------------

--
-- Table structure for table `html_quiz`
--

CREATE TABLE `html_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `html_quiz`
--

INSERT INTO `html_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'What does the abbreviation HTML stand for?', 'HyperText Markup Language', 'HighText Markup Language', 'HyperText Markdown Language', ' None of the above', 'HyperText Markup Language'),
(2, 'How many sizes of headers are available in HTML by default?', '2', '5', '8', '6', '6'),
(3, 'What is the effect of the <b> tag?', 'It converts the text within it to bold font', 'It is used to write black-colored font', 'It is used to increase the size of font', 'It is used to visible the font in all color', 'It converts the text within it to bold font'),
(4, 'Which of the following is true about HTML tags?', 'Are case sensitive', 'Are not case sensitive', 'Are in uppercase', 'Are in lowercase', 'Are not case sensitive'),
(5, 'What tag is used to render an image on a webpage?', 'img', 'src', 'image', 'href', 'img'),
(6, 'Which HTML element is used to define description data?', 'li', 'ol', 'dd', 'dl', 'dd'),
(7, 'Which of the following tags doesn’t require a closing tag?', 'br', 'hr', 'br and hr', 'b', 'br and hr'),
(8, 'How to create an ordered list in HTML?', 'ol', 'ul', 'li', 'nl', 'ol'),
(9, 'The most basic part of any HTML page is?', 'Text', 'ASCII Text', 'Binary Text', 'Special Text', 'ASCII Text'),
(10, 'Which of the following are examples of block-level elements in HTML?', 'div', 'p', 'h1', 'All of the above', 'All of the above');

-- --------------------------------------------------------

--
-- Table structure for table `java_quiz`
--

CREATE TABLE `java_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java_quiz`
--

INSERT INTO `java_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'What is the default value of int variable?', '0', '0.0', 'null', 'not defined', '0'),
(2, 'Which exception is thrown when java is out of memory?', 'MemoryError', 'OutOfMemoryError', 'MemoryOutOfBoundsException', 'MemoryFullException', 'OutOfMemoryError'),
(3, ' Which of these keywords is used to define interfaces in Java?', 'interface', 'intf', 'Interface', 'Intf', 'interface'),
(4, 'Which of the following is a superclass of every class in Java?', 'ArrayList', 'Abstract class', 'Object class', 'String', 'Object class'),
(5, 'Which of these keywords are used for the block to be examined for exceptions?', 'check', 'catch', 'throw', 'try', 'try'),
(6, 'Which one of the following is not an access modifier?', 'Protected', 'void', 'Private', 'Public', 'void'),
(7, 'What is the numerical range of a char data type in Java?', '0 to 65535', '0 to 12535', '-128 to 127', '0 to 256', '0 to 65535'),
(8, 'Which of these cannot be used for a variable name in Java?', 'identifier & keyword', 'keyword', 'identifier', 'none of the mentioned', 'keyword'),
(9, 'Which statement is true about Java?', 'Java is a sequence-dependent programming language', 'Java is a code dependent programming language', 'Java is a platform-dependent programming language', 'Java is a platform-independent programming language', 'Java is a platform-independent programming language'),
(10, 'Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', 'Dynamic and Extensible', 'Use of pointers');

-- --------------------------------------------------------

--
-- Table structure for table `python_quiz`
--

CREATE TABLE `python_quiz` (
  `number` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `python_quiz`
--

INSERT INTO `python_quiz` (`number`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, ' Which among them is incorrect for set s={100,101,102,103}', 'len(s)', 'sum(s)', 'max(s)', 'print(s[3])', 'print(s[3])'),
(2, 'Which of the following statements is used to create an empty set in Python?', '()', 'set()\r\n', '{}', '[]', 'set()'),
(3, ' Python supports the creation of anonymous functions at runtime, using a construct called __________', 'pi', 'anonymous', 'lambda', 'none of the mentioned', 'lambda'),
(4, 'What is the maximum possible length of an identifier in Python?', '79 characters', '31 characters', '55 characters', 'none of the mentioned', 'none of the mentioned'),
(5, 'How can we check whether the object is instance of class or not. Let us consider an object O which is instance of class B.', 'B.isinstance(O)', 'B.isinstance(O)', 'isinstance(O,B)', 'isinstance(B,O)', 'isinstance(O,B)'),
(6, 'What is output for-print(\"\" in \"python\")', '\"python\"', 'True', '0', 'error', 'True'),
(7, 'What is output for-2*2**3', '12', '64', '16', '36', '16'),
(8, 'Which is the special symbol used in python to add a single line comments?', '$', '//', '/*....*/', '#', '#'),
(9, 'Which are mutable datatype in python? ', 'set,list,dictionary', 'set,list,tuple', 'str,tuple,dictionary', 'set,str,dictionary', 'set,list,dictionary'),
(10, 'What is the correct syntax to output the type of variable or object in python?', 'print(typeOf(x))', 'print(type x)', 'print(typeof(x))', 'print(type(x))', 'print(type(x))');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `Email` varchar(255) NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `score` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cpp_quiz`
--
ALTER TABLE `cpp_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `css_quiz`
--
ALTER TABLE `css_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `c_quiz`
--
ALTER TABLE `c_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `html_quiz`
--
ALTER TABLE `html_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `java_quiz`
--
ALTER TABLE `java_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `python_quiz`
--
ALTER TABLE `python_quiz`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cpp_quiz`
--
ALTER TABLE `cpp_quiz`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `css_quiz`
--
ALTER TABLE `css_quiz`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `html_quiz`
--
ALTER TABLE `html_quiz`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `java_quiz`
--
ALTER TABLE `java_quiz`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `registration` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
