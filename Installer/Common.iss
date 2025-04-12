[Setup]
PrivilegesRequired=poweruser
AppID={{B9B6C409-01CB-4AB6-8E4F-403B49A25B56}
OutputDir=.\Out
SourceDir=.
AppCopyright=© 2025
WizardImageFile=.\Images\SetupModern20.bmp
WizardSmallImageFile=.\Images\SetupModernSmall20.bmp
SetupIconFile=.\Images\Setup.ico
UsePreviousAppDir=yes
AllowNoIcons=yes
Compression=lzma/ultra
SolidCompression=yes
LicenseFile=Common\License.txt
VersionInfoVersion = {#AppVersion}
AppName = {#MyAppName}
DefaultDirName = {commonpf}\{#MyAppName}\
DefaultGroupName = {#MyAppName}
AppVerName = {#MyAppName + " v. " + ShortVersion}
UninstallDisplayIcon = {app}\{#AppExeName}
AppPublisherURL = {#AppURL + MyAppName + '/'}
AppSupportURL = {#AppURL + MyAppName + '/'}
AppUpdatesURL = {#AppURL + MyAppName + '/'}

[Dirs]
Name: "{userappdata}\{#MyAppName}"; Permissions: everyone-modify

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; IconFilename: {app}\{#AppExeName}; IconIndex: 0; Comment: {#MyAppName}
Name: {group}\Довідка {#MyAppName}; Filename: {app}\{#MyAppName}.chm; WorkingDir: {app}; IconFilename: {sys}\ieframe.dll; IconIndex: 36; Comment: {#MyAppName} Help
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#AppExeName}; WorkingDir: {app}; IconFilename: {app}\{#AppExeName}; IconIndex: 0; Comment: {#MyAppName}; Tasks: desktopicon
Name: {group}\{#MyAppName} website; Filename: {app}\{#MyAppName}.url; IconFilename: {sys}\ieframe.dll; IconIndex: 36
Name: {group}\{cm:UninstallProgram, My Home Library}; Filename: {uninstallexe}
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#AppExeName}"; Tasks: quicklaunchicon

[UninstallDelete]
Name: {userappdata}\{#MyAppName}\Data; Type: filesandordirs
Name: {userappdata}\{#MyAppName}\Presets; Type: filesandordirs
Name: {userappdata}\{#MyAppName}\*.*; Type: files
Name: {userappdata}\{#MyAppName}; Type: dirifempty
Name: {app}; Type: files

[Run]
Filename: {app}\{#AppExeName}; WorkingDir: {app}; Description: {cm:LaunchProgram,{#MyAppName}}; Flags: nowait postinstall skipifsilent; Check: ; Tasks: 

[Files]
Source: Common\genres_fb2.glst; DestDir: {app}; Flags: replacesameversion
Source: Common\collections.ini; DestDir: {userappdata}\MyHomeLib
Source: Common\MyHomeLib.chm; DestDir: {app}; Flags: replacesameversion
Source: Common\MyHomeLib.url; DestDir: {app}; Flags: replacesameversion
Source: Common\License.txt; DestDir: {app}; Flags: replacesameversion

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"; Flags: unchecked

[Languages]
Name: English; MessagesFile: compiler:Default.isl