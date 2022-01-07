***********************************************************
   SIMATIC WinCC Open Architecture 3.17 Linux Dezember 2019
***********************************************************

=============================================================================
Hinweis:
Für eine einfachere Navigation innerhalb der WinCC OA Readme Datei stehen entsprechende Schlüsselwörter für jedes Kapitel zur Verfügung. Diese können mittels Dokumentsuche direkt angesteuert werden, z.B. Strg + F > 2WCCOAD01 für das Kapitel der unterstützten Betriebssysteme.
=============================================================================

Inhaltsverzeichnis

[1WCCOAD00]  I. Installation
[1WCCOAD01]  - DVD Installation
[1WCCOAD02]  - WinCC OA starten
[1WCCOAD03]  - Kompatibilität zu älteren Versionen

[2WCCOAD00]  II. System Voraussetzungen
[2WCCOAD01]  - Unterstützte Betriebssysteme
[2WCCOAD02]  - Freier Festplattenplatz
[2WCCOAD03]  - JPG Unterstützung
[2WCCOAD04]  - EPEL - Extra Packages for Enterprise Linux

[2WCCOAD00]  III. Relationale Datenbank
[3WCCOAD01]  - Unterstützte Oracle Versionen
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

  > Installieren Sie WinCC OA. Führen Sie das folgende Kommando aus:
  
       SUSE Enterprise: "zypper install *.rpm"
     oder
       RedHat/CentOS: "yum install *.rpm"

   Diese Option installiert alle erforderlichen Pakete. Alternativ können auch einzelne Pakete installiert werden:

     SUSE Enterprise: "zypper install <WinCC_OA_RpmPackageName>.rpm", e.g. "zypper install WinCC_OA_3.17-base-sles-0-0.x86_64.rpm"
 
      RedHat/CentOS: "yum install <RpmPackageName>.rpm", e.g. "yum install WinCC_OA_3.17-base-rhel-0-0.x86_64.rpm"
   
   
   Folgende RPM-Pakete stehen unter Linux zur Verfügung
   
    WinCC_OA_3.17-base-<distribution>-0-0.x86_64.rpm 
     - enthält die Basisinstallation sowie weitere Features
    WinCC_OA_3.17-api-<distribution>-0-0.x86_64.rpm 
     - enthält die API
    WinCC_OA_3.17-applications-<distribution>-0-0.x86_64.rpm 
     - enthält die Beispielprojekte DemoApplication und GettingStarted
    WinCC_OA_3.17-help-de-<distribution>-0-0.x86_64.rpm 
     - enthält die deutsche Dokumentation. 
    WinCC_OA_3.17-help-en-<distribution>-0-0.x86_64.rpm
     - enthält die englische Dokumentation. 
    WinCC_OA_3.17-help-ru-<distribution>-0-0.x86_64.rpm
      - enthält die russische Dokumentation. 
    WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm 
     - enthält Oracle Libraries, die benötigt werden, um die Oracle OCCI Funktionen (Bulkoperationen) verwenden zu können sowie um das Reporting-Feature gemeinsam mit RDB-Archivierung zu verwenden.
    WinCC_OA_3.17-s7plus-<distribution>-0-0.x86_64.rpm
     - enthält den S7 Plus Treiber
    WinCC_OA_3.17-specialfunctions-<distribution>-0-0.x86_64.rpm 
     - enthält die Vorversionsunterstützung
    WinCC_OA_3.17-sqldrivers-<distribution>-0-0.x86_64.rpm 
     - enthält Plug-Ins, die WinCC OA benötigt, um mit den Datenbanken mySQL, Oracle, usw. über CTRL-Ado zu kommunizieren.
    WinCC_OA_3.17-video-<distribution>-0-0.x86_64.rpm 
     - enthält das Video-AddOn.

[1WCCOAD02]  
.) WinCC OA starten

  Zum Start von WinCC OA finden sie Einträge unter
  Startmenü -> WinCC OA 3.17

[1WCCOAD03]
.) Kompatibilität zu älteren WinCC OA Versionen

  Bestehende API-Manager, -Treiber, API-Ctrl-Extensions und eigene EWOs müssen
  rekompiliert werden.


=============================================================================
[2WCCOAD00]
II. System-Voraussetzungen:

[2WCCOAD01]
.) Unterstützte Betriebssysteme

  RedHat Enterprise Linux 8         (64bit)
  CentOS 8                          (64bit)
  SUSE Linux Enterprise Server 15   (64bit)

[2WCCOAD02]  
.) Freier Festplattenplatz

  Auf der Festplatte müssen bei aktiviertem Emergency-Modus nach der
  Installation mindestens 100MB frei sein, sonst ist kein korrekter
  Projektstart möglich. Bitte beachten Sie auch, dass ausreichend Speicherplatz für 
  die Projektverzeichnisse vorhanden ist!
  Siehe auch WinCC OA Dokumentation zum Emergency-Mode.
  
[2WCCOAD03]  
.) JPG Unterstützung

  Für die Anzeige von JPG Bildern innerhalb ihres WinCC OA Projektes ist die Installation der
  entsprechenden Bibliothek (libjpeg62) erforderlich.

