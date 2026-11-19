# School Hire Management System

A web-based recruitment and vacancy management application designed for educational institutions to organize job openings and process candidate applications.

## Overview
This application provides two primary portals:
- **Administrator Portal:** Allows school administrators to post open job vacancies, review applicant details, and update application statuses (Pending, Accepted, Rejected).
- **Candidate Portal:** Allows prospective teachers and school staff to create an account, view active job openings, apply directly, and track the progress of their applications.

## Technology Stack
- **Backend:** Java (JSP, Servlets, JDBC)
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript
- **Application Server:** Apache Tomcat
- **IDE Support:** Apache NetBeans / Eclipse

## Getting Started

### 1. Database Setup
1. Ensure MySQL Server is running locally.
2. Execute the initialization script located at `database/schema.sql` in MySQL Workbench or via the MySQL CLI:
   ```sql
   source database/schema.sql;
   ```
3. Default database connection parameters in `src/java/config/GetConnection.java`:
   - URL: `jdbc:mysql://localhost:3306/schoolhire`
   - User: `root`
   - Password: `root`

### 2. Deployment
1. Open the project in Apache NetBeans or your preferred Java EE IDE.
2. Ensure the MySQL JDBC connector in `web/WEB-INF/lib/` is registered with the build path.
3. Deploy the application to your local Apache Tomcat server.
4. Navigate to `http://localhost:8080/School-Hire-Management-System/` in your browser.

## Author
Akshat Kumar Jain (akshatjain1655@gmail.com)
