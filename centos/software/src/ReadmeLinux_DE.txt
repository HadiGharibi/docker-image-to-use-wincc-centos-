***********************************************************
   SIMATIC WinCC Open Architecture 3.17 Linux Dezember 2019
***********************************************************

=============================================================================
Hinweis:
F�r eine einfachere Navigation innerhalb der WinCC OA Readme Datei stehen entsprechende Schl�sselw�rter f�r jedes Kapitel zur Verf�gung. Diese k�nnen mittels Dokumentsuche direkt angesteuert werden, z.B. Strg + F > 2WCCOAD01 f�r das Kapitel der unterst�tzten Betriebssysteme.
=============================================================================

Inhaltsverzeichnis

[1WCCOAD00]  I. Installation
[1WCCOAD01]  - DVD Installation
[1WCCOAD02]  - WinCC OA starten
[1WCCOAD03]  - Kompatibilit�t zu �lteren Versionen

[2WCCOAD00]  II. System Voraussetzungen
[2WCCOAD01]  - Unterst�tzte Betriebssysteme
[2WCCOAD02]  - Freier Festplattenplatz
[2WCCOAD03]  - JPG Unterst�tzung
[2WCCOAD04]  - EPEL - Extra Packages for Enterprise Linux

[2WCCOAD00]  III. Relationale Datenbank
[3WCCOAD01]  - Unterst�tzte Oracle Versionen
[3WCCOAD02]  - RDB_config.sql
[3WCCOAD03]  - RDB Update
[3WCCOAD04]  - Neuinstallation
[3WCCOAD05]  - RPM-Pakete
[3WCCOAD06]  - Umgebungsvariablen

[4WCCOAD00]  IV. Securityhinweise

[5WCCOAD00]  V. Weitere Informationen
[5WCCOAD01]  - Dokumentation


=============================================================================
=============================================================================

[1WCCOAD00]
I. Installation

[1WCCOAD01]
.) Installation
  WinCC OA Version 3.17 ist folgendermassen zu installieren:

  > Legen Sie die WinCC OA DVD ins Laufwerk ein.
  > Mounten Sie das DVD-Laufwerk, zum Beispiel:
     mount -t iso9660 /dev/cdrom /cdrom
	 
  > Verifizieren Sie die Signatur der RPM-Pakete: 
    Importieren Sie den Public Key. Um den Public Key zu importieren, verwenden Sie den Befehl rpm --import [public Key-Pfad]: 
    Wenn der Public Key nicht importiert wurde, wird die folgende Meldung in der Shell angezeigt: 
    WinCC_OA_3.17-base-sles-0-3.x86_64(Plain RPM files cache): Signature verification failed [4-Signatures public key is not available]

  > Wechseln Sie in das Verzeichnis /cdrom und dort in das Verzeichnis linux_rhel_x86_64 oder linux_sles_x86_64

  > Installieren Sie WinCC OA. F�hren Sie das folgende Kommando aus:
  
       SUSE Enterprise: "zypper install *.rpm"
     oder
       RedHat/CentOS: "yum install *.rpm"

   Diese Option installiert alle erforderlichen Pakete. Alternativ k�nnen auch einzelne Pakete installiert werden:

     SUSE Enterprise: "zypper install <WinCC_OA_RpmPackageName>.rpm", e.g. "zypper install WinCC_OA_3.17-base-sles-0-0.x86_64.rpm"
 
      RedHat/CentOS: "yum install <RpmPackageName>.rpm", e.g. "yum install WinCC_OA_3.17-base-rhel-0-0.x86_64.rpm"
   
   
   Folgende RPM-Pakete stehen unter Linux zur Verf�gung
   
    WinCC_OA_3.17-base-<distribution>-0-0.x86_64.rpm 
     - enth�lt die Basisinstallation sowie weitere Features
    WinCC_OA_3.17-api-<distribution>-0-0.x86_64.rpm 
     - enth�lt die API
    WinCC_OA_3.17-applications-<distribution>-0-0.x86_64.rpm 
     - enth�lt die Beispielprojekte DemoApplication und GettingStarted
    WinCC_OA_3.17-help-de-<distribution>-0-0.x86_64.rpm 
     - enth�lt die deutsche Dokumentation. 
    WinCC_OA_3.17-help-en-<distribution>-0-0.x86_64.rpm
     - enth�lt die englische Dokumentation. 
    WinCC_OA_3.17-help-ru-<distribution>-0-0.x86_64.rpm
      - enth�lt die russische Dokumentation. 
    WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm 
     - enth�lt Oracle Libraries, die ben�tigt werden, um die Oracle OCCI Funktionen (Bulkoperationen) verwenden zu k�nnen sowie um das Reporting-Feature gemeinsam mit RDB-Archivierung zu verwenden.
    WinCC_OA_3.17-s7plus-<distribution>-0-0.x86_64.rpm
     - enth�lt den S7 Plus Treiber
    WinCC_OA_3.17-specialfunctions-<distribution>-0-0.x86_64.rpm 
     - enth�lt die Vorversionsunterst�tzung
    WinCC_OA_3.17-sqldrivers-<distribution>-0-0.x86_64.rpm 
     - enth�lt Plug-Ins, die WinCC OA ben�tigt, um mit den Datenbanken mySQL, Oracle, usw. �ber CTRL-Ado zu kommunizieren.
    WinCC_OA_3.17-video-<distribution>-0-0.x86_64.rpm 
     - enth�lt das Video-AddOn.

