# LEVAI MBATHA CLINIC BOOKING SYSTEM

## PROJECT DESCRIPTION

The ** LEVAI MBATHA CLINIC BOOKING SYSTEM ** is a MySQL-based relational database designed 
to manage clinic operations efficiently.
It helps track patients, doctors, appointments, treatments, and medications. 
The system models real-world relationships between entities and supports basic functionality such as:

- Registering patients and doctors
- Booking and tracking appointments
- Recording treatment details
- Managing medications prescribed per appointment

## HOW TO RUN / SETUP THE PROJECT

1. **Install MySQL Server** (if not installed already)
2. Open your **MySQL Workbench**
3. Create a new database
4. Import the provided .sql file:
   -  Copy and run the 'sql' script containing the ' CREATE TABLE' statements and sample 'INSERT' data
5. Execute queries to interact with the system or build your own application interface


## TO IMPORT USING MySQL CLI:
''' bash
mysql -u your_username -p < levai_mbatha_clinic.sql



## DATABASE STRUCTURE
- Patients - Stores patient records
- doctors - stores doctor details and specializations
- appointments -  links patients with doctors and holds appointment info
- treatments - records diagnoses and procedures
- medications - stored medication details
- appointment_medications - maps medications prescribed in each appointment
  (many-to-many relationship)

## ERD (Entity Relationship Diagram)
"ERD.drawio"


## Sample Data 
The script includes insertions for: 
- 2 patients
- 2 doctors
- 2 appointments
- 2 treatments
- 2 medications
- Mapped prescriptions


## Author
Palesa Mbali Tshabangu


