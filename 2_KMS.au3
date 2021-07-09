#include <GUIConstantsEx.au3>
Local $hGUI = GUICreate("KMS Aktivierung", 380, 50)
Local $idKMS = GUICtrlCreateButton("KMS starten - Im Anschluss Option 2 wählen", 70, 10, 240, 25)
GUISetState(@SW_SHOW, $hGUI)
Local $iPID = 0
While 1
    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $idKMS
            $iPID = Run("KMS.cmd", "",@SW_MINIMIZE )
    EndSwitch
WEnd
GUIDelete($hGUI)
If $iPID Then ProcessClose($iPID)
