**Data Warehousing Project Summary**

**Overview:**
This project focused on the construction of a data warehouse using SQL query files executed via a Bash script. PostgreSQL served as the database system for the project, with the tables designed according to a star schema. Multiple SQL files were utilized to create and load the tables, followed by verification of the entire process using a separate SQL file.

**Project Highlights:**
- Leveraged a remote repository containing SQL query files in a zip folder to facilitate the project workflow.
- Implemented a Bash script, `data_warehousing.sh`, to automate the execution of SQL commands and manage file and folder creation.
- Established the necessary database structures using a star schema, promoting efficient data organization and query performance.
- Executed SQL scripts sequentially to create and load tables, directing command outputs to a log file for review and reference.
- Conducted verification of the data warehouse integrity using a dedicated SQL script, ensuring successful execution of all operations.

**Execution Workflow:**
1. **Database Creation:** Established a PostgreSQL database on the server via terminal commands, initializing the foundation for subsequent operations.
2. **File and Folder Management:** Utilized Bash scripting to create project directories, manage file downloads, and handle unzip operations, ensuring portability and ease of execution across different environments.
3. **SQL Script Execution:** Ran a series of SQL scripts to create tables and load data into the data warehouse, capturing command outputs in a log file for comprehensive review.
4. **Verification and Testing:** Employed a validation SQL script to verify the completeness and accuracy of the data warehouse construction, cross-referencing with expected outcomes.
5. **Database Review:** Assessed the database contents and structure within a PostgreSQL administration tool (e.g., pgAdmin), confirming successful table creation and data loading.
6. **Documentation:** Generated an Entity-Relationship Diagram (ERD) to visualize the database schema, enhancing understanding and documentation of the project's architectural design.

**Conclusion:**
This project successfully demonstrated the creation of a data warehouse using SQL query files executed via a Bash script. Through meticulous execution and verification processes, all tables were created and loaded accurately, ensuring the integrity and reliability of the data warehouse. Detailed logs documenting each step of the process are provided alongside this submission, facilitating transparency and reproducibility of results.
