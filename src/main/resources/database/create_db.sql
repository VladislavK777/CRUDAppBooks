USE `test`;

DROP TABLE IF EXISTS `test`.`book`;
CREATE TABLE `test`.`book` (
  `id` INT UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NULL,
  `description` VARCHAR(255) NULL,
  `author` VARCHAR(100) NULL,
  `isbn` VARCHAR(20) NULL,
  `printYear` INT NULL,
  `readAlready` TINYINT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8
COMMENT = 'book_table';

INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Head First Java, 2nd Edition', 'The fact is your brain craves novelty. Its constantly searching, scanning, waiting for something unusual to happen.', 'Kathy Sierra, Bert Bates', 0596009208, 2016, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Java, A Beginner''s Guide, 5th Edition', 'Learn the fundamentals of Java programming in no time from bestselling programming author Herb Schildt.', 'Herbert Schildt', 0071606327, 2017, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Test Driven Development: By Example', 'Follows two TDD projects from start to finish, illustrating techniques programmers can use to increase the quality of their work.', 'Kent Beck', 0321146530, 2015, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Effective Java (2nd Edition)', 'Are you looking for a deeper understanding of the Java programming language so that you can write code that is clearer, more correct, more robust, and more reusable', 'Joshua Bloch', 0321356683, 2014, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('The Pragmatic Programmer: From Journeyman to Master', 'Ward Cunningham Straight from the programming trenches, The Pragmatic Programmer cuts through the increasing specialization and technicalities of modern software development to examine the core process', 'Andrew Hunt', 0201616222, 2013, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Design Patterns: Elements of Reusable Object-Oriented Software', 'These texts cover the design of object-oriented software and examine how to investigate requirements, create ', 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides', 0201633612, 2015, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Refactoring: Improving the Design of Existing Code', 'As the application of object technology--particularly the Java programming language--has become commonplace, a new problem has emerged to confront the software development community', 'Kent Beck', 0201485672, 2013, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Clean Code: A Handbook of Agile Software Craftsmanship', 'Even bad code can function. But if code isn''t clean, it can bring a development organization to its knees.', 'Robert C. Martin', 0132350882, 2012, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Head First Design Patterns: A Brain-Friendly Guide ', 'At any given moment, someone struggles with the same software design problems you have.', 'Eric Freeman', 0596007124, 2010, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('OSGi in Action: Creating Modular Applications in Java', 'What is OSGi? Simply put, OSGi is a standardized technology that allowsdevelopers to create the highly modular Java applications that are required forenterprise development.', 'Richard Hall ', 1933988916, 2015, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('The Clean Coder: A Code of Conduct for Professional Programmers', 'Programmers who endure and succeed amidst swirling uncertainty and nonstop pressure share a common attribute: They care deeply about the practice of creating software.', 'Robert C. Martin', 0137081073, 2016, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Java Concurrency in Practice', 'I was fortunate indeed to have worked with a fantastic team on the design and implementation of the concurrency features added to the Java platform in Java 5.0', 'Brian Goetz', 0321349601, 2016, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Working Effectively with Legacy Code', 'Get more out of your legacy systems: more performance, functionality, reliability, and manageability Is your code easy to change', 'Michael Feathers', 0131177052, 2016, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Peopleware: Productive Projects and Teams (Second Edition)', 'Demarco and Lister demonstrate that the major issues of software development are human, not technical.', 'Tom DeMarco', 0932633439, 1999, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Patterns of Enterprise Application Architecture', 'The practice of enterprise application development has benefited from the emergence of many new enabling technologies.', 'Martin Fowler', 0321127420, 2002, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Domain-Driven Design: Tackling Complexity in the Heart of Software', 'Eric Evans has written a fantastic book on how you can make the design of your software match your mental model of the problem domain you are addressing', 'Eric Evans', 0321125215, 2003, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Implementing Domain-Driven Design', 'For software developers of all experience levels looking to improve their results, and design and implement domain', 'Vaughn Vernon', 0321834577, 2013, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Clean Architecture: A Craftsman''s Guide to Software Structure and Design', 'By applying universal rules of software architecture, you can dramatically improve developer productivity throughout the life of any software system.', 'Robert C. Martin', 0134494164, 2017, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Building Microservices: Designing Fine-Grained Systems', 'Distributed systems have become more fine-grained in the past 10 years', 'Sam Newman', 1491950358, 2015, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Thinking in Java (4th Edition)', 'The legendary author Bruce Eckel brings Java to life with this extraordinarily insightful, opinionated and downright funny introduction.', 'Bruce Eckel', 0134494164, 2016, 0);
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUE ('Head First Android Development: A Brain-Friendly Guide', 'If you have an idea for a killer Android app, this fully revised and updated edition will help you build your first working application in a jiffy.', 'Dawn Griffiths', 1491974052, 2017, 0);
