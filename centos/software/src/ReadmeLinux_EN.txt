***********************************************************
   SIMATIC WinCC Open Architecture 3.17 Linux December 2019
***********************************************************

=============================================================================
Note:
For an easier navigation inside the WinCC OA readme file each chapter is assigned with an corresponding keyword. These keywords can be used for the document search, e.g. Ctrl + F > 2WCCOAE01 for the chapter of the supported operating systems. 
=============================================================================

Table of Content

[1WCCOAE00]    I. Installation
[1WCCOAE01]    - DVD Installation
[1WCCOAE02]    - Start WinCC OA
[1WCCOAE03]    - Compatibility to Older Versions

[2WCCOAE00]    II. System Requirements
[2WCCOAE01]    - Supported Operating Systems
[2WCCOAE02]    - Free Space on Hard Disc
[2WCCOAE03]    - JPG Support
[2WCCOAE04]    - EPEL - Extra Packages for Enterprise Linux

[3WCCOAE00]    III. Relational Database
[3WCCOAE01]    - Supported Oracle Versions
[3WCCOAE02]    - RDB_config.sql
[3WCCOAE03]    - RDB Update
[3WCCOAE04]    - New Installation
[3WCCOAE05]    - RPM Packages
[3WCCOAE06]    - Enviornmental Variables

[4WCCOAE00]    IV. Security Information

[5WCCOAE00]    V. Further Information
[5WCCOAE01]    - Documentation
=============================================================================
=============================================================================

[1WCCOAE00]
I. Installation

[1WCCOAE01]
.) Installation

  WinCC OA version 3.17 can be installed as follows:

  > Insert the WinCC OA DVD in the drive
  > Mount the CD-ROM drive (for example): 
    
    "mount -t iso9660 /dev/cdrom /cdrom"
	
  > Verify the signature of the rpm packages: import the public.key. To import the public key, use the command rpm --import [path to the public key]. 
    If the public key is not imported, the following message is shown in the shell: 
WinCC_OA_3.17-base-<distribution>-0-3.x86_64(Plain RPM files cache): Signature verification failed [4-Signatures public key is not available]
  
  > Switch to the DVD directory /cdrom and then to the linux_rhel_x86_64 or linux_sles_x86_64 directory depending on the Linux distribution that is used.
  
  > Install WinCC OA by executing the following command:
  
    SUSE Enterprise: "zypper install *.rpm"
    RedHat/CentOS: "yum install *.rpm"
 
  This operation installs all necessary packages. Alternatively you can install individual packages as follows:

    SUSE Enterprise: "zypper install <WinCC_OA_RpmPackageName>.rpm", e.g. "zypper install WinCC_OA_3.17-base-sles-0-0.x86_64.rpm"
    RedHat/CentOS: "yum install <RpmPackageName>.rpm", e.g. "yum install WinCC_OA_3.17-base-rhel-0-0.x86_64.rpm"
  
Following RPM packages are available for WinCC OA:

    WinCC_OA_3.17-base-<distribution>-0-0.x86_64.rpm
      - contains the base installation as well as other features
    WinCC_OA_3.17-api-<distribution>-0-0.x86_64.rpm  
      - contains the WinCC OA API
    WinCC_OA_3.17-applications-<distribution>-0-0.x86_64.rpm
      - contains the example projects DemoApplication and GettingStarted
    WinCC_OA_3.17-help-en-<distribution>-0-0.x86_64.rpm
      - contains the English Documentation.
    WinCC_OA_3.17-help-de-<distribution>-0-0.x86_64.rpm
      - contains the German Documentation.
    WinCC_OA_3.17-help-ru-<distribution>-0-0.x86_64.rpm
      - contains the Russian Documentation.
    WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm
      - contains the Oracle Libraries required for the use of the Oracle OCCI Functions (Bulk operations) as well as to use the Reporting feature together with the RDB archiving.
    WinCC_OA_3.17-s7plus-<distribution>-0-0.x86_64.rpm
      - contains the S7 Plus driver
    WinCC_OA_3.17-specialfunctions-<distribution>-0-0.x86_64.rpm 
      - contains the Old Version Support
    WinCC_OA_3.17-sqldrivers-<distribution>-0-0.x86_64.rpm
      - contains the Plug-Ins required by WinCC OA to communicate with databases such as mySQL, Oracle, etc via CTRL-Ado.
    WinCC_OA_3.17-video-<distribution>-0-0.x86_64.rpm
      - contains the Video-AddOn

[1WCCOAE02]
.) Start WinCC OA

  To start WinCC OA you find entries below
  Start menu -> WinCC OA 3.17

