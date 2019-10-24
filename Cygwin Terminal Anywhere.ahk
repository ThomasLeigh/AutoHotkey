;; Open terminal in current Explorer window folder
#If WinActive("ahk_class CabinetWClass") ; explorer

	F4::
	WinGetTitle, ActiveTitle, A
	If InStr(ActiveTitle, "\")  ; If the full path is displayed in the title bar (Folder Options)
		Fullpath := ActiveTitle
	else
	If InStr(ActiveTitle, ":") ; If the title displayed is something like "DriveName (C:)"
	{
		Fullpath := SubStr(ActiveTitle, -2)
		Fullpath := SubStr(Fullpath, 1, -1)
	}
	else    ; If the full path is NOT displayed in the title bar 
	; https://autohotkey.com/boards/viewtopic.php?p=28751#p28751
	for window in ComObjCreate("Shell.Application").Windows
	{
		try Fullpath := window.Document.Folder.Self.Path
		SplitPath, Fullpath, title
		If (title = ActiveTitle)
			break
	}
	Run, mintty.exe, %Fullpath%
	return 

#If