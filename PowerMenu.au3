#RequireAdmin
#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=powermenu.ico
#AutoIt3Wrapper_Res_Description=PowerMenu v2.1.1 - Portable Power Menu for Windows
#AutoIt3Wrapper_Res_Fileversion=2.1.1.0
#AutoIt3Wrapper_Res_ProductVersion=2.1.1.0
#AutoIt3Wrapper_Res_LegalCopyright=© 2025
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <StaticConstants.au3>
#include <MsgBoxConstants.au3>

Global $g_hGUI, $g_bConfirmEnabled = True
Global $g_aButtons[12]
Global Const $BUTTON_WIDTH = 280
Global Const $BUTTON_HEIGHT = 40
Global Const $BUTTON_SPACING = 5
Global Const $WINDOW_PADDING = 20

If @Compiled Then
    CheckSafeModeCleanup()
EndIf

If Not IsAdmin() Then
    MsgBox($MB_ICONERROR, "Power Menu", "This application requires administrator privileges to function properly." & @CRLF & "Please run as administrator.")
    Exit
EndIf

CreateGUI()

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $g_aButtons[0]
            ExecuteAction("shutdown", "shutdown /s /t 0")
        Case $g_aButtons[1]
            ExecuteAction("restart", "shutdown /r /t 0")
        Case $g_aButtons[2]
            ExecuteAction("sleep", "rundll32.exe powrprof.dll,SetSuspendState 0,1,0")
        Case $g_aButtons[3]
            ExecuteAction("lock", "rundll32.exe user32.dll,LockWorkStation")
        Case $g_aButtons[4]
            ExecuteAction("log off", "shutdown /l")
        Case $g_aButtons[5]
            ExecuteAction("hibernate", "shutdown /h")
        Case $g_aButtons[6]
            ExecuteAction("reboot to UEFI", "shutdown /r /fw /t 0")
        Case $g_aButtons[7]
            ExecuteAction("reboot to advanced recovery", "shutdown /r /o /t 0")
        Case $g_aButtons[8]
            ExecuteAction("force shutdown", "shutdown /s /f /t 0")
        Case $g_aButtons[9]
            ExecuteAction("force restart", "shutdown /r /f /t 0")
        Case $g_aButtons[10]
            RestartExplorer()
        Case $g_aButtons[11]
            ShowSafeModeDialog()
    EndSwitch
WEnd

GUIDelete()
Exit

Func CreateGUI()
    Local $iWindowHeight = ($BUTTON_HEIGHT + $BUTTON_SPACING) * 12 + $WINDOW_PADDING * 2 - $BUTTON_SPACING
    $g_hGUI = GUICreate("Power Menu", $BUTTON_WIDTH + $WINDOW_PADDING * 2, $iWindowHeight, -1, -1, BitOR($WS_CAPTION, $WS_SYSMENU))
    GUISetBkColor(0xF0F0F0, $g_hGUI)
    Local $aButtonTexts[12] = ["Shutdown", "Restart", "Sleep", "Lock", "Log Off", "Hibernate", _
                               "Reboot to UEFI Firmware Settings", "Reboot to Advanced Recovery Options", _
                               "Force Shutdown", "Force Restart", "Restart Explorer", "Reboot to Safe Mode"]
    For $i = 0 To 11
        Local $yPos = $WINDOW_PADDING + ($BUTTON_HEIGHT + $BUTTON_SPACING) * $i
        $g_aButtons[$i] = GUICtrlCreateButton($aButtonTexts[$i], $WINDOW_PADDING, $yPos, $BUTTON_WIDTH, $BUTTON_HEIGHT)
        GUICtrlSetFont($g_aButtons[$i], 9, 400, 0, "Segoe UI")
        GUICtrlSetBkColor($g_aButtons[$i], 0xFFFFFF)
        GUICtrlSetColor($g_aButtons[$i], 0x000000)
        GUICtrlSetStyle($g_aButtons[$i], $BS_FLAT)
    Next
    HotKeySet("^+c", "ToggleConfirmation")
    Local $aPos = WinGetPos("[ACTIVE]")
    If @error Then
        $aPos = [0, 0, @DesktopWidth, @DesktopHeight]
    EndIf
    Local $iCenterX = $aPos[0] + ($aPos[2] / 2) - (($BUTTON_WIDTH + $WINDOW_PADDING * 2) / 2)
    Local $iCenterY = $aPos[1] + ($aPos[3] / 2) - ($iWindowHeight / 2)
    WinMove($g_hGUI, "", $iCenterX, $iCenterY)
    GUISetState(@SW_SHOW, $g_hGUI)
EndFunc

Func ExecuteAction($sActionName, $sCommand)
    If $g_bConfirmEnabled Then
        WinActivate($g_hGUI)
        Local $iResponse = MsgBox($MB_YESNO + $MB_ICONQUESTION + $MB_TOPMOST, "Power Menu", "Are you sure you want to " & $sActionName & "?")
        If $iResponse <> $IDYES Then Return
    EndIf
    Run($sCommand, "", @SW_HIDE)