[1WCCOAD02]  
.) WinCC OA starten

  Zum Start von WinCC OA finden sie Eintr�ge unter
  Startmen� -> WinCC OA 3.17

[1WCCOAD03]
.) Kompatibilit�t zu �lteren WinCC OA Versionen

  Bestehende API-Manager, -Treiber, API-Ctrl-Extensions und eigene EWOs m�ssen
  rekompiliert werden.


=============================================================================
[2WCCOAD00]
II. System-Voraussetzungen:

[2WCCOAD01]
.) Unterst�tzte Betriebssysteme

  RedHat Enterprise Linux 8         (64bit)
  CentOS 8                          (64bit)
  SUSE Linux Enterprise Server 15   (64bit)

[2WCCOAD02]  
.) Freier Festplattenplatz

  Auf der Festplatte m�ssen bei aktiviertem Emergency-Modus nach der
  Installation mindestens 100MB frei sein, sonst ist kein korrekter
  Projektstart m�glich. Bitte beachten Sie auch, dass ausreichend Speicherplatz f�r 
  die Projektverzeichnisse vorhanden ist!
  Siehe auch WinCC OA Dokumentation zum Emergency-Mode.
  
[2WCCOAD03]  
.) JPG Unterst�tzung

  F�r die Anzeige von JPG Bildern innerhalb ihres WinCC OA Projektes ist die Installation der
  entsprechenden Bibliothek (libjpeg62) erforderlich.

[2WCCOAD04]
.) EPEL - Extra Packages for Enterprise Linux

  Bei Verwendung des S7Plus Treibers ist f�r CentOS / RedHat das Repository "Extra Packages for Enterprise Linux" f�r den erfolgreichen Abschluss der Installation erforderlich. 
  Das Repository kann mittels folgender Aufrufe hinzugef�gt werden:

  CentOS:

    yum install epel-release -y

  RedHat Enterprise Linux:

    yum-config-manager --enable rhel-7-server-extras-rpms
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
    rpm -i epel-release-latest-7.noarch.rpm

  
=============================================================================  
[3WCCOAD00]
III. Relationale Datenbank

[3WCCOAD01]
.) Unterst�tzte Oracle Versionen

   Folgende Oracle Versionen werden durch WinCC OA unterst�tzt:

  - Oracle Client 12.2.0.1 und 12.2.0.2
  - Oracle Server: 19c Standard und Enterprise Editionen
  
