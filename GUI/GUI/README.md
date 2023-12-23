
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

