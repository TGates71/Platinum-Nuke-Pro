***************************************************************************************
READ THIS FULLY BEFORE DOING ANYTHING! IT WILL SAVE YOU A LOT OF PROBLEMS IN THE END!!!
***************************************************************************************


-THIS FILE CONTAINS THE MANUAL UPGRADE INFORMATION (Upgrading an existing site).


*** ALWAYS BACK UP YOUR SITE AND DATABASE!! ***


-Read this completely before doing your upgrade!


********************************************************

Upgrading from previous versions:
*********************************
	
-If you have default installations with no database changes, then the upgrade should go just fine.

-If you have made any changes to your database or added any modules that are in this package, you MIGHT get errors when installing the SQL. DON'T WORRY! You should first go through the upgrade SQL file you will be using and delete any tables you have already installed or updated.

THE BEST (and safest) WAY TO DO AN UPGRADE:
*******************************************

-Ok, here's the best way we have found for upgrades to be done, pretty much guarantees no problems when completed.

-We suggest closing your site if you get a lot of traffic so as not to lose any new posts etc. while you are doing this upgrade.
    (Forums Admin > General Admin > Configuration > Disable board: Yes > Submit)

1-Make a new database (nuke_PNP1 for example) and write down the database name and password.

2-Make a new sub-folder (http://yoursite.com/test/ for example).

3-Upload all the files in the public_html folder into the NEW folder.

4-Delete the 'install' folder BEFORE CONTINUING.

*NOTICE*: IF YOU ARE UPGRADING FROM 7.6.B4, 7.6.B5, OR 7.6.V501 YOU MUST MANUALLY IMPORT THE DATABASE CHANGES FOR EACH VERSION IN ORDER, FROM YOUR CURRENT VERSION UP TO THE CURRENT VERSION.

5-Install a fresh copy of your CURRENT database into the NEW database (nuke_PNP1)

6-Next import the upgrade SQLs through phpMyAdmin.

*NOTICE*: IF YOU ARE UPGRADING FROM ANY PREVIOUS VERSION YOU MUST MANUALLY IMPORT THE DATABASE CHANGES FOR >EACH< VERSION IN ORDER, UNTIL YOU GET TO THE CURRENT VERSION.

*NOTE*: Your user groups will be reset to default install! All users will also be reset to the default users group 'Guest'. You will need to re-create any groups you may previously have had set up and add your members to the new groups as needed. This is required due to the extensive repair/updating of the initial user groups in PNPro.

7-Login as an admin and RUN: 'http://yoursite.com/modules.php?name=Forums&file=UpgradeGroups' ONLY ONE TIME!! Then DELETE '/modules/Forums/UpgradeGroups.php' from the server!

8-If things went well you should see the 'Platinum Nuke Pro v1 Installed' block.

9-Click on: 'Required 1: Set the file & folder permissions', skip #2, If you already have IP-2-Country installed skip #3 also.

10-Go to  http://yoursite.com/[newfolder]/manual_install_cleanup.php (This will clean up the installer files which you no longer need).

11-Making sure you have backed up your original site's files and folders, copy everything from the test folder into your original site's root folder over-writing everything. 

-If you closed your site, re-open it: (Forums Admin > General Admin > Configuration > Disable board: No > Submit)
	
-Your upgrade is complete! After making sure everything is working good, you may want to delete your old database and store your old site files.

***************************************************************************************

-If you run into any other problems, please post them in the proper forums on http://platinumnukepro.com

Thank you, and enjoy!

-The PNPro Team