[3WCCOAD02]
.) RDB_config.sql

  Die Datei RDB_config.sql wurde in RDB_config_template.sql umbenannt, damit die bestehende
  RDB_config.sql durch ein Update nicht �berschrieben wird. Bei einem Update kontrollieren Sie bitte,
  ob in der RDB_config_template.sql neue Parameter hinzugekommen sind, bestehende sich ge�ndert haben
  oder gel�scht wurden und passen Sie die RDB_config.sql entsprechend an.

  Im Falle einer erstmaligen RDB-Installation, kopieren Sie die Inhalte der RDB_config_template.sql 
  in Ihre RDB_config.sql und passen Sie anschlie�end die RDB_config.sql an. 
  Weitere Informationen hierzu finden Sie in der WinCC OA Dokumentation!

[3WCCOAD03]
.) RDB Update
  
  Eine bestehende RDB muss mit jeder neuen WinCC OA Version aktualisiert werden. Welche
  Oracle-Schema-Version zurzeit verwendet wird, wird im WinCC OA Log Viewer beim Start des RDB Managers
  angezeigt.

  Mit den folgenden Befehlen wird das DB-Schema auf die zurzeit aktuelle Schema-Version 8.22 aktualisiert
  (bevor Sie diesen Befehl ausf�hren, passen Sie bitte Ihre RDB_config.sql an):

  cd <wincc_oa_path>\data\RDBSetup\ora
  unix_upgrade 8.22

[3WCCOAD04]
.) Neuinstallation
  
  Bei einer Neuinstallation f�hren Sie bitte folgenden Befehl aus, nachdem Sie Ihre RDB_config.sql
  angepasst haben:

  cd <wincc_oa_path>\data\RDBSetup\ora
  unix_install

[3WCCOAD05]  
.) RPM-Pakete

  F�r die Verbindung des RDB Managers mit einer Oracle 12 Datenbank stehen folgende RPM Pakete zur Verf�gung:

  WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm 
 
[3WCCOAD06] 
.) Umgebungsvariablen

  Die Umgebungsvariablen m�ssen entsprechend Ihrer Oracle und WinCC OA
  Installation gesetzt werden. Weitere Details finden Sie in der WinCC OA
  Dokumentation unter: System Management > Datenbank > RDB-Archivierung >
  Voraussetzung und Installation > Voraussetzungen f�r Installation  


=============================================================================  
[4WCCOAD00]  
IV. Securityhinweise

Siemens bietet Produkte und L�sungen mit Industrial Security-Funktionen an, die den sicheren Betrieb von Anlagen, L�sungen, Maschinen, Ger�ten und/oder Netzwerken unterst�tzen. Sie sind wichtige Komponenten in einem ganzheitlichen Industrial Security-Konzept. Die Produkte und L�sungen von Siemens werden unter diesem Gesichtspunkt st�ndig weiterentwickelt. Siemens empfiehlt, sich unbedingt regelm��ig �ber Produkt-Updates zu informieren.

F�r den sicheren Betrieb von Produkten und L�sungen von Siemens ist es erforderlich, geeignete Schutzma�nahmen (z. B. Zellenschutzkonzept) zu ergreifen und jede Komponente in ein ganzheitliches Industrial Security-Konzept zu integrieren, das dem aktuellen Stand der Technik entspricht. Dabei sind auch eingesetzte Produkte von anderen Herstellern zu ber�cksichtigen. Weitergehende Informationen �ber Industrial Security finden Sie unter http://www.siemens.com/industrialsecurity bzw. unter https://portal.etm.at/index.php?option=com_phocadownload&view=category&id=52:security&Itemid=81.

Um stets �ber Produkt-Updates informiert zu sein, melden Sie sich f�r unseren produktspezifischen Newsletter an. Weitere Informationen hierzu finden Sie unter http://support.automation.siemens.com bzw. http://portal.etm.at

=============================================================================
[5WCCOAD00]  
V. Weitere Informationen

[5WCCOAD01]
.) Dokumentation

Weiterf�hrende Informationen zu den einzelnen Funktionen entnehmen Sie bitte der Dokumentation welche Teil Ihrer WinCC OA 3.17 Installation ist. 
Beachten Sie besonders das Kapitel "Features und Release Notes".

=============================================================================
=============================================================================

  E T M  professional control GmbH | Phone: +43 2682 741 0
  A Siemens Company                | Fax:   +43 2682 741 52555
  Marktstr. 3                      |
  A-7000 Eisenstadt, Austria       | http://www.etm.at