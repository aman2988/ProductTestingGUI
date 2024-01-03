
# Product Testing GUI

This is a GUI application for testing Product, developed in .Net core.

### IIS Server Setup

Check your all IIS Services are running on your system properly or not. If not, then open the control panel go to the program and features, and click on Turn Windows Feature on or off.

go to Internet Information Services > Web Management Tools
* Select IIS Management Console
* Select all checkboxes in World Wide Web Services 

Apply the changes. Click on apply and then restart your computer.

After restarting your computer will see IIS Manager in the search box and open it.

Now, check your running IIS using localhost in the browser. go to http://localhost/

Install ASP.NET Core 6.9 Runtime – Windows Hosting Bundle Installer
https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-aspnetcore-6.0.6-windows-hosting-bundle-installer

### Publish Project

To publish our application; right-click on Project and click on Publish

Select Folder option

Provide the path to a local or network folder. For eg. C:\inetpub\wwwroot\publish

### Deployment

Open IIS Manager and create a new Web Application after right click on the sites

Site name: GUI
Physical Path: C:\inetpub\wwwroot\gui (put the published files here)
Click Ok

Click on GUI, and on the right side, you can see the browse option, so click on that and open the application inside the browser

### Notes
1. The test logic here is dummy logic as of now, which gives success or failed status randomly.
2. For Individual test, click on checkbox and Test button will get enabled and that can be clicked to start testing.
3. Status of the individual test will be shown in Results column as Started, Success or Failed.
4. Logs will be printed in left textarea panel, with latest logs at the top.
5. SN field is saved as empty value.
6. Printer details like IP address and Port is getting saved in the database.
7. Test for a product are getting saved in a separate table Called Tests.
8. A folder named Logs needs to be created inside wwwroot folder.

### Backup and Restore MySQL Database
Backup script
mysqldump -u root -p products > C:\MySql\backup\prouctd-3jan.sql

Restore Command

mysql> drop database products;
mysql> create database products;

mysql -u root -p products < C:\MySql\backup\prouctd-3jan.sql


### Sql Commands

## Insert Commands

INSERT INTO Devices (ProductName, PN, Available, LabelType) VALUES ('Product1', '50001', 1, 1);
INSERT INTO Devices (ProductName, PN, Available, LabelType) VALUES ('Product2', '50002', 1, 2);
INSERT INTO Devices (ProductName, PN, Available, LabelType) VALUES ('Product3', '50003', 1, 3);
INSERT INTO Devices (ProductName, PN, Available, LabelType) VALUES ('Product4', '50004', 1, 4);

INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 1', 5);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 2', 5);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 3', 5);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 4', 5);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 5', 5);

INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 1', 6);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 2', 6);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 3', 6);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 4', 6);

INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 1', 7);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 2', 7);

INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 1', 8);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 2', 8);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 3', 8);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 4', 8);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 5', 8);
INSERT INTO Tests (TestName, ProductId) VALUES ('Test Name 6', 8);

INSERT INTO Labels (LabelType, Data) VALUES ('Label1', 'Long data1');
INSERT INTO Labels (LabelType, Data) VALUES ('Label2', 'Long data2');
INSERT INTO Labels (LabelType, Data) VALUES ('Label3', 'Long data3');
INSERT INTO Labels (LabelType, Data) VALUES ('Label4', 'Long data4');

## Select Commands:

SELECT * FROM Devices
SELECT * FROM Tests
SELECT * FROM Labels

## Delete Commands:

DELETE FROM Devices WHERE Id = 1
DELETE FROM Tests WHERE Id = 1
DELETE FROM Labels WHERE Id = 1