[1WCCOAE03]  
.) Compatibility to Older Versions

  Existing API Managers, Drivers, API Ctrl extensions and own EWOs must be
  recompiled.
=============================================================================
[2WCCOAE00]
II. System Requirements:

  RedHat Enterprise Linux 8         (64bit)
  CentOS 8                          (64bit)
  SUSE Linux Enterprise Server 15   (64bit)

.) Free Space on Hard Disk

  In case the Emergency Mode is activated in your project,
  you need at least 100MB free disk space after the installation.
  If not enough free disk space is available a proper project
  start is not possible. Make sure that there is also enough space for your project folders.
  See also the WinCC OA Documentation for the use of the Emergency Mode

[2WCCOAE03]  
.) JPG Support

  For displaying JPG images inside your WinCC OA Project the installation of the 
  corresponding library (libjpeg62) is required.

[2WCCOAE04]
.) EPEL - Extra Packages for Enterprise Linux

  For using the S7Plus driver on CentOS / RedHat the repository "Extra Packages for Enterprise Linux" is required for a successfull installation. 
  The repository can be added by using following commands:

  CentOS:

    yum install epel-release -y

  RedHat Enterprise Linux:

    yum-config-manager --enable rhel-7-server-extras-rpms
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    rpm -i epel-release-latest-7.noarch.rpm
  
=============================================================================
[3WCCOAE00]  
III. Relational Database

[3WCCOAE01]
.) Supported Oracle Versions

  Following Oracle versions are supported by WinCC OA:

  - Oracle Client 12.2.0.1 and 12.2.0.2
  - Oracle Server: 19c Standard and Enterprise Editions
  

[3WCCOAE02]
.) RDB_config.sql

  The file RDB_config.sql has been renamed to RDB_config_template.sql,
  so that the existing RDB_config.sql will not be overwritten during an update.
  In case of an update, please check whether new parameters have been added or
  existing have been changed or deleted in/from the RDB_config_template.sql
  and adjust the RDB_config.sql accordingly.

  In case of an initial RDB installation, copy the contents of the RDB_config_template.sql 
  to the RDB_config.sql and adjust your RDB_config.sql to your projects needs. 
  More information can be found inside the WinCC OA Documentation.

[3WCCOAE03]
.) RDB Update

  An existing RDB has to be updated with every new WinCC OA version.
  Which Oracle schema version is currently used, is shown in the WinCC OA log viewer
  during startup of the RDB manager.

  Execute the following commands to update the Oracle schema to the
  current schema version 8.22 (please adjust your RDB_config.sql before
  executing this command).

  cd data\RDBSetup\ora
  unix_upgrade 8.22

[3WCCOAE04]
.) New Installation
  
  In case of an initial installation, please execute the following command
  after the adjustments in the RDB_config.sql have been made:

  cd data\RDBSetup\ora
  unix_install

[3WCCOAE05]
.) RPM Packages

  For connecting the RDB manager with an Oracle 12 database, we provide the following RPM packages:

  WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm
  
[3WCCOAE06]
.) Environmental Variables

  The environmental variables must be set according to your Oracle and
  WinCC OA Installation. Further details can be found inside the WinCC OA
  Documentation under: System Management > Database > RDB Archiving >
  Requirements and Installation > Requirements for Installation
  
  
=============================================================================
[4WCCOAE00]  
IV. Security Information

Siemens provides products and solutions with industrial security functions that support the secure operation of plants, solutions, machines, equipment and/or networks. They are important components in a holistic industrial security concept.  With this in mind, Siemens’ products and solutions undergo continuous development. Siemens recommends strongly that you regularly check for product updates.

For the secure operation of Siemens products and solutions, it is necessary to take suitable preventive action (e.g. cell protection concept) and integrate each component into a holistic, state-of-the-art industrial security concept.  Third-party products that may be in use should also be considered.  For more information about industrial security, visit http://www.siemens.com/industrialsecurity and https://portal.etm.at/index.php?option=com_phocadownload&view=category&id=52:security&Itemid=81.

To stay informed about product updates as they occur, sign up for a product-specific newsletter.  For more information, visit http://support.automation.siemens.com and https://portal.etm.at. 


=============================================================================
[5WCCOAE00]
V. Further Information

[5WCCOAE01]
.) Documentation

For additional information regarding the various functions take a look at the Documentation which is part of your WinCC OA 3.17 installation. 
Note especially the Highlights and Release Notes of the version 3.17.


=======================================================================

  E T M  professional control GmbH | Phone: +43 2682 741 0
  A Siemens Company                | Fax:   +43 2682 741 52555
  Marktstr. 3                      |
  A-7000 Eisenstadt, Austria       | http://www.etm.at