EndFunc

Func RestartExplorer()
    If $g_bConfirmEnabled Then
        WinActivate($g_hGUI)
        Local $iResponse = MsgBox($MB_YESNO + $MB_ICONQUESTION + $MB_TOPMOST, "Power Menu", "Are you sure you want to restart Explorer?")
        If $iResponse <> $IDYES Then Return
    EndIf
    ProcessClose("explorer.exe")
    Sleep(1000)
    Run("explorer.exe")
EndFunc

Func ToggleConfirmation()
    $g_bConfirmEnabled = Not $g_bConfirmEnabled
    Local $sStatus = $g_bConfirmEnabled ? "enabled" : "disabled"
    ToolTip("Confirmation prompts " & $sStatus, 0, 0)
    Sleep(1500)
    ToolTip("")
EndFunc

Func ShowSafeModeDialog()
    Local $hSafeModeGUI = GUICreate("Safe Mode Options", 300, 200, -1, -1, $WS_CAPTION + $WS_SYSMENU, $WS_EX_TOPMOST, $g_hGUI)
    GUISetBkColor(0xF3F3F3, $hSafeModeGUI)
    GUICtrlCreateLabel("Select Safe Mode Option:", 20, 20, 260, 20)
    GUICtrlSetFont(-1, 10, 600, 0, "Segoe UI Variable")
    GUICtrlSetColor(-1, 0x323130)
    Local $btnMinimal = GUICtrlCreateButton("Minimal Safe Mode", 20, 50, 260, 35)
    Local $btnNetwork = GUICtrlCreateButton("Safe Mode with Networking", 20, 90, 260, 35)
    Local $btnCommand = GUICtrlCreateButton("Safe Mode with Command Prompt", 20, 130, 260, 35)
    Local $btnCancel = GUICtrlCreateButton("Cancel", 20, 170, 260, 25)
    For $i = $btnMinimal To $btnCancel
        GUICtrlSetFont($i, 9, 400, 0, "Segoe UI Variable")
        GUICtrlSetBkColor($i, 0xFFFFFF)
        GUICtrlSetColor($i, 0x323130)
        GUICtrlSetStyle($i, $BS_FLAT)
    Next
    Local $aParentPos = WinGetPos($g_hGUI)
    Local $iCenterX = $aParentPos[0] + ($aParentPos[2] / 2) - 150
    Local $iCenterY = $aParentPos[1] + ($aParentPos[3] / 2) - 100
    WinMove($hSafeModeGUI, "", $iCenterX, $iCenterY)
    GUISetState(@SW_SHOW, $hSafeModeGUI)
    WinActivate($hSafeModeGUI)
    While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
            Case $GUI_EVENT_CLOSE, $btnCancel
                GUIDelete($hSafeModeGUI)
                Return
            Case $btnMinimal
                GUIDelete($hSafeModeGUI)
                SetSafeModeAndReboot("minimal")
                Return
            Case $btnNetwork
                GUIDelete($hSafeModeGUI)
                SetSafeModeAndReboot("network")
                Return
            Case $btnCommand
                GUIDelete($hSafeModeGUI)
                SetSafeModeAndReboot("alternate shell")
                Return
        EndSwitch
    WEnd
EndFunc

Func SetSafeModeAndReboot($sSafeModeType)
    If $g_bConfirmEnabled Then
        WinActivate($g_hGUI)
        Local $iResponse = MsgBox($MB_YESNO + $MB_ICONQUESTION + $MB_TOPMOST, "Power Menu", "This will reboot to Safe Mode. Continue?")
        If $iResponse <> $IDYES Then Return
    EndIf
    Local $iPID = Run(@ComSpec & " /c bcdedit /set {current} safeboot " & $sSafeModeType, "", @SW_HIDE)
    ProcessWaitClose($iPID)
    CreateCleanupMarker()
    Run("shutdown /r /t 1", "", @SW_HIDE)
EndFunc

Func CreateCleanupMarker()
    RegWrite("HKEY_CURRENT_USER\Software\PowerMenu", "SafeModeCleanup", "REG_SZ", "1")
EndFunc

Func CheckSafeModeCleanup()
    Local $sCleanupFlag = RegRead("HKEY_CURRENT_USER\Software\PowerMenu", "SafeModeCleanup")
    If @error Or $sCleanupFlag <> "1" Then Return
    Sleep(2000)
    Local $iPID = Run(@ComSpec & " /c bcdedit /deletevalue {current} safeboot", "", @SW_HIDE)
    ProcessWaitClose($iPID)
    RegDelete("HKEY_CURRENT_USER\Software\PowerMenu", "SafeModeCleanup")
    MsgBox($MB_ICONINFORMATION, "Power Menu", "Safe Mode has been disabled. The system will boot normally on next restart.")
EndFunc