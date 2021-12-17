=======================================================================
Patch P012 "MAY-2021" for WinCC OA Version 3.17                May 2021
=======================================================================


Summary:
========

 Enhancements and bugfixes for WinCC OA.


Prerequisites:
==============

 Besides the prerequisites of the final version of WinCC OA 3.17, no additional
 prerequisites are necessary.

 If WinCC OA 3.17 is already installed, a reinstall is automatically done.
 During the reinstallation the files of the existing WinCC OA 3.17 installation
 will be deleted.

 If WinCC OA 3.17 is not already installed it is not necessary to install the
 final version beforehand.
  
 
General installation notes:
===========================

 To install a patch properly complete following steps:

 - Download the required RPM (.rpm) files.
 - Copy the .rpm files to the plant.
 - Stop the project properly.

 - Within a terminal login as user "root".
 - Change to the subdirectory containing the downloaded RPMs.
 - To install this updated version of WinCC OA 3.17 simply use the following
   command:
    SLES/OpenSuse: "zypper install *.rpm"
    RedHat/CentOS: "yum install *.rpm"

 - Perform additional installation steps if required and described
   in the ReadMe files.
 - Start the project or the specific processes.


Additional installation steps:
==============================

 If P010 was not installed before and RDB is used please run
 WinCC_OA_Home\data\RDBSetup\ora\win_upgrade 8.22 or
 unix_upgrade 8.22 to apply latest changes to the DBSchema.

 Before stopping the project and starting the patch installation, you
 have to ensure that all RDB buffer files (WinCC OA Project/db/buffer)
 are processed and data is written to the Oracle database.


 If P009 was not installed before and NGA is used:
 
 If NGA is used and the startup sequence of NGA was changed after
 installation of P007, please make sure the startup sequence is set
 so that NGA is started _before_ the EVENT manager.


 If P007 was not installed before and NGA is used:

 Note that there are still open issues with NGA redundancy
 (synchronisation after restart of a redundant node is possibly not working
 correctly and user interface for redundancy configuration is being
 reworked).


Enhancements and new features:
==============================

 86552: The OPC UA Server allows the mapping of an alert class to an
        OPC UA alarm severity.

        Further details can be found inside the WinCC OA
        documentation.

 86553: The OPC UA Server is able to log session connect/disconnect
        attempts and values written by clients on an internal DPE now.

        Further details can be found inside the WinCC OA
        documentation.

 86554: The OPC UA Server can use the information of the _pv_range
        config for a value range check of write requests now.

        Further details can be found inside the WinCC OA
        documentation.

 86555: The OPC UA Server supports methods now.

        For detailed information including documentation please take a
        look the CTRL Library opcuaSrv_Methods.ctl.

 86556: The OPC UA Server allows the mapping of user bits to a specific
        OPC UA status code.

        Further details can be found inside the WinCC OA
        documentation.

 113574: The Russian version of the documentation chapters "Getting
         Started", "System Management - Communication" and "System
         Management - Permissions" have been revised and updated.

 117506: There is a new config entry for the OPC UA driver which allows
         to write values containing the source/server timestamp:
         [opcua] timestampWriteMode

         Further details can be found inside the WinCC OA
         documentation.

 121393: The config entry "userByteCommandMode "for IEC61850 Client can
         be set now for each driver instance individually.

 121666: TLS-Gateway supports receiving and sending of texts via FG4
         type 55 telegram now.
         Therefore, the following elements were added to the internal
         TLS FG4 data point type:

         - "_TLS_FG4.Parameter.DefaultText"
         - "_TLS_FG4.Zustand.AnzeigeText"
         - "_TLS_FG4.Zustand.TextAnforderung"
         - "_TLS_FG4.UZ.Befehl.AnzeigeText"
         - "_TLS_FG4.UZ.Befehl.DefaultText"

         If the TLS-Gateway is used, the DP list
         "TLSGateway_DpTypes.dpl" must be imported again with the
         ASCII manager using the option "Automatically update existing
         DP types" in order to update the internal TLS data point
         type.

 118685: There is a new config entry available for NGA:

         [NextGenArch] useOriginalValue

         Further details can be found inside the WinCC OA
         documentation.

 118686: A new boolean DPE _DataManager.UseNextGenArch has been added
         which allows to detect from a remote system if NGA is used.

         Further details can be found inside the WinCC OA
         documentation.

 118687: alertGetPeriod() can now be used for direct-read with NGA.

         Further details can be found inside the WinCC OA
         documentation.

 121389: Improvements of NGA configuration panels.

 121633: There is a new method for a ComboBox shape to disable/enable
         an item in the drop list.

         Further details can be found inside the WinCC OA
         documentation.


Solved problems:
================

 118772: Due to security vulnerabilities an upgrade to OpenSSL 1.1.1k
         is necessary.

 118960/1-6231079748: Encrypted and licensed panels and scripts are not
         working. A license error is shown when used with CodeMeter
         licensing and CustomKeywords.

 120456: The SIMATIC Industrial OS installation packages use invalid
         characters in their package name.

         The package names start now with "winccoa-3.17" instead of
         "wincc_oa_3.17". This is important for various package tasks
         like removal or update.

         This once please remove an existing installation before
         installing the new version to prevent any conflict with the
         packages with the previous name.

 119224: For SIMATIC Industrial OS installation the dependency to zip-
         and unzip-package is missing.

 120167/1-6254320121: There are enhancements of the "useColor"
         parameter for the function printTable().

         Further details can be found inside the WinCC OA
         documentation.

 118784: The CurvesScaled event is not triggered when a new curve is
         added via script.

 121028: The autoscale function for a trend does not work correct all
         the time.

 111692/1-6101063499: Button function is lost when using
         ulcClientSideWidget() in embedded moduls in ULC UX.

 118633: The cursor is not present in a text field in ULC UX when
         titleBar(false) is used.

 118774/1-6200245351: SBO control models for IEC 61850 command objects
         does not get response from device when "Select" command is
         triggered.

 121324/1-6267619203: TLS-Gateway does not detect when the connection
         has been interrupted and a restart is required to reestablish
         the connection.

 119014/1-6242758390: In the Video OA AddOn the playback slider cannot
         be scrolled using the mouse wheel for changing the time on
         the playback timeline.

 120495: In the Video OA AddOn the PTZ configuration of analog cameras
         shows wrong encoder information depending on PTZ transparent
         or PTZ internal configuration.

 120347: DataMan crashes after a FileSwitch is triggered when using
         Linux operating system.

 121688: Not correct configured alert classes can cause a crash of the
         DATA manager at startup when initializing alert class cache.

 120916: Using "continue" inside a "switch/case" within a "while-loop"
         causes a syntax error.

 115786: NGA does not show the correct Backends/Groups status.

 118525: NGA backends are not displayed correct in the SystemOverview
         panel.

 119950: Log message "... no data to be backed up" is written for
         backup of segments in a NGA project every hour.

 120367: There is a wrong response (always '-1') from
         deleteSegmentById() when using 'disableBackupOnDeletion' flag
         in an NGA project.

 120368: When using NGA the deletion of 'outdated' segments is not
         working properly when no 'current' segment is available.

 112913/1-6150728411: It is not possible to insert a new correction
         value into the corresponding Correction Value panel.

 120263/1-6256721601: The function reduActive() returns the wrong host
         information if the connection to server 1 is lost in a
         redundant system.

 117439: The data in a CSV export of a VarTrend is not complete if a
         trend has several curves and the displayed time range covers
         the time span for the summer-/winter-time switch.

 120640: The data from a VarTrend in the CSV export is not complete if
         the DP elements are saved with various times.

 118684/1-6234968111: Overriding protected callbacks does not work and
         when using "this"-operator in protected methods some
         exceptions are thrown in the log viewer.

 119115/1-6244340721: The ScriptEditor/GEDI is crashing if a lot of
         functions are used and then "auto-fill" is performed (TAB).

 119616: The file dbase.touch is not removed by WCCOAtoolCreateDb.

 119100: Panels which are larger than GEDI's panel area are moved when
         selected in the panel area.

 120543: MouseOver events for shapes inside a splitter are generated at
         each mouse move.

 116932: Importing alert archives fails, if a redundant project is only
         running on host 2.


-----------------------------------------------------------------------

  E T M professional control GmbH
  A Siemens Company               | Phone: +43 2682 741 0
  Marktstraße 3                   | Fax:   +43 2682 741 52555
  A-7000 Eisenstadt,Austria       | http://www.etm.at
