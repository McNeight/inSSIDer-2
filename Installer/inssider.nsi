; Script generated by the HM NIS Edit Script Wizard.
!define BUILD "Debug"
;!define BUILD "Release"
; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "inSSIDer2"
!define PRODUCT_VERSION "2020.4.8.0"
!define FILE_VERSION "2020.4.8.0"
!define PRODUCT_PUBLISHER "coolshou"
!define PRODUCT_WEB_SITE "https://github.com/coolshou/inssider-2"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\inSSIDer.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor /SOLID lzma
Unicode True
; x64
!include "x64.nsh"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\MetaScanner\app-inssider.ico"
!define MUI_UNICON "..\MetaScanner\app-inssider.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
;!insertmacro MUI_PAGE_LICENSE "DefaultWizardLicFile"
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\inSSIDer.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "${PRODUCT_NAME}_${PRODUCT_VERSION}-setup.exe"
InstallDir "$PROGRAMFILES\inSSIDer"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

BrandingText "${PRODUCT_PUBLISHER}"
;version info
VIProductVersion "${PRODUCT_VERSION}"
VIFileVersion "${FILE_VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "${PRODUCT_VERSION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "${PRODUCT_DESCRIPTION}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "${PRODUCT_PUBLISHER}"
;VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "${PRODUCT_NAME} is a trademark of ${PRODUCT_PUBLISHER}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "Copyright c ${PRODUCT_PUBLISHER}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "${PRODUCT_NAME}"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "${FILE_VERSION}"

Function .onInit
  # check x86/x64
  ${If} ${RunningX64}
        ;x64
        SetRegView 64
        StrCpy $INSTDIR "$PROGRAMFILES64\${PRODUCT_NAME}"
  ${Else}
        ;x86
        SetRegView 32
        StrCpy $INSTDIR "$PROGRAMFILES\${PRODUCT_NAME}"
  ${EndIf}
FunctionEnd

Section "Main" SEC01
  SetOverwrite ifnewer
  SetOverwrite try
  SetOutPath "$INSTDIR\HTML\Content"
  File "..\MetaScanner\HTML\Content\news.css"
  File "..\MetaScanner\HTML\Content\news.html"

  SetOutPath "$INSTDIR"
  File "..\MetaGeek.WiFi\oui.txt"
  
  ${If} ${RunningX64}
  File "..\MetaScanner\bin\x64\${BUILD}\FilterFramework.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\inSSIDer.exe"
  File "..\MetaScanner\bin\x64\${BUILD}\inSSIDer.exe.config"
  File "..\MetaScanner\bin\x64\Debug\inSSIDer.pdb"
  File "..\MetaScanner\bin\x64\${BUILD}\log4net.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\ManagedWifi.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\ManagedWifi.pdb"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.Diagnostics.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.Filters.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.Gps.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.Gps.pdb"
  File "..\MetaScanner\bin\x64\${BUILD}\Metageek.IoctlNdis.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\Metageek.IoctlNdis.pdb"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.WiFi.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\MetaGeek.WiFi.pdb"
  File "..\MetaScanner\bin\x64\${BUILD}\Ninject.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\nunit.framework.dll"
  File "..\MetaScanner\bin\x64\${BUILD}\PopupControl.dll"
  ${Else}
  File "..\MetaScanner\bin\x86\${BUILD}\FilterFramework.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\inSSIDer.exe"
  File "..\MetaScanner\bin\x86\${BUILD}\inSSIDer.exe.config"
  File "..\MetaScanner\bin\x86\${BUILD}\inSSIDer.pdb"
  File "..\MetaScanner\bin\x86\${BUILD}\log4net.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\ManagedWifi.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\ManagedWifi.pdb"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.Diagnostics.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.Filters.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.Gps.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.Gps.pdb"
  File "..\MetaScanner\bin\x86\${BUILD}\Metageek.IoctlNdis.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\Metageek.IoctlNdis.pdb"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.WiFi.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\MetaGeek.WiFi.pdb"
  File "..\MetaScanner\bin\x86\${BUILD}\Ninject.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\nunit.framework.dll"
  File "..\MetaScanner\bin\x86\${BUILD}\PopupControl.dll"
  ${EndIf}
  CreateDirectory "$SMPROGRAMS\inSSIDer"
  CreateShortCut "$SMPROGRAMS\inSSIDer\inSSIDer.lnk" "$INSTDIR\inSSIDer.exe"
  CreateShortCut "$DESKTOP\inSSIDer.lnk" "$INSTDIR\inSSIDer.exe"

SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\inSSIDer\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\inSSIDer\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\inSSIDer.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\inSSIDer.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\PopupControl.dll"
  Delete "$INSTDIR\oui.txt"
  Delete "$INSTDIR\nunit.framework.dll"
  Delete "$INSTDIR\Ninject.dll"
  Delete "$INSTDIR\MetaGeek.WiFi.pdb"
  Delete "$INSTDIR\MetaGeek.WiFi.dll"
  Delete "$INSTDIR\Metageek.IoctlNdis.pdb"
  Delete "$INSTDIR\Metageek.IoctlNdis.dll"
  Delete "$INSTDIR\MetaGeek.Gps.pdb"
  Delete "$INSTDIR\MetaGeek.Gps.dll"
  Delete "$INSTDIR\MetaGeek.Filters.dll"
  Delete "$INSTDIR\MetaGeek.Diagnostics.dll"
  Delete "$INSTDIR\ManagedWifi.pdb"
  Delete "$INSTDIR\ManagedWifi.dll"
  Delete "$INSTDIR\log4net.dll"
  Delete "$INSTDIR\inSSIDer.pdb"
  Delete "$INSTDIR\inSSIDer.exe.config"
  Delete "$INSTDIR\inSSIDer.exe"
  Delete "$INSTDIR\FilterFramework.dll"
  Delete "$INSTDIR\HTML\Content\news.html"
  Delete "$INSTDIR\HTML\Content\news.css"

  Delete "$SMPROGRAMS\inSSIDer\Uninstall.lnk"
  Delete "$SMPROGRAMS\inSSIDer\Website.lnk"
  Delete "$DESKTOP\inSSIDer.lnk"
  Delete "$SMPROGRAMS\inSSIDer\inSSIDer.lnk"

  RMDir "$SMPROGRAMS\inSSIDer"
  RMDir "$INSTDIR\HTML\Content"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd