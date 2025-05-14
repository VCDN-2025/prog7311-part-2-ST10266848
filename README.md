# 🗂️Project Overview

**Please Note:** This only a functional prototype containing only the required core functionalities for this part of the POE. 

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
[PROG 3A - POE Part 2 - Video Demonstration of my app](https://youtu.be/aDxEwXopYNs)

----

# 🛠️App Setup Instructions:
## Prerequisites
- Before you can begin, you should already have the following programs set up and running on your machine:
  - GitHub Desktop
  - Visual Studio
  - SQL Server Express
  - SQL Server Management Studio

## Step-by-Step Instructions:
**1. Clone this GitHub repository onto your local machine.**
  - On the main page of this repository, click on the green 'Code' button (the one with a downward arrow symbol)
  - On the pop-up box that appears, click on the 'Open with GitHub Desktop' option.
  - GitHub Desktop should now open up automatically (if it didn't open yet and you received a prompt instead, click on 'allow' and then it should open for you)
  - Once in GitHub Desktop, you will be prompted with a 'Clone Repository' dialog box with the GitHub repo's url automatically filled in and Local Path that you must select. Select a folder on your machine to store a local version of this GitHub repository (Note: The folder must be empty for git though).
  - Click on the 'Clone' button to clone this gitHub repository. All files and folders in this remote GitHub repository will now be copied and stored in the folder in the local folder you have selected.
  - The GitHub repository should now have been successfully cloned and you can view it on your local machine!

**2. Import SQL database and its data:**
  - Go to the local folder where you cloned this GitHub repository. You should see a folder named 'prog7311-part-2-ST10266848', double click on it to open it.
  - Once inside the 'prog7311-part-2-ST10266848' folder, you should see 2 more folders. Double click on the one named 'Agri-Energy_Connect_DB' to open it.
  - Once inside the 'Agri-Energy_Connect_DB' folder, You should now see a single 'sql' file. Double click on the 'Agri-Energy_Connect_DB' sql file to open it in SSMS.
  - Once in SSMS, click on connect on the SQL Server dialog box. You should now see the contents of the sql file in front of you.
  - To create the sql database and insert all of the sample data, execute the sql file by clicking the 'execute' button above the filename or press F5 on your keyboard.
  - Once the sql file has been fully executed, the 'Agri-Energy_Connect_DB' database should be fully created along with all its tables and sample data!

**3. Open the app in Visual Studio**
  - Open Visual Studio by double clicking on its icon.
  - Select the 'Open a project or solution option'
  - Navigate to the 'prog7311-part-2-ST10266848' folder, double click on the 'Agri-Energy_Connect_POE' folder and finally, double click on the 'Agri-Energy_Connect_POE.sln' file (it should be the file with a small Visual Studio icon next to it).
  - The application should now be open in Visual Studio!

**4. Connect Visual Studio to SQL database**
  - Navigate to the 'tools' section in Visual Studio's top navbar (click on it) and then select the 'Connect to Database' option, the corresponding dialog box will open.
  - Open up a new window of SQL Server Management Studio (SSMS), copy (press Ctrl + C on your keyboard) the server name from SSMS's 'Connect' dialog box and return to Visual Studio.
  -  In Visual Studio's 'Connect' dialog, paste in the server name that you just copied (Ctrl + V or left click the textbox and click 'Paste').
  -   Set 'Trust Server Certificate' to 'True' from the drop-down menu.
  -   Select the 'Agri-Energy_Connect_DB' from the database name drop-down menu and then click on the 'Connect' button.
  -   You should now be connected to the database but to confirm that you are, click on 'View' from Visual Studio's top navbar and click on the 'SQL Server Object Explorer' tool to open it up. You should now see a SQLEXPRESS server which you should click to open to view all its folder.
  -   Open the 'databases' folder in 'SQL Server Object Explorer' and if everything had been successful so far, you should see the 'Agri-Energy_Connect_DB' in the list of databases.

**5. Connect app to SQL database in Visual Studio**
  - So far we have just connected the SQL database to Visual Studio but we have not yet integrated it with the app so let's do just that:
  - Open 'SQL Server Object Explorer' in Visual Studio and right click on the 'SQLEXPRESS' server instance you used for the Agri-Energy_Connect_DB and click on properties.
  - A properties tab should open on your left. Go to the 'Connection String' section and copy the value next it by double clicking the value and right clicking it to copy it or by pressing Ctrl + C.
  -  Once the connection string has been copied, navigate to the Solution Explorer in Visual Studio and double click on the appsettings.json file.
  - Just after the opening curly brace at the top, press the double quotation mark on your keyboard ("), Visual Studio should automatically insert insert double quotation mark and place your cursor in between them.
  - Now begin typing the word 'ConnectionString' between the double quotation marks and you should be prompted with an auto-complete suggestion, press tab to complete it.
  -  As you can see it added a pair of curly braces for the connection string. Open these curly braces by moving your cursor inside them and pressing 'enter' on your keyboard.
  - Enter a double quotation mark inside this curly brace pair and within the double quotation marks, type the name of the database 'Agri-Energy_Connect_DB' and after the double quotations, enter a colon which would  automatically bring in a pair of double quotation marks next to the colon.
  - Inside this pair of double quotation marks, paste in the 'Connection String' that you copied earlier.
  - We are not complete yet as we still need to specify the database itself within the connection string. To do this, we add another semi-colon after the data source name and enter the following: Initial Catelog=databaseName where databaseName is the name of the database in full. An example of how your connection string should look like in Visual Studio would be: "Data Source=KREASON1\\SQLEXPRESS;Initial Catalog=Agri-Energy_Connect_DB;Integrated Security=True;Encrypt=True;Trust Server Certificate=True" where the data source name may depend on the name of your Windows user.
  - Open the 'Program.cs' file in the project's Solution Explorer and navigate to line 9.
  - Within the innermost pair of brackets immediately next to the term GetConnectionString, ensure that the name of connection string corresponds with the connection string name in the appsettings.json file and you should be could to go.

**6. Running the app on your browser**
  - Everything should be fully set up and now you should be ready to run the app by pressing F5 on your keyboard or pressing the green button in the top navbar of Visual Studio. Your default browser will open up automatically to display the home page of the app.
  - To access the 'Your Products' page to add products to your profile, you need to be logged in as a farmer.
  - To access the 'Employee Dashboard' page to manage farmers and view all their products, you need to be logged in as an Employee.
  - To log into the app, you can either click on the 'Your Products' button or the 'Login' button in the app's navbar at the top and enter your login details.

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