[2WCCOAD04]
.) EPEL - Extra Packages for Enterprise Linux

  Bei Verwendung des S7Plus Treibers ist für CentOS / RedHat das Repository "Extra Packages for Enterprise Linux" für den erfolgreichen Abschluss der Installation erforderlich. 
  Das Repository kann mittels folgender Aufrufe hinzugefügt werden:

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
.) Unterstützte Oracle Versionen

   Folgende Oracle Versionen werden durch WinCC OA unterstützt:

  - Oracle Client 12.2.0.1 und 12.2.0.2
  - Oracle Server: 19c Standard und Enterprise Editionen
  
[3WCCOAD02]
.) RDB_config.sql

  Die Datei RDB_config.sql wurde in RDB_config_template.sql umbenannt, damit die bestehende
  RDB_config.sql durch ein Update nicht überschrieben wird. Bei einem Update kontrollieren Sie bitte,
  ob in der RDB_config_template.sql neue Parameter hinzugekommen sind, bestehende sich geändert haben
  oder gelöscht wurden und passen Sie die RDB_config.sql entsprechend an.

  Im Falle einer erstmaligen RDB-Installation, kopieren Sie die Inhalte der RDB_config_template.sql 
  in Ihre RDB_config.sql und passen Sie anschließend die RDB_config.sql an. 
  Weitere Informationen hierzu finden Sie in der WinCC OA Dokumentation!

[3WCCOAD03]
.) RDB Update
  
  Eine bestehende RDB muss mit jeder neuen WinCC OA Version aktualisiert werden. Welche
  Oracle-Schema-Version zurzeit verwendet wird, wird im WinCC OA Log Viewer beim Start des RDB Managers
  angezeigt.

  Mit den folgenden Befehlen wird das DB-Schema auf die zurzeit aktuelle Schema-Version 8.22 aktualisiert
  (bevor Sie diesen Befehl ausführen, passen Sie bitte Ihre RDB_config.sql an):

  cd <wincc_oa_path>\data\RDBSetup\ora
  unix_upgrade 8.22

[3WCCOAD04]
.) Neuinstallation
  
  Bei einer Neuinstallation führen Sie bitte folgenden Befehl aus, nachdem Sie Ihre RDB_config.sql
  angepasst haben:

  cd <wincc_oa_path>\data\RDBSetup\ora
  unix_install

[3WCCOAD05]  
.) RPM-Pakete

  Für die Verbindung des RDB Managers mit einer Oracle 12 Datenbank stehen folgende RPM Pakete zur Verfügung:

  WinCC_OA_3.17-rdb-oracle-libs12-<distribution>-0-0.x86_64.rpm 
 
[3WCCOAD06] 
.) Umgebungsvariablen

  Die Umgebungsvariablen müssen entsprechend Ihrer Oracle und WinCC OA
  Installation gesetzt werden. Weitere Details finden Sie in der WinCC OA
  Dokumentation unter: System Management > Datenbank > RDB-Archivierung >
  Voraussetzung und Installation > Voraussetzungen für Installation  


=============================================================================  
[4WCCOAD00]  
IV. Securityhinweise

Siemens bietet Produkte und Lösungen mit Industrial Security-Funktionen an, die den sicheren Betrieb von Anlagen, Lösungen, Maschinen, Geräten und/oder Netzwerken unterstützen. Sie sind wichtige Komponenten in einem ganzheitlichen Industrial Security-Konzept. Die Produkte und Lösungen von Siemens werden unter diesem Gesichtspunkt ständig weiterentwickelt. Siemens empfiehlt, sich unbedingt regelmäßig über Produkt-Updates zu informieren.

Für den sicheren Betrieb von Produkten und Lösungen von Siemens ist es erforderlich, geeignete Schutzmaßnahmen (z. B. Zellenschutzkonzept) zu ergreifen und jede Komponente in ein ganzheitliches Industrial Security-Konzept zu integrieren, das dem aktuellen Stand der Technik entspricht. Dabei sind auch eingesetzte Produkte von anderen Herstellern zu berücksichtigen. Weitergehende Informationen über Industrial Security finden Sie unter http://www.siemens.com/industrialsecurity bzw. unter https://portal.etm.at/index.php?option=com_phocadownload&view=category&id=52:security&Itemid=81.

Um stets über Produkt-Updates informiert zu sein, melden Sie sich für unseren produktspezifischen Newsletter an. Weitere Informationen hierzu finden Sie unter http://support.automation.siemens.com bzw. http://portal.etm.at

=============================================================================
[5WCCOAD00]  
V. Weitere Informationen

[5WCCOAD01]
.) Dokumentation

Weiterführende Informationen zu den einzelnen Funktionen entnehmen Sie bitte der Dokumentation welche Teil Ihrer WinCC OA 3.17 Installation ist. 
Beachten Sie besonders das Kapitel "Features und Release Notes".

=============================================================================
=============================================================================

  E T M  professional control GmbH | Phone: +43 2682 741 0
  A Siemens Company                | Fax:   +43 2682 741 52555
  Marktstr. 3                      |
  A-7000 Eisenstadt, Austria       | http://www.etm.at