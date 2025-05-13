# 🗂️Project Overview

**Note:** This only a functional prototype containing only the required core functionalities for this part of the POE. 

## 📝What our application does?
My application allows farmers to add the products that they supply, to their profiles. Also, my application allows employees to view all the products that farmers supply as well as allowing employees to add farmers and manage their accounts. 

## 👤Who is our application intended for?
My application is intended for farmers as it allows to them add products that they supply to their profiles.

## 🧩Chosen Architecture and Design Patterns
For our architecture pattern, we selected the Model View Controller (MVC) pattern.
As for our design pattern, we selected the Observer pattern.

## 🗄️Chosen Database
### What database are we using?
I am using a SQL database to store farmer products as well as users.

### Why did I choose SQL database?
I chose to create a SQL database since I am already quite familiar with its relational nature so I didn't struggle when creating tables, storing data within them as well as integrating the database with my app.
I also know my way around SQL Management Studio (which is recommended for managing a SQL database). 

----

# 🧑‍💻User Experience
## How we considered User Experience (UX) in the design of our app?
For the css theme, I decided to replace the default theme with a custom dark theme. Additionally, I have ensured that all the buttons used in the application are easy to see from a glance so farmers don't have to struggle. To further assist farmers as well as employees, I have also included simple instructions for each respective type of user on the pages that they currently have access to. 

----

# 🎬Video Demonstration

----

# 🛠️App Setup Instructions:
## Prerequisites
- Before you can begin, you should already have the following programs set up and running on your machine:
  - GitHub Desktop
  - Visual Studio
  - SQL Server Managemenr Studio


## 1. 

----

# 👥Users and Roles
## 🪪AspNetCore Identities:
- Microsoft's AspNetCore Identities plugin in Visual Studio has been used to set up users and roles

## 🎭Roles:
- Farmer
- Employee

----

# 🔐Login Details of Sample Users

## 💼Employees:
- Mick Gouweloos
  - Email: mickygouweloos@agrienergyconnect.co.za
  - Password: Jfo737!@#36JYB

- Denzyl Washington
  - Email: denzylwashington@agrienergyconnect.co.za
  - Password: 3483gdE#&#YIhn
 
## 🌾Farmers:
- Jeremy Clarkson
  - Email: jeremyclarkson@diddlysquatfarm.co.za
  - Password: EYdhf834E#&#YI
 
- Jack Green
  - Email: jackstormgreen@farmingbro.co.za
  - Password: hdf@#GDF3483gd

- Ashley Ureko
  - Email: ashleyureko298@ashleypeacefulfarm.co.za
  - Password: JFU6fe@#&^875hn

----

# 💾SQL Database Structure and Pre-population of data in SSMS
## SQL Database Structure
### Products, Users, User Roles and roles tables:
![Ssms_GNqFQGECAM](https://github.com/user-attachments/assets/a27025e3-cd3c-432b-a910-e2c044c00a0d)

## Pre-population of sample data
### Users:
![Ssms_cfdTfyaEsd](https://github.com/user-attachments/assets/210b6c46-055a-46d2-b7bf-567cb3964a88)
### Roles:
![Ssms_xiMrS4cL70](https://github.com/user-attachments/assets/2e3e4f36-a7af-45e2-976d-5ff54230c382)
### Products:
![Ssms_EKNOdO8RQn](https://github.com/user-attachments/assets/23c0c049-b5dc-4bfa-b05e-b90ec800e9b8)

----

# ✅Core Functionalities
## 'Your Product' View - Farmer Product View
### Screenshot:
![brave_gpqGMcVpMz](https://github.com/user-attachments/assets/b72e6c4f-b0da-4f00-b01a-9788d28861d2)
### Explanation:
- This view is where farmers can view the details of the products they have added (such as their product name, category, production date, description and price).
- If they have not added any yet, they can simply do so by pressing the viewable 'Add Product' button.
- After adding a product, details related to the product will populate the table.
- When a specific farmer is signed in to the Agri-Energy Connect Platform, the Farmer Product View (also known as the 'Your Products' view) will only display the products that they have added so they will not be able to view all the products added by all farmers.

## Add Product View
### Screenshot:
![brave_t0jwVyznPq](https://github.com/user-attachments/assets/6e4f3bcb-71cb-48b8-97bc-d1bf4c5528f1)

### Explanation:
- When a farmer clicks on the 'Add Product' button they will be taken to this view.
- This view allows them to enter details for the products such as their name, imageURL, category, production date, description and finally their price.
- Once the product's details have been entered, the farmer can then click on the 'Add' button to actually add their product before being redirected back to the 'Your Product' view as well as populating it with any products they may add
- There is validation to ensure that the farmer's inputs are correctly formatted before storing them in their respective fields in the 'Products' table in the local SQL database.

## Employee Dashboard
### Screenshot
![brave_beP5HpT7bQ](https://github.com/user-attachments/assets/8e7899cd-6649-4aa3-add0-ad8d439f8b26)

### Explanation

## Manage Farmers View
### Screenshot:
![brave_qtVUyoij0Z](https://github.com/user-attachments/assets/cde806ed-5e52-4c3f-877c-724b773011bf)

### Explanation

## Add Farmer View
### Screenshot:
![image](https://github.com/user-attachments/assets/ff5becb9-e6bd-4247-a608-496ea9403637)
### Explanation

## All Farmer Products View
### Screenshots:
![image](https://github.com/user-attachments/assets/f31e4933-f67b-47cb-b44d-6e557b9dc185)
![image](https://github.com/user-attachments/assets/853c1bea-4a80-4d2b-aad7-356ceb568401)
![image](https://github.com/user-attachments/assets/4352fcb4-fec5-49a8-adc0-21faf53aa95a)


### Explanation
- This view is where Employees will be able to see all the products that all farmers have added.
- This view also includes filters for the farmer's name, product's category as well as a date range filter for product production dates.
- These filters serve to assist the employee with narrowing down product search results.
- To apply any or all of these filters, an employee selects the filter(s) they would like to apply and then clicks on the 'Apply Filters' button to apply them.
- To view all the products supplied by a specific farmer, an employee must select the email of that specific farmer from the 'All Farmers' drop-down menu and then click on the 'Apply Filters' button.
- If they wish to narrow the products down even further, they can select a specific category and select a specific production date range to view products for.
- These filters can be used separately, in combination with each other or interchangeably.
